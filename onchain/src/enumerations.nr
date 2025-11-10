trait EnumLike {
    fn is_valid(self) -> bool;
    fn default() -> Self;
}

pub struct GamePhase {
    LOBBY: bool,
    PRE_FLOP: bool,
    FLOP: bool,
    TURN: bool,
    RIVER: bool,
    SHOWDOWN: bool,
    FINISHED: bool,
}

impl EnumLike for GamePhase {
    fn is_valid(self) -> bool {
        let count = (self.LOBBY as u8)
            + (self.PRE_FLOP as u8)
            + (self.FLOP as u8)
            + (self.TURN as u8)
            + (self.RIVER as u8)
            + (self.SHOWDOWN as u8)
            + (self.FINISHED as u8);
        count == 1
    }

    fn default() -> Self {
        GamePhase::LOBBY()
    }
}

impl GamePhase {
    fn LOBBY() -> Self {
        GamePhase {
            LOBBY: true,
            PRE_FLOP: false,
            FLOP: false,
            TURN: false,
            RIVER: false,
            SHOWDOWN: false,
            FINISHED: false,
        }
    }

    fn PRE_FLOP() -> Self {
        GamePhase {
            LOBBY: false,
            PRE_FLOP: true,
            FLOP: false,
            TURN: false,
            RIVER: false,
            SHOWDOWN: false,
            FINISHED: false,
        }
    }

    fn FLOP() -> Self {
        GamePhase {
            LOBBY: false,
            PRE_FLOP: false,
            FLOP: true,
            TURN: false,
            RIVER: false,
            SHOWDOWN: false,
            FINISHED: false,
        }
    }

    fn TURN() -> Self {
        GamePhase {
            LOBBY: false,
            PRE_FLOP: false,
            FLOP: false,
            TURN: true,
            RIVER: false,
            SHOWDOWN: false,
            FINISHED: false,
        }
    }

    fn RIVER() -> Self {
        GamePhase {
            LOBBY: false,
            PRE_FLOP: false,
            FLOP: false,
            TURN: false,
            RIVER: true,
            SHOWDOWN: false,
            FINISHED: false,
        }
    }

    fn SHOWDOWN() -> Self {
        GamePhase {
            LOBBY: false,
            PRE_FLOP: false,
            FLOP: false,
            TURN: false,
            RIVER: false,
            SHOWDOWN: true,
            FINISHED: false,
        }
    }

    fn FINISHED() -> Self {
        GamePhase {
            LOBBY: false,
            PRE_FLOP: false,
            FLOP: false,
            TURN: false,
            RIVER: false,
            SHOWDOWN: false,
            FINISHED: true,
        }
    }
}

pub struct PlayerAction {
    NONE: bool,
    CHECK: bool,
    BET: bool,
    CALL: bool,
    RAISE: bool,
    FOLD: bool,
    ALL_IN: bool,
}

impl EnumLike for PlayerAction {
    fn is_valid(self) -> bool {
        let count = (self.NONE as u8)
            + (self.CHECK as u8)
            + (self.BET as u8)
            + (self.CALL as u8)
            + (self.RAISE as u8)
            + (self.FOLD as u8)
            + (self.ALL_IN as u8);
        count == 1
    }

    fn default() -> Self {
        PlayerAction::NONE()
    }
}

impl PlayerAction {
    fn NONE() -> Self {
        PlayerAction {
            NONE: true,
            CHECK: false,
            BET: false,
            CALL: false,
            RAISE: false,
            FOLD: false,
            ALL_IN: false,
        }
    }

    fn CHECK() -> Self {
        PlayerAction {
            NONE: false,
            CHECK: true,
            BET: false,
            CALL: false,
            RAISE: false,
            FOLD: false,
            ALL_IN: false,
        }
    }

    fn BET() -> Self {
        PlayerAction {
            NONE: false,
            CHECK: false,
            BET: true,
            CALL: false,
            RAISE: false,
            FOLD: false,
            ALL_IN: false,
        }
    }

    fn CALL() -> Self {
        PlayerAction {
            NONE: false,
            CHECK: false,
            BET: false,
            CALL: true,
            RAISE: false,
            FOLD: false,
            ALL_IN: false,
        }
    }

    fn RAISE() -> Self {
        PlayerAction {
            NONE: false,
            CHECK: false,
            BET: false,
            CALL: false,
            RAISE: true,
            FOLD: false,
            ALL_IN: false,
        }
    }

    fn FOLD() -> Self {
        PlayerAction {
            NONE: false,
            CHECK: false,
            BET: false,
            CALL: false,
            RAISE: false,
            FOLD: true,
            ALL_IN: false,
        }
    }

    fn ALL_IN() -> Self {
        PlayerAction {
            NONE: false,
            CHECK: false,
            BET: false,
            CALL: false,
            RAISE: false,
            FOLD: false,
            ALL_IN: true,
        }
    }
}

pub struct PlayerPosition {
    DEALER: bool,
    SMALL_BLIND: bool,
    BIG_BLIND: bool,
    UTG: bool,
    MIDDLE: bool,
    CUTOFF: bool,
}

impl EnumLike for PlayerPosition {
    fn is_valid(self) -> bool {
        let count = (self.DEALER as u8)
            + (self.SMALL_BLIND as u8)
            + (self.BIG_BLIND as u8)
            + (self.UTG as u8)
            + (self.MIDDLE as u8)
            + (self.CUTOFF as u8);
        count == 1
    }

    fn default() -> Self {
        PlayerPosition::DEALER()
    }
}

impl PlayerPosition {
    fn DEALER() -> Self {
        PlayerPosition {
            DEALER: true,
            SMALL_BLIND: false,
            BIG_BLIND: false,
            UTG: false,
            MIDDLE: false,
            CUTOFF: false,
        }
    }

    fn SMALL_BLIND() -> Self {
        PlayerPosition {
            DEALER: false,
            SMALL_BLIND: true,
            BIG_BLIND: false,
            UTG: false,
            MIDDLE: false,
            CUTOFF: false,
        }
    }

    fn BIG_BLIND() -> Self {
        PlayerPosition {
            DEALER: false,
            SMALL_BLIND: false,
            BIG_BLIND: true,
            UTG: false,
            MIDDLE: false,
            CUTOFF: false,
        }
    }

    fn UTG() -> Self {
        PlayerPosition {
            DEALER: false,
            SMALL_BLIND: false,
            BIG_BLIND: false,
            UTG: true,
            MIDDLE: false,
            CUTOFF: false,
        }
    }

    fn MIDDLE() -> Self {
        PlayerPosition {
            DEALER: false,
            SMALL_BLIND: false,
            BIG_BLIND: false,
            UTG: false,
            MIDDLE: true,
            CUTOFF: false,
        }
    }

    fn CUTOFF() -> Self {
        PlayerPosition {
            DEALER: false,
            SMALL_BLIND: false,
            BIG_BLIND: false,
            UTG: false,
            MIDDLE: false,
            CUTOFF: true,
        }
    }
}
