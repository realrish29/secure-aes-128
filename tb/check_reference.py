# Quick check of NIST FIPS 197 Appendix B values
# Input: 3243f6a8885a308d313198a2e0370734
# Key:   2b7e151628aed2a6abf7158809cf4f3c

def xor_bytes(a, b):
    return bytes(x ^ y for x, y in zip(a, b))

def shift_rows(state):
    # state is 16 bytes: col 0 = 0..3, col 1 = 4..7, col 2 = 8..11, col 3 = 12..15
    # rows are:
    # r0: 0, 4, 8, 12
    # r1: 1, 5, 9, 13
    # r2: 2, 6, 10, 14
    # r3: 3, 7, 11, 15
    r0 = [state[0], state[4], state[8], state[12]]
    r1 = [state[5], state[9], state[13], state[1]]
    r2 = [state[10], state[14], state[2], state[6]]
    r3 = [state[15], state[3], state[7], state[11]]
    # re-pack column-major
    col0 = [r0[0], r1[0], r2[0], r3[0]]
    col1 = [r0[1], r1[1], r2[1], r3[1]]
    col2 = [r0[2], r1[2], r2[2], r3[2]]
    col3 = [r0[3], r1[3], r2[3], r3[3]]
    return bytes(col0 + col1 + col2 + col3)

p = bytes.fromhex("3243f6a8885a308d313198a2e0370734")
k = bytes.fromhex("2b7e151628aed2a6abf7158809cf4f3c")
ark = xor_bytes(p, k)
print("Plaintext:  ", p.hex())
print("Key:        ", k.hex())
print("AddRoundKey:", ark.hex())
print("Expected:    193de3bea0f4e22b9ac68d2ae9f84808")
assert ark.hex() == "193de3bea0f4e22b9ac68d2ae9f84808", "AddRoundKey mismatch!"
print("AddRoundKey matches NIST FIPS 197 perfectly!")
