package com.explorestack.protobuf;

import com.ss.ttm.player.MediaPlayer;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class Utf8 {

    /* renamed from: a  reason: collision with root package name */
    private static final b f14206a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i10, int i11) {
            super("Unpaired surrogate at index " + i10 + " of " + i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static void h(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (!m(b11) && (((b10 << 28) + (b11 + 112)) >> 30) == 0 && !m(b12) && !m(b13)) {
                int r10 = ((b10 & 7) << 18) | (r(b11) << 12) | (r(b12) << 6) | r(b13);
                cArr[i10] = l(r10);
                cArr[i10 + 1] = q(r10);
                return;
            }
            throw InvalidProtocolBufferException.invalidUtf8();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void i(byte b10, char[] cArr, int i10) {
            cArr[i10] = (char) b10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void j(byte b10, byte b11, byte b12, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (!m(b11) && ((b10 != -32 || b11 >= -96) && ((b10 != -19 || b11 < -96) && !m(b12)))) {
                cArr[i10] = (char) (((b10 & 15) << 12) | (r(b11) << 6) | r(b12));
                return;
            }
            throw InvalidProtocolBufferException.invalidUtf8();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void k(byte b10, byte b11, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (b10 >= -62 && !m(b11)) {
                cArr[i10] = (char) (((b10 & 31) << 6) | r(b11));
                return;
            }
            throw InvalidProtocolBufferException.invalidUtf8();
        }

        private static char l(int i10) {
            return (char) ((i10 >>> 10) + 55232);
        }

        private static boolean m(byte b10) {
            if (b10 > -65) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean n(byte b10) {
            if (b10 >= 0) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean o(byte b10) {
            if (b10 < -16) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean p(byte b10) {
            if (b10 < -32) {
                return true;
            }
            return false;
        }

        private static char q(int i10) {
            return (char) ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD) + 56320);
        }

        private static int r(byte b10) {
            return b10 & 63;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static abstract class b {
        b() {
        }

        private static int j(ByteBuffer byteBuffer, int i10, int i11) {
            int l10 = i10 + Utf8.l(byteBuffer, i10, i11);
            while (l10 < i11) {
                int i12 = l10 + 1;
                byte b10 = byteBuffer.get(l10);
                if (b10 < 0) {
                    if (b10 < -32) {
                        if (i12 >= i11) {
                            return b10;
                        }
                        if (b10 < -62 || byteBuffer.get(i12) > -65) {
                            return -1;
                        }
                        l10 += 2;
                    } else if (b10 < -16) {
                        if (i12 >= i11 - 1) {
                            return Utf8.p(byteBuffer, b10, i12, i11 - i12);
                        }
                        int i13 = l10 + 2;
                        byte b11 = byteBuffer.get(i12);
                        if (b11 > -65 || ((b10 == -32 && b11 < -96) || ((b10 == -19 && b11 >= -96) || byteBuffer.get(i13) > -65))) {
                            return -1;
                        }
                        l10 += 3;
                    } else if (i12 >= i11 - 2) {
                        return Utf8.p(byteBuffer, b10, i12, i11 - i12);
                    } else {
                        int i14 = l10 + 2;
                        byte b12 = byteBuffer.get(i12);
                        if (b12 <= -65 && (((b10 << 28) + (b12 + 112)) >> 30) == 0) {
                            int i15 = l10 + 3;
                            if (byteBuffer.get(i14) <= -65) {
                                l10 += 4;
                                if (byteBuffer.get(i15) > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                } else {
                    l10 = i12;
                }
            }
            return 0;
        }

        final String a(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if (byteBuffer.hasArray()) {
                return b(byteBuffer.array(), byteBuffer.arrayOffset() + i10, i11);
            } else if (byteBuffer.isDirect()) {
                return d(byteBuffer, i10, i11);
            } else {
                return c(byteBuffer, i10, i11);
            }
        }

        abstract String b(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException;

        final String c(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) >= 0) {
                int i12 = i10 + i11;
                char[] cArr = new char[i11];
                int i13 = 0;
                while (i10 < i12) {
                    byte b10 = byteBuffer.get(i10);
                    if (!a.n(b10)) {
                        break;
                    }
                    i10++;
                    a.i(b10, cArr, i13);
                    i13++;
                }
                int i14 = i13;
                while (i10 < i12) {
                    int i15 = i10 + 1;
                    byte b11 = byteBuffer.get(i10);
                    if (a.n(b11)) {
                        int i16 = i14 + 1;
                        a.i(b11, cArr, i14);
                        while (i15 < i12) {
                            byte b12 = byteBuffer.get(i15);
                            if (!a.n(b12)) {
                                break;
                            }
                            i15++;
                            a.i(b12, cArr, i16);
                            i16++;
                        }
                        i14 = i16;
                        i10 = i15;
                    } else if (a.p(b11)) {
                        if (i15 < i12) {
                            i10 += 2;
                            a.k(b11, byteBuffer.get(i15), cArr, i14);
                            i14++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (a.o(b11)) {
                        if (i15 < i12 - 1) {
                            int i17 = i10 + 2;
                            i10 += 3;
                            a.j(b11, byteBuffer.get(i15), byteBuffer.get(i17), cArr, i14);
                            i14++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i15 < i12 - 2) {
                        byte b13 = byteBuffer.get(i15);
                        int i18 = i10 + 3;
                        i10 += 4;
                        a.h(b11, b13, byteBuffer.get(i10 + 2), byteBuffer.get(i18), cArr, i14);
                        i14 += 2;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i14);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
        }

        abstract String d(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException;

        abstract int e(CharSequence charSequence, byte[] bArr, int i10, int i11);

        final boolean f(ByteBuffer byteBuffer, int i10, int i11) {
            if (h(0, byteBuffer, i10, i11) != 0) {
                return false;
            }
            return true;
        }

        final boolean g(byte[] bArr, int i10, int i11) {
            if (i(0, bArr, i10, i11) != 0) {
                return false;
            }
            return true;
        }

        final int h(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            if (byteBuffer.hasArray()) {
                int arrayOffset = byteBuffer.arrayOffset();
                return i(i10, byteBuffer.array(), i11 + arrayOffset, arrayOffset + i12);
            } else if (byteBuffer.isDirect()) {
                return l(i10, byteBuffer, i11, i12);
            } else {
                return k(i10, byteBuffer, i11, i12);
            }
        }

        abstract int i(int i10, byte[] bArr, int i11, int i12);

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
            if (r8.get(r9) > (-65)) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x004c, code lost:
            if (r8.get(r9) > (-65)) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008f, code lost:
            if (r8.get(r7) > (-65)) goto L51;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final int k(int r7, java.nio.ByteBuffer r8, int r9, int r10) {
            /*
                r6 = this;
                if (r7 == 0) goto L92
                if (r9 < r10) goto L5
                return r7
            L5:
                byte r0 = (byte) r7
                r1 = -32
                r2 = -1
                r3 = -65
                if (r0 >= r1) goto L1e
                r7 = -62
                if (r0 < r7) goto L1d
                int r7 = r9 + 1
                byte r9 = r8.get(r9)
                if (r9 <= r3) goto L1a
                goto L1d
            L1a:
                r9 = r7
                goto L92
            L1d:
                return r2
            L1e:
                r4 = -16
                if (r0 >= r4) goto L4f
                int r7 = r7 >> 8
                int r7 = ~r7
                byte r7 = (byte) r7
                if (r7 != 0) goto L38
                int r7 = r9 + 1
                byte r9 = r8.get(r9)
                if (r7 < r10) goto L35
                int r7 = com.explorestack.protobuf.Utf8.a(r0, r9)
                return r7
            L35:
                r5 = r9
                r9 = r7
                r7 = r5
            L38:
                if (r7 > r3) goto L4e
                r4 = -96
                if (r0 != r1) goto L40
                if (r7 < r4) goto L4e
            L40:
                r1 = -19
                if (r0 != r1) goto L46
                if (r7 >= r4) goto L4e
            L46:
                int r7 = r9 + 1
                byte r9 = r8.get(r9)
                if (r9 <= r3) goto L1a
            L4e:
                return r2
            L4f:
                int r1 = r7 >> 8
                int r1 = ~r1
                byte r1 = (byte) r1
                if (r1 != 0) goto L64
                int r7 = r9 + 1
                byte r1 = r8.get(r9)
                if (r7 < r10) goto L62
                int r7 = com.explorestack.protobuf.Utf8.a(r0, r1)
                return r7
            L62:
                r9 = 0
                goto L6a
            L64:
                int r7 = r7 >> 16
                byte r7 = (byte) r7
                r5 = r9
                r9 = r7
                r7 = r5
            L6a:
                if (r9 != 0) goto L7c
                int r9 = r7 + 1
                byte r7 = r8.get(r7)
                if (r9 < r10) goto L79
                int r7 = com.explorestack.protobuf.Utf8.b(r0, r1, r7)
                return r7
            L79:
                r5 = r9
                r9 = r7
                r7 = r5
            L7c:
                if (r1 > r3) goto L91
                int r0 = r0 << 28
                int r1 = r1 + 112
                int r0 = r0 + r1
                int r0 = r0 >> 30
                if (r0 != 0) goto L91
                if (r9 > r3) goto L91
                int r9 = r7 + 1
                byte r7 = r8.get(r7)
                if (r7 <= r3) goto L92
            L91:
                return r2
            L92:
                int r7 = j(r8, r9, r10)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.b.k(int, java.nio.ByteBuffer, int, int):int");
        }

        abstract int l(int i10, ByteBuffer byteBuffer, int i11, int i12);
    }

    /* loaded from: classes3.dex */
    static final class c extends b {
        c() {
        }

        private static int m(byte[] bArr, int i10, int i11) {
            while (i10 < i11 && bArr[i10] >= 0) {
                i10++;
            }
            if (i10 >= i11) {
                return 0;
            }
            return n(bArr, i10, i11);
        }

        private static int n(byte[] bArr, int i10, int i11) {
            while (i10 < i11) {
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 < 0) {
                    if (b10 < -32) {
                        if (i12 >= i11) {
                            return b10;
                        }
                        if (b10 >= -62) {
                            i10 += 2;
                            if (bArr[i12] > -65) {
                            }
                        }
                        return -1;
                    } else if (b10 < -16) {
                        if (i12 >= i11 - 1) {
                            return Utf8.q(bArr, i12, i11);
                        }
                        int i13 = i10 + 2;
                        byte b11 = bArr[i12];
                        if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                            i10 += 3;
                            if (bArr[i13] > -65) {
                            }
                        }
                        return -1;
                    } else if (i12 >= i11 - 2) {
                        return Utf8.q(bArr, i12, i11);
                    } else {
                        int i14 = i10 + 2;
                        byte b12 = bArr[i12];
                        if (b12 <= -65 && (((b10 << 28) + (b12 + 112)) >> 30) == 0) {
                            int i15 = i10 + 3;
                            if (bArr[i14] <= -65) {
                                i10 += 4;
                                if (bArr[i15] > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                }
                i10 = i12;
            }
            return 0;
        }

        @Override // com.explorestack.protobuf.Utf8.b
        String b(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((bArr.length - i10) - i11)) >= 0) {
                int i12 = i10 + i11;
                char[] cArr = new char[i11];
                int i13 = 0;
                while (i10 < i12) {
                    byte b10 = bArr[i10];
                    if (!a.n(b10)) {
                        break;
                    }
                    i10++;
                    a.i(b10, cArr, i13);
                    i13++;
                }
                int i14 = i13;
                while (i10 < i12) {
                    int i15 = i10 + 1;
                    byte b11 = bArr[i10];
                    if (a.n(b11)) {
                        int i16 = i14 + 1;
                        a.i(b11, cArr, i14);
                        while (i15 < i12) {
                            byte b12 = bArr[i15];
                            if (!a.n(b12)) {
                                break;
                            }
                            i15++;
                            a.i(b12, cArr, i16);
                            i16++;
                        }
                        i14 = i16;
                        i10 = i15;
                    } else if (a.p(b11)) {
                        if (i15 < i12) {
                            i10 += 2;
                            a.k(b11, bArr[i15], cArr, i14);
                            i14++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (a.o(b11)) {
                        if (i15 < i12 - 1) {
                            int i17 = i10 + 2;
                            i10 += 3;
                            a.j(b11, bArr[i15], bArr[i17], cArr, i14);
                            i14++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i15 < i12 - 2) {
                        byte b13 = bArr[i15];
                        int i18 = i10 + 3;
                        i10 += 4;
                        a.h(b11, b13, bArr[i10 + 2], bArr[i18], cArr, i14);
                        i14 += 2;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i14);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
        }

        @Override // com.explorestack.protobuf.Utf8.b
        String d(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            return c(byteBuffer, i10, i11);
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
            return r10 + r0;
         */
        @Override // com.explorestack.protobuf.Utf8.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int e(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 254
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.c.e(java.lang.CharSequence, byte[], int, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
            if (r8[r9] > (-65)) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0046, code lost:
            if (r8[r9] > (-65)) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0083, code lost:
            if (r8[r7] > (-65)) goto L51;
         */
        @Override // com.explorestack.protobuf.Utf8.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int i(int r7, byte[] r8, int r9, int r10) {
            /*
                r6 = this;
                if (r7 == 0) goto L86
                if (r9 < r10) goto L5
                return r7
            L5:
                byte r0 = (byte) r7
                r1 = -32
                r2 = -1
                r3 = -65
                if (r0 >= r1) goto L1c
                r7 = -62
                if (r0 < r7) goto L1b
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r9 <= r3) goto L18
                goto L1b
            L18:
                r9 = r7
                goto L86
            L1b:
                return r2
            L1c:
                r4 = -16
                if (r0 >= r4) goto L49
                int r7 = r7 >> 8
                int r7 = ~r7
                byte r7 = (byte) r7
                if (r7 != 0) goto L34
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r7 < r10) goto L31
                int r7 = com.explorestack.protobuf.Utf8.a(r0, r9)
                return r7
            L31:
                r5 = r9
                r9 = r7
                r7 = r5
            L34:
                if (r7 > r3) goto L48
                r4 = -96
                if (r0 != r1) goto L3c
                if (r7 < r4) goto L48
            L3c:
                r1 = -19
                if (r0 != r1) goto L42
                if (r7 >= r4) goto L48
            L42:
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r9 <= r3) goto L18
            L48:
                return r2
            L49:
                int r1 = r7 >> 8
                int r1 = ~r1
                byte r1 = (byte) r1
                if (r1 != 0) goto L5c
                int r7 = r9 + 1
                r1 = r8[r9]
                if (r7 < r10) goto L5a
                int r7 = com.explorestack.protobuf.Utf8.a(r0, r1)
                return r7
            L5a:
                r9 = 0
                goto L62
            L5c:
                int r7 = r7 >> 16
                byte r7 = (byte) r7
                r5 = r9
                r9 = r7
                r7 = r5
            L62:
                if (r9 != 0) goto L72
                int r9 = r7 + 1
                r7 = r8[r7]
                if (r9 < r10) goto L6f
                int r7 = com.explorestack.protobuf.Utf8.b(r0, r1, r7)
                return r7
            L6f:
                r5 = r9
                r9 = r7
                r7 = r5
            L72:
                if (r1 > r3) goto L85
                int r0 = r0 << 28
                int r1 = r1 + 112
                int r0 = r0 + r1
                int r0 = r0 >> 30
                if (r0 != 0) goto L85
                if (r9 > r3) goto L85
                int r9 = r7 + 1
                r7 = r8[r7]
                if (r7 <= r3) goto L86
            L85:
                return r2
            L86:
                int r7 = m(r8, r9, r10)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.c.i(int, byte[], int, int):int");
        }

        @Override // com.explorestack.protobuf.Utf8.b
        int l(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            return k(i10, byteBuffer, i11, i12);
        }
    }

    /* loaded from: classes3.dex */
    static final class d extends b {
        d() {
        }

        static boolean m() {
            if (o2.J() && o2.K()) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0039, code lost:
            return -1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int n(long r10, int r12) {
            /*
                int r0 = p(r10, r12)
                long r1 = (long) r0
                long r10 = r10 + r1
                int r12 = r12 - r0
            L7:
                r0 = 0
                r1 = r0
            L9:
                r2 = 1
                if (r12 <= 0) goto L1a
                long r4 = r10 + r2
                byte r1 = com.explorestack.protobuf.o2.w(r10)
                if (r1 < 0) goto L19
                int r12 = r12 + (-1)
                r10 = r4
                goto L9
            L19:
                r10 = r4
            L1a:
                if (r12 != 0) goto L1d
                return r0
            L1d:
                int r0 = r12 + (-1)
                r4 = -32
                r5 = -1
                r6 = -65
                if (r1 >= r4) goto L3a
                if (r0 != 0) goto L29
                return r1
            L29:
                int r12 = r12 + (-2)
                r0 = -62
                if (r1 < r0) goto L39
                long r2 = r2 + r10
                byte r10 = com.explorestack.protobuf.o2.w(r10)
                if (r10 <= r6) goto L37
                goto L39
            L37:
                r10 = r2
                goto L7
            L39:
                return r5
            L3a:
                r7 = -16
                r8 = 2
                if (r1 >= r7) goto L65
                r7 = 2
                if (r0 >= r7) goto L48
                int r10 = r(r10, r1, r0)
                return r10
            L48:
                int r12 = r12 + (-3)
                long r2 = r2 + r10
                byte r0 = com.explorestack.protobuf.o2.w(r10)
                if (r0 > r6) goto L64
                r7 = -96
                if (r1 != r4) goto L57
                if (r0 < r7) goto L64
            L57:
                r4 = -19
                if (r1 != r4) goto L5d
                if (r0 >= r7) goto L64
            L5d:
                long r10 = r10 + r8
                byte r0 = com.explorestack.protobuf.o2.w(r2)
                if (r0 <= r6) goto L7
            L64:
                return r5
            L65:
                r4 = 3
                if (r0 >= r4) goto L6d
                int r10 = r(r10, r1, r0)
                return r10
            L6d:
                int r12 = r12 + (-4)
                long r2 = r2 + r10
                byte r0 = com.explorestack.protobuf.o2.w(r10)
                if (r0 > r6) goto L8f
                int r1 = r1 << 28
                int r0 = r0 + 112
                int r1 = r1 + r0
                int r0 = r1 >> 30
                if (r0 != 0) goto L8f
                long r8 = r8 + r10
                byte r0 = com.explorestack.protobuf.o2.w(r2)
                if (r0 > r6) goto L8f
                r0 = 3
                long r10 = r10 + r0
                byte r0 = com.explorestack.protobuf.o2.w(r8)
                if (r0 <= r6) goto L7
            L8f:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.d.n(long, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0039, code lost:
            return -1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int o(byte[] r10, long r11, int r13) {
            /*
                int r0 = q(r10, r11, r13)
                int r13 = r13 - r0
                long r0 = (long) r0
                long r11 = r11 + r0
            L7:
                r0 = 0
                r1 = r0
            L9:
                r2 = 1
                if (r13 <= 0) goto L1a
                long r4 = r11 + r2
                byte r1 = com.explorestack.protobuf.o2.x(r10, r11)
                if (r1 < 0) goto L19
                int r13 = r13 + (-1)
                r11 = r4
                goto L9
            L19:
                r11 = r4
            L1a:
                if (r13 != 0) goto L1d
                return r0
            L1d:
                int r0 = r13 + (-1)
                r4 = -32
                r5 = -1
                r6 = -65
                if (r1 >= r4) goto L3a
                if (r0 != 0) goto L29
                return r1
            L29:
                int r13 = r13 + (-2)
                r0 = -62
                if (r1 < r0) goto L39
                long r2 = r2 + r11
                byte r11 = com.explorestack.protobuf.o2.x(r10, r11)
                if (r11 <= r6) goto L37
                goto L39
            L37:
                r11 = r2
                goto L7
            L39:
                return r5
            L3a:
                r7 = -16
                r8 = 2
                if (r1 >= r7) goto L65
                r7 = 2
                if (r0 >= r7) goto L48
                int r10 = s(r10, r1, r11, r0)
                return r10
            L48:
                int r13 = r13 + (-3)
                long r2 = r2 + r11
                byte r0 = com.explorestack.protobuf.o2.x(r10, r11)
                if (r0 > r6) goto L64
                r7 = -96
                if (r1 != r4) goto L57
                if (r0 < r7) goto L64
            L57:
                r4 = -19
                if (r1 != r4) goto L5d
                if (r0 >= r7) goto L64
            L5d:
                long r11 = r11 + r8
                byte r0 = com.explorestack.protobuf.o2.x(r10, r2)
                if (r0 <= r6) goto L7
            L64:
                return r5
            L65:
                r4 = 3
                if (r0 >= r4) goto L6d
                int r10 = s(r10, r1, r11, r0)
                return r10
            L6d:
                int r13 = r13 + (-4)
                long r2 = r2 + r11
                byte r0 = com.explorestack.protobuf.o2.x(r10, r11)
                if (r0 > r6) goto L8f
                int r1 = r1 << 28
                int r0 = r0 + 112
                int r1 = r1 + r0
                int r0 = r1 >> 30
                if (r0 != 0) goto L8f
                long r8 = r8 + r11
                byte r0 = com.explorestack.protobuf.o2.x(r10, r2)
                if (r0 > r6) goto L8f
                r0 = 3
                long r11 = r11 + r0
                byte r0 = com.explorestack.protobuf.o2.x(r10, r8)
                if (r0 <= r6) goto L7
            L8f:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.d.o(byte[], long, int):int");
        }

        private static int p(long j10, int i10) {
            if (i10 < 16) {
                return 0;
            }
            int i11 = 8 - (((int) j10) & 7);
            int i12 = i11;
            while (i12 > 0) {
                long j11 = 1 + j10;
                if (o2.w(j10) < 0) {
                    return i11 - i12;
                }
                i12--;
                j10 = j11;
            }
            int i13 = i10 - i11;
            while (i13 >= 8 && (o2.D(j10) & (-9187201950435737472L)) == 0) {
                j10 += 8;
                i13 -= 8;
            }
            return i10 - i13;
        }

        private static int q(byte[] bArr, long j10, int i10) {
            int i11 = 0;
            if (i10 < 16) {
                return 0;
            }
            while (i11 < i10) {
                long j11 = 1 + j10;
                if (o2.x(bArr, j10) < 0) {
                    return i11;
                }
                i11++;
                j10 = j11;
            }
            return i10;
        }

        private static int r(long j10, int i10, int i11) {
            if (i11 == 0) {
                return Utf8.m(i10);
            }
            if (i11 == 1) {
                return Utf8.n(i10, o2.w(j10));
            }
            if (i11 == 2) {
                return Utf8.o(i10, o2.w(j10), o2.w(j10 + 1));
            }
            throw new AssertionError();
        }

        private static int s(byte[] bArr, int i10, long j10, int i11) {
            if (i11 == 0) {
                return Utf8.m(i10);
            }
            if (i11 == 1) {
                return Utf8.n(i10, o2.x(bArr, j10));
            }
            if (i11 == 2) {
                return Utf8.o(i10, o2.x(bArr, j10), o2.x(bArr, j10 + 1));
            }
            throw new AssertionError();
        }

        @Override // com.explorestack.protobuf.Utf8.b
        String b(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((bArr.length - i10) - i11)) >= 0) {
                int i12 = i10 + i11;
                char[] cArr = new char[i11];
                int i13 = 0;
                while (i10 < i12) {
                    byte x10 = o2.x(bArr, i10);
                    if (!a.n(x10)) {
                        break;
                    }
                    i10++;
                    a.i(x10, cArr, i13);
                    i13++;
                }
                int i14 = i13;
                while (i10 < i12) {
                    int i15 = i10 + 1;
                    byte x11 = o2.x(bArr, i10);
                    if (a.n(x11)) {
                        int i16 = i14 + 1;
                        a.i(x11, cArr, i14);
                        while (i15 < i12) {
                            byte x12 = o2.x(bArr, i15);
                            if (!a.n(x12)) {
                                break;
                            }
                            i15++;
                            a.i(x12, cArr, i16);
                            i16++;
                        }
                        i14 = i16;
                        i10 = i15;
                    } else if (a.p(x11)) {
                        if (i15 < i12) {
                            i10 += 2;
                            a.k(x11, o2.x(bArr, i15), cArr, i14);
                            i14++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (a.o(x11)) {
                        if (i15 < i12 - 1) {
                            int i17 = i10 + 2;
                            i10 += 3;
                            a.j(x11, o2.x(bArr, i15), o2.x(bArr, i17), cArr, i14);
                            i14++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i15 < i12 - 2) {
                        int i18 = i10 + 3;
                        i10 += 4;
                        a.h(x11, o2.x(bArr, i15), o2.x(bArr, i10 + 2), o2.x(bArr, i18), cArr, i14);
                        i14 += 2;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i14);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
        }

        @Override // com.explorestack.protobuf.Utf8.b
        String d(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) >= 0) {
                long k10 = o2.k(byteBuffer) + i10;
                long j10 = i11 + k10;
                char[] cArr = new char[i11];
                int i12 = 0;
                while (k10 < j10) {
                    byte w10 = o2.w(k10);
                    if (!a.n(w10)) {
                        break;
                    }
                    k10++;
                    a.i(w10, cArr, i12);
                    i12++;
                }
                int i13 = i12;
                while (k10 < j10) {
                    long j11 = k10 + 1;
                    byte w11 = o2.w(k10);
                    if (a.n(w11)) {
                        int i14 = i13 + 1;
                        a.i(w11, cArr, i13);
                        while (j11 < j10) {
                            byte w12 = o2.w(j11);
                            if (!a.n(w12)) {
                                break;
                            }
                            j11++;
                            a.i(w12, cArr, i14);
                            i14++;
                        }
                        i13 = i14;
                        k10 = j11;
                    } else if (a.p(w11)) {
                        if (j11 < j10) {
                            k10 += 2;
                            a.k(w11, o2.w(j11), cArr, i13);
                            i13++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (a.o(w11)) {
                        if (j11 < j10 - 1) {
                            long j12 = 2 + k10;
                            k10 += 3;
                            a.j(w11, o2.w(j11), o2.w(j12), cArr, i13);
                            i13++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (j11 < j10 - 2) {
                        long j13 = 3 + k10;
                        k10 += 4;
                        a.h(w11, o2.w(j11), o2.w(2 + k10), o2.w(j13), cArr, i13);
                        i13 += 2;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i13);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
        }

        @Override // com.explorestack.protobuf.Utf8.b
        int e(CharSequence charSequence, byte[] bArr, int i10, int i11) {
            long j10;
            String str;
            String str2;
            int i12;
            long j11;
            long j12;
            char charAt;
            long j13 = i10;
            long j14 = i11 + j13;
            int length = charSequence.length();
            String str3 = " at index ";
            String str4 = "Failed writing ";
            if (length > i11 || bArr.length - i11 < i10) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (i10 + i11));
            }
            int i13 = 0;
            while (true) {
                j10 = 1;
                if (i13 >= length || (charAt = charSequence.charAt(i13)) >= 128) {
                    break;
                }
                o2.Q(bArr, j13, (byte) charAt);
                i13++;
                j13 = 1 + j13;
            }
            if (i13 == length) {
                return (int) j13;
            }
            while (i13 < length) {
                char charAt2 = charSequence.charAt(i13);
                if (charAt2 >= 128 || j13 >= j14) {
                    if (charAt2 >= 2048 || j13 > j14 - 2) {
                        str = str3;
                        str2 = str4;
                        if ((charAt2 >= 55296 && 57343 >= charAt2) || j13 > j14 - 3) {
                            if (j13 <= j14 - 4) {
                                int i14 = i13 + 1;
                                if (i14 != length) {
                                    char charAt3 = charSequence.charAt(i14);
                                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                                        j11 = 1;
                                        o2.Q(bArr, j13, (byte) ((codePoint >>> 18) | 240));
                                        j12 = j14;
                                        o2.Q(bArr, j13 + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                        long j15 = j13 + 3;
                                        o2.Q(bArr, j13 + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                        j13 += 4;
                                        o2.Q(bArr, j15, (byte) ((codePoint & 63) | 128));
                                        i13 = i14;
                                    } else {
                                        i13 = i14;
                                    }
                                }
                                throw new UnpairedSurrogateException(i13 - 1, length);
                            } else if (55296 <= charAt2 && charAt2 <= 57343 && ((i12 = i13 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i12)))) {
                                throw new UnpairedSurrogateException(i13, length);
                            } else {
                                throw new ArrayIndexOutOfBoundsException(str2 + charAt2 + str + j13);
                            }
                        }
                        o2.Q(bArr, j13, (byte) ((charAt2 >>> '\f') | 480));
                        long j16 = j13 + 2;
                        o2.Q(bArr, j13 + 1, (byte) (((charAt2 >>> 6) & 63) | 128));
                        j13 += 3;
                        o2.Q(bArr, j16, (byte) ((charAt2 & '?') | 128));
                    } else {
                        str = str3;
                        str2 = str4;
                        long j17 = j13 + j10;
                        o2.Q(bArr, j13, (byte) ((charAt2 >>> 6) | 960));
                        j13 += 2;
                        o2.Q(bArr, j17, (byte) ((charAt2 & '?') | 128));
                    }
                    j12 = j14;
                    j11 = 1;
                } else {
                    o2.Q(bArr, j13, (byte) charAt2);
                    j12 = j14;
                    str2 = str4;
                    j11 = j10;
                    j13 += j10;
                    str = str3;
                }
                i13++;
                str3 = str;
                str4 = str2;
                j10 = j11;
                j14 = j12;
            }
            return (int) j13;
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0058, code lost:
            if (com.explorestack.protobuf.o2.x(r12, r0) > (-65)) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
            if (com.explorestack.protobuf.o2.x(r12, r0) > (-65)) goto L56;
         */
        @Override // com.explorestack.protobuf.Utf8.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int i(int r11, byte[] r12, int r13, int r14) {
            /*
                Method dump skipped, instructions count: 197
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.d.i(int, byte[], int, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
            if (com.explorestack.protobuf.o2.w(r0) > (-65)) goto L16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0061, code lost:
            if (com.explorestack.protobuf.o2.w(r0) > (-65)) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00a3, code lost:
            if (com.explorestack.protobuf.o2.w(r0) > (-65)) goto L55;
         */
        @Override // com.explorestack.protobuf.Utf8.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int l(int r10, java.nio.ByteBuffer r11, int r12, int r13) {
            /*
                Method dump skipped, instructions count: 205
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.d.l(int, java.nio.ByteBuffer, int, int):int");
        }
    }

    static {
        b cVar;
        if (d.m() && !com.explorestack.protobuf.d.c()) {
            cVar = new d();
        } else {
            cVar = new c();
        }
        f14206a = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String g(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
        return f14206a.a(byteBuffer, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String h(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
        return f14206a.b(bArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(CharSequence charSequence, byte[] bArr, int i10, int i11) {
        return f14206a.e(charSequence, bArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(CharSequence charSequence) {
        int length = charSequence.length();
        int i10 = 0;
        while (i10 < length && charSequence.charAt(i10) < 128) {
            i10++;
        }
        int i11 = length;
        while (true) {
            if (i10 < length) {
                char charAt = charSequence.charAt(i10);
                if (charAt < 2048) {
                    i11 += (127 - charAt) >>> 31;
                    i10++;
                } else {
                    i11 += k(charSequence, i10);
                    break;
                }
            } else {
                break;
            }
        }
        if (i11 >= length) {
            return i11;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i11 + 4294967296L));
    }

    private static int k(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = 0;
        while (i10 < length) {
            char charAt = charSequence.charAt(i10);
            if (charAt < 2048) {
                i11 += (127 - charAt) >>> 31;
            } else {
                i11 += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(charSequence, i10) >= 65536) {
                        i10++;
                    } else {
                        throw new UnpairedSurrogateException(i10, length);
                    }
                }
            }
            i10++;
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(ByteBuffer byteBuffer, int i10, int i11) {
        int i12 = i11 - 7;
        int i13 = i10;
        while (i13 < i12 && (byteBuffer.getLong(i13) & (-9187201950435737472L)) == 0) {
            i13 += 8;
        }
        return i13 - i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int m(int i10) {
        if (i10 > -12) {
            return -1;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int n(int i10, int i11) {
        if (i10 <= -12 && i11 <= -65) {
            return i10 ^ (i11 << 8);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int o(int i10, int i11, int i12) {
        if (i10 <= -12 && i11 <= -65 && i12 <= -65) {
            return (i10 ^ (i11 << 8)) ^ (i12 << 16);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int p(ByteBuffer byteBuffer, int i10, int i11, int i12) {
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 == 2) {
                    return o(i10, byteBuffer.get(i11), byteBuffer.get(i11 + 1));
                }
                throw new AssertionError();
            }
            return n(i10, byteBuffer.get(i11));
        }
        return m(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int q(byte[] bArr, int i10, int i11) {
        byte b10 = bArr[i10 - 1];
        int i12 = i11 - i10;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 == 2) {
                    return o(b10, bArr[i10], bArr[i10 + 1]);
                }
                throw new AssertionError();
            }
            return n(b10, bArr[i10]);
        }
        return m(b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean r(ByteBuffer byteBuffer) {
        return f14206a.f(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    public static boolean s(byte[] bArr) {
        return f14206a.g(bArr, 0, bArr.length);
    }

    public static boolean t(byte[] bArr, int i10, int i11) {
        return f14206a.g(bArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(int i10, ByteBuffer byteBuffer, int i11, int i12) {
        return f14206a.h(i10, byteBuffer, i11, i12);
    }

    public static int v(int i10, byte[] bArr, int i11, int i12) {
        return f14206a.i(i10, bArr, i11, i12);
    }
}
