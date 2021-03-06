from setuptools import setup, find_packages
import io

import versioneer


def read(*filenames, **kwargs):
    encoding = kwargs.get('encoding', 'utf-8')
    sep = kwargs.get('sep', '\n')
    buf = []
    for filename in filenames:
        try:
            with io.open(filename, encoding=encoding) as f:
                buf.append(f.read())
        except IOError:
            pass
    return sep.join(buf)


setup(
    name='${package}',
    version=versioneer.get_version(),
    author='${authors_string}',
    author_email=${emails},
    license='${license}',
    packages=find_packages(),
    url='${url}',
    description='${description}',
    long_description=read('README.md', 'CHANGELOG'),
    cmdclass=versioneer.get_cmdclass(),
    )
