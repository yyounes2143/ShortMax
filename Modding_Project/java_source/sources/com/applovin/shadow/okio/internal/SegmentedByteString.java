package com.applovin.shadow.okio.internal;

import com.applovin.shadow.okio.Buffer;
import com.applovin.shadow.okio.ByteString;
import com.applovin.shadow.okio.C0994SegmentedByteString;
import com.applovin.shadow.okio.Segment;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SegmentedByteString.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/internal/-SegmentedByteString\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,250:1\n63#1,12:252\n85#1,14:264\n85#1,14:278\n85#1,14:292\n85#1,14:306\n63#1,12:320\n1#2:251\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/internal/-SegmentedByteString\n*L\n147#1:252,12\n160#1:264,14\n182#1:278,14\n202#1:292,14\n219#1:306,14\n239#1:320,12\n*E\n"})
/* renamed from: com.applovin.shadow.okio.internal.-SegmentedByteString  reason: invalid class name */
/* loaded from: classes2.dex */
public final class SegmentedByteString {
    public static final int binarySearch(@NotNull int[] iArr, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        int i13 = i12 - 1;
        while (i11 <= i13) {
            int i14 = (i11 + i13) >>> 1;
            int i15 = iArr[i14];
            if (i15 < i10) {
                i11 = i14 + 1;
            } else if (i15 > i10) {
                i13 = i14 - 1;
            } else {
                return i14;
            }
        }
        return (-i11) - 1;
    }

