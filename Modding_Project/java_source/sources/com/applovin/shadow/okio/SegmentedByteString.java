package com.applovin.shadow.okio;

import com.applovin.shadow.okio.Buffer;
import com.mbridge.msdk.MBridgeConstans;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Util.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,187:1\n68#1:188\n74#1:189\n*S KotlinDebug\n*F\n+ 1 Util.kt\nokio/-SegmentedByteString\n*L\n106#1:188\n107#1:189\n*E\n"})
/* renamed from: com.applovin.shadow.okio.-SegmentedByteString  reason: invalid class name */
/* loaded from: classes2.dex */
public final class SegmentedByteString {
    @NotNull
    private static final Buffer.UnsafeCursor DEFAULT__new_UnsafeCursor = new Buffer.UnsafeCursor();
    private static final int DEFAULT__ByteString_size = -1234567890;

    public static final int and(byte b10, int i10) {
        return b10 & i10;
    }

    public static final boolean arrayRangeEquals(@NotNull byte[] a10, int i10, @NotNull byte[] b10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        for (int i13 = 0; i13 < i12; i13++) {
            if (a10[i13 + i10] != b10[i13 + i11]) {
                return false;
            }
        }
        return true;
    }

    public static final void checkOffsetAndCount(long j10, long j11, long j12) {
        if ((j11 | j12) >= 0 && j11 <= j10 && j10 - j11 >= j12) {
            return;
        }
        throw new ArrayIndexOutOfBoundsException("size=" + j10 + " offset=" + j11 + " byteCount=" + j12);
    }

    public static final int getDEFAULT__ByteString_size() {
        return DEFAULT__ByteString_size;
    }

    @NotNull
    public static final Buffer.UnsafeCursor getDEFAULT__new_UnsafeCursor() {
        return DEFAULT__new_UnsafeCursor;
    }

    public static final int leftRotate(int i10, int i11) {
        return (i10 >>> (32 - i11)) | (i10 << i11);
    }

    public static final long minOf(long j10, int i10) {
        return Math.min(j10, i10);
    }

    @NotNull
    public static final Buffer.UnsafeCursor resolveDefaultParameter(@NotNull Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return unsafeCursor == DEFAULT__new_UnsafeCursor ? new Buffer.UnsafeCursor() : unsafeCursor;
    }

    public static final int reverseBytes(int i10) {
        return ((i10 & 255) << 24) | (((-16777216) & i10) >>> 24) | ((16711680 & i10) >>> 8) | ((65280 & i10) << 8);
    }

    public static final long rightRotate(long j10, int i10) {
        return (j10 << (64 - i10)) | (j10 >>> i10);
    }

    public static final int shl(byte b10, int i10) {
        return b10 << i10;
    }

    public static final int shr(byte b10, int i10) {
        return b10 >> i10;
    }

    @NotNull
    public static final String toHexString(byte b10) {
        return StringsKt.x(new char[]{com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(b10 >> 4) & 15], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[b10 & 15]});
    }

    public static final byte xor(byte b10, byte b11) {
        return (byte) (b10 ^ b11);
    }

    public static final long and(byte b10, long j10) {
        return b10 & j10;
    }

    public static final long minOf(int i10, long j10) {
        return Math.min(i10, j10);
    }

    public static final int resolveDefaultParameter(@NotNull ByteString byteString, int i10) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return i10 == DEFAULT__ByteString_size ? byteString.size() : i10;
    }

    public static final long reverseBytes(long j10) {
        return ((j10 & 255) << 56) | (((-72057594037927936L) & j10) >>> 56) | ((71776119061217280L & j10) >>> 40) | ((280375465082880L & j10) >>> 24) | ((1095216660480L & j10) >>> 8) | ((4278190080L & j10) << 8) | ((16711680 & j10) << 24) | ((65280 & j10) << 40);
    }

    public static final long and(int i10, long j10) {
        return i10 & j10;
    }

    public static final int resolveDefaultParameter(@NotNull byte[] bArr, int i10) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return i10 == DEFAULT__ByteString_size ? bArr.length : i10;
    }

    public static final short reverseBytes(short s10) {
        return (short) (((s10 & 255) << 8) | ((65280 & s10) >>> 8));
    }

    @NotNull
    public static final String toHexString(int i10) {
        int i11 = 0;
        if (i10 == 0) {
            return MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        char[] cArr = {com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i10 >> 28) & 15], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i10 >> 24) & 15], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i10 >> 20) & 15], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i10 >> 16) & 15], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i10 >> 12) & 15], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i10 >> 8) & 15], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i10 >> 4) & 15], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[i10 & 15]};
        while (i11 < 8 && cArr[i11] == '0') {
            i11++;
        }
        return StringsKt.y(cArr, i11, 8);
    }

    @NotNull
    public static final String toHexString(long j10) {
        if (j10 == 0) {
            return MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        char[] cArr = {com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 60) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 56) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 52) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 48) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 44) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 40) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 36) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 32) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 28) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 24) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 20) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 16) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 12) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 8) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 4) & 15)], com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) (j10 & 15)]};
        int i10 = 0;
        while (i10 < 16 && cArr[i10] == '0') {
            i10++;
        }
        return StringsKt.y(cArr, i10, 16);
    }

    public static /* synthetic */ void getDEFAULT__new_UnsafeCursor$annotations() {
    }
}
