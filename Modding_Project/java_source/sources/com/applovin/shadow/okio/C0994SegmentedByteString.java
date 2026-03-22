package com.applovin.shadow.okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SegmentedByteString.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n+ 2 SegmentedByteString.kt\nokio/internal/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n63#2,12:141\n63#2,12:153\n104#2,2:165\n106#2,26:168\n135#2,5:194\n142#2:199\n145#2,3:200\n63#2,8:203\n148#2,8:211\n71#2,4:219\n156#2:223\n63#2,12:224\n160#2:236\n85#2,10:237\n161#2,9:247\n95#2,4:256\n170#2,2:260\n179#2,4:262\n85#2,10:266\n183#2,3:276\n95#2,4:279\n186#2:283\n195#2,8:284\n85#2,10:292\n203#2,3:302\n95#2,4:305\n206#2:309\n215#2,5:310\n85#2,10:315\n220#2,3:325\n95#2,4:328\n223#2:332\n226#2,4:333\n234#2,6:337\n63#2,8:343\n240#2,7:351\n71#2,4:358\n247#2,2:362\n1#3:167\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n54#1:141,12\n66#1:153,12\n78#1:165,2\n78#1:168,26\n80#1:194,5\n82#1:199\n84#1:200,3\n84#1:203,8\n84#1:211,8\n84#1:219,4\n84#1:223\n90#1:224,12\n96#1:236\n96#1:237,10\n96#1:247,9\n96#1:256,4\n96#1:260,2\n103#1:262,4\n103#1:266,10\n103#1:276,3\n103#1:279,4\n103#1:283\n110#1:284,8\n110#1:292,10\n110#1:302,3\n110#1:305,4\n110#1:309\n117#1:310,5\n117#1:315,10\n117#1:325,3\n117#1:328,4\n117#1:332\n131#1:333,4\n133#1:337,6\n133#1:343,8\n133#1:351,7\n133#1:358,4\n133#1:362,2\n78#1:167\n*E\n"})
/* renamed from: com.applovin.shadow.okio.SegmentedByteString  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0994SegmentedByteString extends ByteString {
    @NotNull
    private final transient int[] directory;
    @NotNull
    private final transient byte[][] segments;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0994SegmentedByteString(@NotNull byte[][] segments, @NotNull int[] directory) {
        super(ByteString.EMPTY.getData$okio());
        Intrinsics.checkNotNullParameter(segments, "segments");
        Intrinsics.checkNotNullParameter(directory, "directory");
        this.segments = segments;
        this.directory = directory;
    }

    private final ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    private final Object writeReplace() {
        ByteString byteString = toByteString();
        Intrinsics.checkNotNull(byteString, "null cannot be cast to non-null type java.lang.Object");
        return byteString;
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public ByteBuffer asByteBuffer() {
        ByteBuffer asReadOnlyBuffer = ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
        Intrinsics.checkNotNullExpressionValue(asReadOnlyBuffer, "asReadOnlyBuffer(...)");
        return asReadOnlyBuffer;
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public String base64() {
        return toByteString().base64();
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public String base64Url() {
        return toByteString().base64Url();
    }

    @Override // com.applovin.shadow.okio.ByteString
    public void copyInto(int i10, @NotNull byte[] target, int i11, int i12) {
        int i13;
        Intrinsics.checkNotNullParameter(target, "target");
        long j10 = i12;
        SegmentedByteString.checkOffsetAndCount(size(), i10, j10);
        SegmentedByteString.checkOffsetAndCount(target.length, i11, j10);
        int i14 = i12 + i10;
        int segment = com.applovin.shadow.okio.internal.SegmentedByteString.segment(this, i10);
        while (i10 < i14) {
            if (segment == 0) {
                i13 = 0;
            } else {
                i13 = getDirectory$okio()[segment - 1];
            }
            int i15 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i14, (getDirectory$okio()[segment] - i13) + i13) - i10;
            int i16 = i15 + (i10 - i13);
            kotlin.collections.n.h(getSegments$okio()[segment], target, i11, i16, i16 + min);
            i11 += min;
            i10 += min;
            segment++;
        }
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public ByteString digest$okio(@NotNull String algorithm) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        int length = getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = getDirectory$okio()[length + i10];
            int i13 = getDirectory$okio()[i10];
            messageDigest.update(getSegments$okio()[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNull(digest);
        return new ByteString(digest);
    }

    @Override // com.applovin.shadow.okio.ByteString
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final int[] getDirectory$okio() {
        return this.directory;
    }

    @NotNull
    public final byte[][] getSegments$okio() {
        return this.segments;
    }

    @Override // com.applovin.shadow.okio.ByteString
    public int getSize$okio() {
        return getDirectory$okio()[getSegments$okio().length - 1];
    }

    @Override // com.applovin.shadow.okio.ByteString
    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio == 0) {
            int length = getSegments$okio().length;
            int i10 = 0;
            int i11 = 1;
            int i12 = 0;
            while (i10 < length) {
                int i13 = getDirectory$okio()[length + i10];
                int i14 = getDirectory$okio()[i10];
                byte[] bArr = getSegments$okio()[i10];
                int i15 = (i14 - i12) + i13;
                while (i13 < i15) {
                    i11 = (i11 * 31) + bArr[i13];
                    i13++;
                }
                i10++;
                i12 = i14;
            }
            setHashCode$okio(i11);
            return i11;
        }
        return hashCode$okio;
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public String hex() {
        return toByteString().hex();
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public ByteString hmac$okio(@NotNull String algorithm, @NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            int length = getSegments$okio().length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                int i12 = getDirectory$okio()[length + i10];
                int i13 = getDirectory$okio()[i10];
                mac.update(getSegments$okio()[i10], i12, i13 - i11);
                i10++;
                i11 = i13;
            }
            byte[] doFinal = mac.doFinal();
            Intrinsics.checkNotNullExpressionValue(doFinal, "doFinal(...)");
            return new ByteString(doFinal);
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @Override // com.applovin.shadow.okio.ByteString
    public int indexOf(@NotNull byte[] other, int i10) {
        Intrinsics.checkNotNullParameter(other, "other");
        return toByteString().indexOf(other, i10);
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public byte[] internalArray$okio() {
        return toByteArray();
    }

    @Override // com.applovin.shadow.okio.ByteString
    public byte internalGet$okio(int i10) {
        int i11;
        SegmentedByteString.checkOffsetAndCount(getDirectory$okio()[getSegments$okio().length - 1], i10, 1L);
        int segment = com.applovin.shadow.okio.internal.SegmentedByteString.segment(this, i10);
        if (segment == 0) {
            i11 = 0;
        } else {
            i11 = getDirectory$okio()[segment - 1];
        }
        return getSegments$okio()[segment][(i10 - i11) + getDirectory$okio()[getSegments$okio().length + segment]];
    }

    @Override // com.applovin.shadow.okio.ByteString
    public int lastIndexOf(@NotNull byte[] other, int i10) {
        Intrinsics.checkNotNullParameter(other, "other");
        return toByteString().lastIndexOf(other, i10);
    }

    @Override // com.applovin.shadow.okio.ByteString
    public boolean rangeEquals(int i10, @NotNull ByteString other, int i11, int i12) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (i10 < 0 || i10 > size() - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int segment = com.applovin.shadow.okio.internal.SegmentedByteString.segment(this, i10);
        while (i10 < i13) {
            int i14 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i15 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i13, (getDirectory$okio()[segment] - i14) + i14) - i10;
            if (!other.rangeEquals(i11, getSegments$okio()[segment], i15 + (i10 - i14), min)) {
                return false;
            }
            i11 += min;
            i10 += min;
            segment++;
        }
        return true;
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public String string(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return toByteString().string(charset);
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public ByteString substring(int i10, int i11) {
        int resolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(this, i11);
        if (i10 >= 0) {
            if (resolveDefaultParameter <= size()) {
                int i12 = resolveDefaultParameter - i10;
                if (i12 >= 0) {
                    if (i10 == 0 && resolveDefaultParameter == size()) {
                        return this;
                    }
                    if (i10 == resolveDefaultParameter) {
                        return ByteString.EMPTY;
                    }
                    int segment = com.applovin.shadow.okio.internal.SegmentedByteString.segment(this, i10);
                    int segment2 = com.applovin.shadow.okio.internal.SegmentedByteString.segment(this, resolveDefaultParameter - 1);
                    byte[][] bArr = (byte[][]) kotlin.collections.n.y(getSegments$okio(), segment, segment2 + 1);
                    int[] iArr = new int[bArr.length * 2];
                    int i13 = 0;
                    if (segment <= segment2) {
                        int i14 = segment;
                        int i15 = 0;
                        while (true) {
                            iArr[i15] = Math.min(getDirectory$okio()[i14] - i10, i12);
                            int i16 = i15 + 1;
                            iArr[i15 + bArr.length] = getDirectory$okio()[getSegments$okio().length + i14];
                            if (i14 == segment2) {
                                break;
                            }
                            i14++;
                            i15 = i16;
                        }
                    }
                    if (segment != 0) {
                        i13 = getDirectory$okio()[segment - 1];
                    }
                    int length = bArr.length;
                    iArr[length] = iArr[length] + (i10 - i13);
                    return new C0994SegmentedByteString(bArr, iArr);
                }
                throw new IllegalArgumentException(("endIndex=" + resolveDefaultParameter + " < beginIndex=" + i10).toString());
            }
            throw new IllegalArgumentException(("endIndex=" + resolveDefaultParameter + " > length(" + size() + ')').toString());
        }
        throw new IllegalArgumentException(("beginIndex=" + i10 + " < 0").toString());
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        int length = getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length) {
            int i13 = getDirectory$okio()[length + i10];
            int i14 = getDirectory$okio()[i10];
            int i15 = i14 - i11;
            kotlin.collections.n.h(getSegments$okio()[i10], bArr, i12, i13, i13 + i15);
            i12 += i15;
            i10++;
            i11 = i14;
        }
        return bArr;
    }

    @Override // com.applovin.shadow.okio.ByteString
    @NotNull
    public String toString() {
        return toByteString().toString();
    }

    @Override // com.applovin.shadow.okio.ByteString
    public void write(@NotNull OutputStream out) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        int length = getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = getDirectory$okio()[length + i10];
            int i13 = getDirectory$okio()[i10];
            out.write(getSegments$okio()[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
    }

    @Override // com.applovin.shadow.okio.ByteString
    public void write$okio(@NotNull Buffer buffer, int i10, int i11) {
        int i12;
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i13 = i10 + i11;
        int segment = com.applovin.shadow.okio.internal.SegmentedByteString.segment(this, i10);
        while (i10 < i13) {
            if (segment == 0) {
                i12 = 0;
            } else {
                i12 = getDirectory$okio()[segment - 1];
            }
            int i14 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i13, (getDirectory$okio()[segment] - i12) + i12) - i10;
            int i15 = i14 + (i10 - i12);
            Segment segment2 = new Segment(getSegments$okio()[segment], i15, i15 + min, true, false);
            Segment segment3 = buffer.head;
            if (segment3 == null) {
                segment2.prev = segment2;
                segment2.next = segment2;
                buffer.head = segment2;
            } else {
                Intrinsics.checkNotNull(segment3);
                Segment segment4 = segment3.prev;
                Intrinsics.checkNotNull(segment4);
                segment4.push(segment2);
            }
            i10 += min;
            segment++;
        }
        buffer.setSize$okio(buffer.size() + i11);
    }

    @Override // com.applovin.shadow.okio.ByteString
    public boolean rangeEquals(int i10, @NotNull byte[] other, int i11, int i12) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (i10 < 0 || i10 > size() - i12 || i11 < 0 || i11 > other.length - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int segment = com.applovin.shadow.okio.internal.SegmentedByteString.segment(this, i10);
        while (i10 < i13) {
            int i14 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i15 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i13, (getDirectory$okio()[segment] - i14) + i14) - i10;
            if (!SegmentedByteString.arrayRangeEquals(getSegments$okio()[segment], i15 + (i10 - i14), other, i11, min)) {
                return false;
            }
            i11 += min;
            i10 += min;
            segment++;
        }
        return true;
    }
}
