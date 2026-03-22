package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.Utf8;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public final class Utf8Safe extends Utf8 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i10, int i11) {
            super("Unpaired surrogate at index " + i10 + " of " + i11);
        }
    }

    private static int computeEncodedLength(CharSequence charSequence) {
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
                    i11 += encodedLengthGeneral(charSequence, i10);
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

    public static String decodeUtf8Array(byte[] bArr, int i10, int i11) {
        if ((i10 | i11 | ((bArr.length - i10) - i11)) >= 0) {
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b10 = bArr[i10];
                if (!Utf8.DecodeUtil.isOneByte(b10)) {
                    break;
                }
                i10++;
                Utf8.DecodeUtil.handleOneByte(b10, cArr, i13);
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b11 = bArr[i10];
                if (Utf8.DecodeUtil.isOneByte(b11)) {
                    int i16 = i14 + 1;
                    Utf8.DecodeUtil.handleOneByte(b11, cArr, i14);
                    while (i15 < i12) {
                        byte b12 = bArr[i15];
                        if (!Utf8.DecodeUtil.isOneByte(b12)) {
                            break;
                        }
                        i15++;
                        Utf8.DecodeUtil.handleOneByte(b12, cArr, i16);
                        i16++;
                    }
                    i14 = i16;
                    i10 = i15;
                } else if (Utf8.DecodeUtil.isTwoBytes(b11)) {
                    if (i15 < i12) {
                        i10 += 2;
                        Utf8.DecodeUtil.handleTwoBytes(b11, bArr[i15], cArr, i14);
                        i14++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (Utf8.DecodeUtil.isThreeBytes(b11)) {
                    if (i15 < i12 - 1) {
                        int i17 = i10 + 2;
                        i10 += 3;
                        Utf8.DecodeUtil.handleThreeBytes(b11, bArr[i15], bArr[i17], cArr, i14);
                        i14++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i15 < i12 - 2) {
                    byte b13 = bArr[i15];
                    int i18 = i10 + 3;
                    i10 += 4;
                    Utf8.DecodeUtil.handleFourBytes(b11, b13, bArr[i10 + 2], bArr[i18], cArr, i14);
                    i14 += 2;
                } else {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
            }
            return new String(cArr, 0, i14);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    public static String decodeUtf8Buffer(ByteBuffer byteBuffer, int i10, int i11) {
        if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) >= 0) {
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b10 = byteBuffer.get(i10);
                if (!Utf8.DecodeUtil.isOneByte(b10)) {
                    break;
                }
                i10++;
                Utf8.DecodeUtil.handleOneByte(b10, cArr, i13);
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b11 = byteBuffer.get(i10);
                if (Utf8.DecodeUtil.isOneByte(b11)) {
                    int i16 = i14 + 1;
                    Utf8.DecodeUtil.handleOneByte(b11, cArr, i14);
                    while (i15 < i12) {
                        byte b12 = byteBuffer.get(i15);
                        if (!Utf8.DecodeUtil.isOneByte(b12)) {
                            break;
                        }
                        i15++;
                        Utf8.DecodeUtil.handleOneByte(b12, cArr, i16);
                        i16++;
                    }
                    i14 = i16;
                    i10 = i15;
                } else if (Utf8.DecodeUtil.isTwoBytes(b11)) {
                    if (i15 < i12) {
                        i10 += 2;
                        Utf8.DecodeUtil.handleTwoBytes(b11, byteBuffer.get(i15), cArr, i14);
                        i14++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (Utf8.DecodeUtil.isThreeBytes(b11)) {
                    if (i15 < i12 - 1) {
                        int i17 = i10 + 2;
                        i10 += 3;
                        Utf8.DecodeUtil.handleThreeBytes(b11, byteBuffer.get(i15), byteBuffer.get(i17), cArr, i14);
                        i14++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i15 < i12 - 2) {
                    byte b13 = byteBuffer.get(i15);
                    int i18 = i10 + 3;
                    i10 += 4;
                    Utf8.DecodeUtil.handleFourBytes(b11, b13, byteBuffer.get(i10 + 2), byteBuffer.get(i18), cArr, i14);
                    i14 += 2;
                } else {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
            }
            return new String(cArr, 0, i14);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        return r9 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int encodeUtf8Array(java.lang.CharSequence r7, byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.flatbuffer.Utf8Safe.encodeUtf8Array(java.lang.CharSequence, byte[], int, int):int");
    }

    private static void encodeUtf8Buffer(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i10;
        int length = charSequence.length();
        int position = byteBuffer.position();
        int i11 = 0;
        while (i11 < length) {
            try {
                char charAt = charSequence.charAt(i11);
                if (charAt >= 128) {
                    break;
                }
                byteBuffer.put(position + i11, (byte) charAt);
                i11++;
            } catch (IndexOutOfBoundsException unused) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i11) + " at index " + (byteBuffer.position() + Math.max(i11, (position - byteBuffer.position()) + 1)));
            }
        }
        if (i11 == length) {
            byteBuffer.position(position + i11);
            return;
        }
        position += i11;
        while (i11 < length) {
            char charAt2 = charSequence.charAt(i11);
            if (charAt2 < 128) {
                byteBuffer.put(position, (byte) charAt2);
            } else if (charAt2 < 2048) {
                int i12 = position + 1;
                try {
                    byteBuffer.put(position, (byte) ((charAt2 >>> 6) | 192));
                    byteBuffer.put(i12, (byte) ((charAt2 & '?') | 128));
                    position = i12;
                } catch (IndexOutOfBoundsException unused2) {
                    position = i12;
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i11) + " at index " + (byteBuffer.position() + Math.max(i11, (position - byteBuffer.position()) + 1)));
                }
            } else if (charAt2 >= 55296 && 57343 >= charAt2) {
                int i13 = i11 + 1;
                if (i13 != length) {
                    try {
                        char charAt3 = charSequence.charAt(i13);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i14 = position + 1;
                            try {
                                byteBuffer.put(position, (byte) ((codePoint >>> 18) | 240));
                                i10 = position + 2;
                            } catch (IndexOutOfBoundsException unused3) {
                                position = i14;
                                i11 = i13;
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i11) + " at index " + (byteBuffer.position() + Math.max(i11, (position - byteBuffer.position()) + 1)));
                            }
                            try {
                                byteBuffer.put(i14, (byte) (((codePoint >>> 12) & 63) | 128));
                                position += 3;
                                byteBuffer.put(i10, (byte) (((codePoint >>> 6) & 63) | 128));
                                byteBuffer.put(position, (byte) ((codePoint & 63) | 128));
                                i11 = i13;
                            } catch (IndexOutOfBoundsException unused4) {
                                i11 = i13;
                                position = i10;
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i11) + " at index " + (byteBuffer.position() + Math.max(i11, (position - byteBuffer.position()) + 1)));
                            }
                        } else {
                            i11 = i13;
                        }
                    } catch (IndexOutOfBoundsException unused5) {
                    }
                }
                throw new UnpairedSurrogateException(i11, length);
            } else {
                int i15 = position + 1;
                byteBuffer.put(position, (byte) ((charAt2 >>> '\f') | 224));
                position += 2;
                byteBuffer.put(i15, (byte) (((charAt2 >>> 6) & 63) | 128));
                byteBuffer.put(position, (byte) ((charAt2 & '?') | 128));
            }
            i11++;
            position++;
        }
        byteBuffer.position(position);
    }

    private static int encodedLengthGeneral(CharSequence charSequence, int i10) {
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

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public String decodeUtf8(ByteBuffer byteBuffer, int i10, int i11) throws IllegalArgumentException {
        if (byteBuffer.hasArray()) {
            return decodeUtf8Array(byteBuffer.array(), byteBuffer.arrayOffset() + i10, i11);
        }
        return decodeUtf8Buffer(byteBuffer, i10, i11);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            int arrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(encodeUtf8Array(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
            return;
        }
        encodeUtf8Buffer(charSequence, byteBuffer);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public int encodedLength(CharSequence charSequence) {
        return computeEncodedLength(charSequence);
    }
}
