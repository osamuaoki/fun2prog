p 'echo "$(echo '2^62' | bc)    $((4611686018427387904))"'
p 'echo "$(echo '2^63-1' | bc)  $((9223372036854775807))"'
p 'echo "$(echo '2^63' | bc)    $((9223372036854775808))"'
p 'echo "$(echo '2^64-1' | bc) $((18446744073709551615))"'
p 'echo "$(echo '2^64' | bc)   $((18446744073709551616))"'
p 'echo "$((2**62))"'

