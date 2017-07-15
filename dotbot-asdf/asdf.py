import os
import sys
import subprocess

try:
    from StringIO import StringIO
except ImportError:
    from io import StringIO

import dotbot


class Brew(dotbot.Plugin):
    _supported_directives = [
        'asdf',
    ]

    _install_command = 'asdf plugin-add'

    # API methods

    def can_handle(self, directive):
        return directive in self._supported_directives

    def handle(self, _directive, data):
        try:
            # self._validate_data(data)
            self._handle_install(data)
            return True
        except Exception as e:
            self._log.error(e)
            return False

    # Utility

    @property
    def cwd(self):
        return self._context.base_directory()

    # Inner logic

    def _build_command(self, plugin, url):
        return '{} {} {}'.format(self._install_command, plugin, url)

    def _handle_install(self, data):
        with open(os.devnull, 'w') as devnull:
            for plugin in data:
                p = subprocess.Popen(
                    self._build_command(plugin['plugin'], plugin['url']),
                    stdin=subprocess.PIPE,
                    stdout=subprocess.PIPE,
                    shell=True,
                    cwd=self.cwd
                )
                p.wait()
                _, output_err = p.communicate()

                if output_err != None:
                    message = 'Failed to install: ' + plugin['plugin']
                    raise ValueError(message + ' ')

