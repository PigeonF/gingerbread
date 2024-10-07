# SPDX-FileCopyrightText: 2024 Jonas Fierlings <fnoegip@gmail.com>
#
# SPDX-License-Identifier: Apache-2.0 OR MIT
.POSIX:

ASEPRITE=libresprite
ASEPRITEFLAGS=

.SUFFIXES: .aseprite .png

.aseprite.png:
	$(ASEPRITE) $(ASEPRITEFLAGS) --batch $< --save-as $@

gingerbread:
	cargo build

docs/logo/gingerbread.png: docs/logo/gingerbread.aseprite
