# iC10TrainingData R package with support for extra assembly

This package is a fork of CRAN R package ‘iC10TrainingData’ with minor modification for supporting extra genome assembly (e.g. hg38). 

Hope someday the official package will adopt all necessary genome assemblies.

Install this hg38-supported package from GitHub:

```
remotes::install_github("marromesc/iC10TrainingData")
```

Function to create a new assembly automatically can be run using the following code:

```
makeAssembly(ref = 'hg38')
```

It will create a new assembly, please note assembly will need to be added to iC10TrainingData source directory and package will need to be rebuilt and install to be able to use in `iC10` R pacakge.
