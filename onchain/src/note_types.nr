use dep::aztec::{
    macros::notes::note,
    protocol_types::{address::AztecAddress, traits::Packable},
};

#[derive(Eq, Packable)]
#[note]
pub struct HoleCards {
    card_01: u8,
    card_02: u8,
    session_id: Field,
    round: u8,
    owner: AztecAddress,
    randomness: Field,
}
