# Copyright © 2022 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

key-fingerprints = \
	CDB5A1243ACDB63009AD07212D4EB3A6015475F5 \
	7F5D0E9D3323F803D888C31EE1ABC877696EC74E
key-files = $(addsuffix .asc,$(key-fingerprints))

.PHONY: all
all: $(key-files)

%.asc:
	gpg --export-filter 'keep-uid=uid=~jwilk@jwilk.net' --export-options export-minimal -a --export $(@:.asc=) > $(@)

# vim:ts=4 sts=4 sw=4 noet
