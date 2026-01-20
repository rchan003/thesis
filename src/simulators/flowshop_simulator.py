import os
from typing import List, Dict, Any
import random


class FlowShopSimulator:
    """
    TODO: Docstring for FlowShopSimulator
    """

    def __init__(self, config: Dict[str, Any]):
        """
        TODO: Docstring for __init__

        :param self: Description
        :param config: Description
        :type config: Dict[str, Any]
        """
        self.num_jobs = config.get("num_jobs")
        self.num_machines = config.get("num_machines")
        self.processing_times = self.generate_processing_times()
        self.schedule = []

    def generate_processing_times(self) -> List[List[int]]:
        pass
