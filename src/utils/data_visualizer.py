import os
from typing import List, Dict, Any
import matplotlib.pyplot as plt
import seaborn as sns


class DataVisualizer:
    """
    TODO: docstring for DataVisualizer
    """

    def __init__(self, data: List[Dict[str, Any]]):
        """
        TODO: docstring for __init__
        """
        self.data = data
