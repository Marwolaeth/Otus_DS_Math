install.packages('reticulate', type = 'source', INSTALL_opts = '--byte-compile')

library(reticulate)
py_config()
py_exe()
py_available()
py_numpy_available()
py_eval('print("Hello!")')

# pip install --compile numpy pandas matplotlib scipy sympy sklearn --no-binary :all: