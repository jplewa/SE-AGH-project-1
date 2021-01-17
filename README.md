# SE-AGH

This repository contains a Prolog project for the Expert Systems course at AGH University of Science and Technology (2020/2021).

The knowledge used by the system is based on the [Mushroom dataset](https://archive.ics.uci.edu/ml/datasets/mushroom) from the UCI Machine Learning Repository. It was simplified using a C4.5 decision tree.

![Predicate tree](predicate_tree.png)

## Installation guide

### Requirements

This code was tested using Python 3.6.9, but presumably it should also work with other 3.x versions.

### Setup

To run the project, first install the required dependencies:

```bash
pip3 install -r requirements.txt
```

### Usage
Once you install all the dependencies, you can start the program by running the following command:

```bash
python3 model.py
```

**Note**: If you experience issues with the way the app scales on a high-DPI display, as a workaround you can try to play with the following environment variables:

```bash
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_SCALE_FACTOR=0.5
```

## Bibliography

Dua, D. and Graff, C. (2019). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science.