    public static final void commonCopyInto(@NotNull C0994SegmentedByteString c0994SegmentedByteString, int i10, @NotNull byte[] target, int i11, int i12) {
        int i13;
        Intrinsics.checkNotNullParameter(c0994SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        long j10 = i12;
        com.applovin.shadow.okio.SegmentedByteString.checkOffsetAndCount(c0994SegmentedByteString.size(), i10, j10);
        com.applovin.shadow.okio.SegmentedByteString.checkOffsetAndCount(target.length, i11, j10);
        int i14 = i12 + i10;
        int segment = segment(c0994SegmentedByteString, i10);
        while (i10 < i14) {
            if (segment == 0) {
                i13 = 0;
            } else {
                i13 = c0994SegmentedByteString.getDirectory$okio()[segment - 1];
            }
            int i15 = c0994SegmentedByteString.getDirectory$okio()[c0994SegmentedByteString.getSegments$okio().length + segment];
            int min = Math.min(i14, (c0994SegmentedByteString.getDirectory$okio()[segment] - i13) + i13) - i10;
            int i16 = i15 + (i10 - i13);
            n.h(c0994SegmentedByteString.getSegments$okio()[segment], target, i11, i16, i16 + min);
            i11 += min;
            i10 += min;
            segment++;
        }
    }

    public static final boolean commonEquals(@NotNull C0994SegmentedByteString c0994SegmentedByteString, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(c0994SegmentedByteString, "<this>");
        if (obj == c0994SegmentedByteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == c0994SegmentedByteString.size() && c0994SegmentedByteString.rangeEquals(0, byteString, 0, c0994SegmentedByteString.size())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonGetSize(@NotNull C0994SegmentedByteString c0994SegmentedByteString) {
        Intrinsics.checkNotNullParameter(c0994SegmentedByteString, "<this>");
        return c0994SegmentedByteString.getDirectory$okio()[c0994SegmentedByteString.getSegments$okio().length - 1];
    }

    public static final int commonHashCode(@NotNull C0994SegmentedByteString c0994SegmentedByteString) {
        Intrinsics.checkNotNullParameter(c0994SegmentedByteString, "<this>");
        int hashCode$okio = c0994SegmentedByteString.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = c0994SegmentedByteString.getSegments$okio().length;
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        while (i10 < length) {
            int i13 = c0994SegmentedByteString.getDirectory$okio()[length + i10];
            int i14 = c0994SegmentedByteString.getDirectory$okio()[i10];
            byte[] bArr = c0994SegmentedByteString.getSegments$okio()[i10];
            int i15 = (i14 - i12) + i13;
            while (i13 < i15) {
                i11 = (i11 * 31) + bArr[i13];
                i13++;
            }
            i10++;
            i12 = i14;
        }
        c0994SegmentedByteString.setHashCode$okio(i11);
        return i11;
    }

    public static final byte commonInternalGet(@NotNull C0994SegmentedByteString c0994SegmentedByteString, int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(c0994SegmentedByteString, "<this>");
        com.applovin.shadow.okio.SegmentedByteString.checkOffsetAndCount(c0994SegmentedByteString.getDirectory$okio()[c0994SegmentedByteString.getSegments$okio().length - 1], i10, 1L);
        int segment = segment(c0994SegmentedByteString, i10);
        if (segment == 0) {
            i11 = 0;
        } else {
            i11 = c0994SegmentedByteString.getDirectory$okio()[segment - 1];
        }
        return c0994SegmentedByteString.getSegments$okio()[segment][(i10 - i11) + c0994SegmentedByteString.getDirectory$okio()[c0994SegmentedByteString.getSegments$okio().length + segment]];
    }

    public static final boolean commonRangeEquals(@NotNull C0994SegmentedByteString c0994SegmentedByteString, int i10, @NotNull ByteString other, int i11, int i12) {
        Intrinsics.checkNotNullParameter(c0994SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i10 < 0 || i10 > c0994SegmentedByteString.size() - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int segment = segment(c0994SegmentedByteString, i10);
        while (i10 < i13) {
            int i14 = segment == 0 ? 0 : c0994SegmentedByteString.getDirectory$okio()[segment - 1];
            int i15 = c0994SegmentedByteString.getDirectory$okio()[c0994SegmentedByteString.getSegments$okio().length + segment];
            int min = Math.min(i13, (c0994SegmentedByteString.getDirectory$okio()[segment] - i14) + i14) - i10;
            if (!other.rangeEquals(i11, c0994SegmentedByteString.getSegments$okio()[segment], i15 + (i10 - i14), min)) {
                return false;
            }
            i11 += min;
            i10 += min;
            segment++;
        }
        return true;
    }

    @NotNull
    public static final ByteString commonSubstring(@NotNull C0994SegmentedByteString c0994SegmentedByteString, int i10, int i11) {
        Intrinsics.checkNotNullParameter(c0994SegmentedByteString, "<this>");
        int resolveDefaultParameter = com.applovin.shadow.okio.SegmentedByteString.resolveDefaultParameter(c0994SegmentedByteString, i11);
        if (i10 >= 0) {
            if (resolveDefaultParameter <= c0994SegmentedByteString.size()) {
                int i12 = resolveDefaultParameter - i10;
                if (i12 >= 0) {
                    if (i10 == 0 && resolveDefaultParameter == c0994SegmentedByteString.size()) {
                        return c0994SegmentedByteString;
                    }
                    if (i10 == resolveDefaultParameter) {
                        return ByteString.EMPTY;
                    }
                    int segment = segment(c0994SegmentedByteString, i10);
                    int segment2 = segment(c0994SegmentedByteString, resolveDefaultParameter - 1);
                    byte[][] bArr = (byte[][]) n.y(c0994SegmentedByteString.getSegments$okio(), segment, segment2 + 1);
                    int[] iArr = new int[bArr.length * 2];
                    int i13 = 0;
                    if (segment <= segment2) {
                        int i14 = segment;
                        int i15 = 0;
                        while (true) {
                            iArr[i15] = Math.min(c0994SegmentedByteString.getDirectory$okio()[i14] - i10, i12);
                            int i16 = i15 + 1;
                            iArr[i15 + bArr.length] = c0994SegmentedByteString.getDirectory$okio()[c0994SegmentedByteString.getSegments$okio().length + i14];
                            if (i14 == segment2) {
                                break;
                            }
                            i14++;
                            i15 = i16;
                        }
                    }
                    if (segment != 0) {
                        i13 = c0994SegmentedByteString.getDirectory$okio()[segment - 1];
                    }
                    int length = bArr.length;
                    iArr[length] = iArr[length] + (i10 - i13);
                    return new C0994SegmentedByteString(bArr, iArr);
                }
                throw new IllegalArgumentException(("endIndex=" + resolveDefaultParameter + " < beginIndex=" + i10).toString());
            }
            throw new IllegalArgumentException(("endIndex=" + resolveDefaultParameter + " > length(" + c0994SegmentedByteString.size() + ')').toString());
        }
        throw new IllegalArgumentException(("beginIndex=" + i10 + " < 0").toString());
    }

    @NotNull
    public static final byte[] commonToByteArray(@NotNull C0994SegmentedByteString c0994SegmentedByteString) {
        Intrinsics.checkNotNullParameter(c0994SegmentedByteString, "<this>");
        byte[] bArr = new byte[c0994SegmentedByteString.size()];
        int length = c0994SegmentedByteString.getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length) {
            int i13 = c0994SegmentedByteString.getDirectory$okio()[length + i10];
            int i14 = c0994SegmentedByteString.getDirectory$okio()[i10];
            int i15 = i14 - i11;
            n.h(c0994SegmentedByteString.getSegments$okio()[i10], bArr, i12, i13, i13 + i15);
            i12 += i15;
            i10++;
            i11 = i14;
        }
        return bArr;
    }

    public static final void commonWrite(@NotNull C0994SegmentedByteString c0994SegmentedByteString, @NotNull Buffer buffer, int i10, int i11) {
        int i12;
        Intrinsics.checkNotNullParameter(c0994SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i13 = i10 + i11;
        int segment = segment(c0994SegmentedByteString, i10);
        while (i10 < i13) {
            if (segment == 0) {
                i12 = 0;
            } else {
                i12 = c0994SegmentedByteString.getDirectory$okio()[segment - 1];
            }
            int i14 = c0994SegmentedByteString.getDirectory$okio()[c0994SegmentedByteString.getSegments$okio().length + segment];
            int min = Math.min(i13, (c0994SegmentedByteString.getDirectory$okio()[segment] - i12) + i12) - i10;
            int i15 = i14 + (i10 - i12);
            Segment segment2 = new Segment(c0994SegmentedByteString.getSegments$okio()[segment], i15, i15 + min, true, false);
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

    public static final void forEachSegment(@NotNull C0994SegmentedByteString c0994SegmentedByteString, @NotNull at.n<? super byte[], ? super Integer, ? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(c0994SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int length = c0994SegmentedByteString.getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = c0994SegmentedByteString.getDirectory$okio()[length + i10];
            int i13 = c0994SegmentedByteString.getDirectory$okio()[i10];
            action.invoke(c0994SegmentedByteString.getSegments$okio()[i10], Integer.valueOf(i12), Integer.valueOf(i13 - i11));
            i10++;
            i11 = i13;
        }
    }

    public static final int segment(@NotNull C0994SegmentedByteString c0994SegmentedByteString, int i10) {
        Intrinsics.checkNotNullParameter(c0994SegmentedByteString, "<this>");
        int binarySearch = binarySearch(c0994SegmentedByteString.getDirectory$okio(), i10 + 1, 0, c0994SegmentedByteString.getSegments$okio().length);
        if (binarySearch < 0) {
            return ~binarySearch;
        }
        return binarySearch;
    }

    private static final void forEachSegment(C0994SegmentedByteString c0994SegmentedByteString, int i10, int i11, at.n<? super byte[], ? super Integer, ? super Integer, Unit> nVar) {
        int segment = segment(c0994SegmentedByteString, i10);
        while (i10 < i11) {
            int i12 = segment == 0 ? 0 : c0994SegmentedByteString.getDirectory$okio()[segment - 1];
            int i13 = c0994SegmentedByteString.getDirectory$okio()[c0994SegmentedByteString.getSegments$okio().length + segment];
            int min = Math.min(i11, (c0994SegmentedByteString.getDirectory$okio()[segment] - i12) + i12) - i10;
            nVar.invoke(c0994SegmentedByteString.getSegments$okio()[segment], Integer.valueOf(i13 + (i10 - i12)), Integer.valueOf(min));
            i10 += min;
            segment++;
        }
    }

    public static final boolean commonRangeEquals(@NotNull C0994SegmentedByteString c0994SegmentedByteString, int i10, @NotNull byte[] other, int i11, int i12) {
        Intrinsics.checkNotNullParameter(c0994SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i10 < 0 || i10 > c0994SegmentedByteString.size() - i12 || i11 < 0 || i11 > other.length - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int segment = segment(c0994SegmentedByteString, i10);
        while (i10 < i13) {
            int i14 = segment == 0 ? 0 : c0994SegmentedByteString.getDirectory$okio()[segment - 1];
            int i15 = c0994SegmentedByteString.getDirectory$okio()[c0994SegmentedByteString.getSegments$okio().length + segment];
            int min = Math.min(i13, (c0994SegmentedByteString.getDirectory$okio()[segment] - i14) + i14) - i10;
            if (!com.applovin.shadow.okio.SegmentedByteString.arrayRangeEquals(c0994SegmentedByteString.getSegments$okio()[segment], i15 + (i10 - i14), other, i11, min)) {
                return false;
            }
            i11 += min;
            i10 += min;
            segment++;
        }
        return true;
    }
}
