use crate::enumerations::{GamePhase, PlayerAction, PlayerPosition};
use aztec::protocol_types::address::AztecAddress;

pub struct Player {
    address: AztecAddress,
    stack: u64, // Current chip count
    current_bet: u64, // Amount bet in current betting round
    total_bet: u64, // Total bet in current hand
    position: PlayerPosition, // Dealer, SB, BB, etc. (calculated dynamically)
    is_active: bool, // Still in the hand (not folded)
    is_all_in: bool,
    last_action: PlayerAction, // Last action taken
    seat_index: u8, // Position at table (0-5)
    has_acted_this_round: bool, // Tracking if player acted in current betting round
}

pub struct GameSession {
    session_id: Field,
    creator: AztecAddress,

    // TOKEN ECONOMICS
    small_blind: u64, // Small blind amount in tokens (e.g., 10 Chips)
    big_blind: u64, // Big blind amount in tokens (e.g., 20 Chips)
    min_buyin: u64, // Minimum buy-in in tokens (e.g., 1000 Chips)
    max_buyin: u64, // Maximum buy-in in tokens (e.g., 10000 Chips)

    // Game state
    current_phase: GamePhase,
    player_count: u8,
    players: [Player; 6],

    initial_pot: u64, // Small blind amount
    pot: u64, // Current pot in TOKENS (not chips!)
    current_bet: u64, // Current bet in TOKENS

    dealer_index: u8,
    current_player_index: u8,
    round_number: u64,
    is_active: bool,

    // Game termination
    max_rounds: u64,
    created_at: u64,
    ended_at: u64,

    // Commitment storage for private data
    deck_commitment: [Field; 6], // Commitment to shuffled deck

    // Revealed community cards (indices in deck)
    community_cards: [u8; 5],
    community_card_count: u8,

    // Tracking betting round completion
    last_raiser_index: u8,
    action_count: u8,
    betting_round_complete: bool,
}
