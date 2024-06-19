from typing import Literal, final
from engine.game.state import State
from engine.records.base_record import BaseRecord

@final
class RecordShuffledCards(BaseRecord):
    record_type: Literal["record_shuffled_cards"] = "record_shuffled_cards"

    def get_public_record(self):
        return self

    def commit(self, state: State) -> None:
        raise NotImplementedError