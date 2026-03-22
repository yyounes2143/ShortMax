package okio.internal;

import androidx.collection.SieveCacheKt;
import com.applovin.shadow.okhttp3.internal.connection.RealConnection;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.EOFException;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.ByteString;
import okio.C3331SegmentedByteString;
import okio.Options;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Source;
import okio._JvmPlatformKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Buffer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/internal/-Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1730:1\n112#1,20:1753\n112#1,20:1786\n112#1:1806\n114#1,18:1808\n112#1,20:1826\n74#2:1731\n74#2:1732\n74#2:1733\n74#2:1734\n74#2:1735\n74#2:1736\n74#2:1737\n74#2:1738\n74#2:1739\n74#2:1740\n74#2:1741\n74#2:1742\n83#2:1743\n83#2:1744\n77#2:1745\n77#2:1746\n77#2:1747\n77#2:1748\n77#2:1749\n77#2:1750\n77#2:1751\n77#2:1752\n86#2:1773\n89#2:1775\n74#2:1776\n74#2:1777\n74#2:1778\n74#2:1779\n74#2:1780\n74#2:1781\n74#2:1782\n74#2:1783\n74#2:1784\n74#2:1785\n89#2:1807\n86#2:1846\n1#3:1774\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/internal/-Buffer\n*L\n415#1:1753,20\n1292#1:1786,20\n1323#1:1806\n1323#1:1808,18\n1357#1:1826,20\n178#1:1731\n202#1:1732\n321#1:1733\n326#1:1734\n349#1:1735\n350#1:1736\n351#1:1737\n352#1:1738\n358#1:1739\n359#1:1740\n360#1:1741\n361#1:1742\n385#1:1743\n386#1:1744\n392#1:1745\n393#1:1746\n394#1:1747\n395#1:1748\n396#1:1749\n397#1:1750\n398#1:1751\n399#1:1752\n427#1:1773\n888#1:1775\n906#1:1776\n908#1:1777\n912#1:1778\n914#1:1779\n918#1:1780\n920#1:1781\n924#1:1782\n926#1:1783\n946#1:1784\n949#1:1785\n1336#1:1807\n1676#1:1846\n*E\n"})
/* renamed from: okio.internal.-Buffer */
/* loaded from: classes8.dex */
public final class Buffer {
    @NotNull
    private static final byte[] HEX_DIGIT_BYTES = _JvmPlatformKt.asUtf8ToByteArray("0123456789abcdef");
    public static final long OVERFLOW_DIGIT_START = -7;
    public static final long OVERFLOW_ZONE = -922337203685477580L;
    public static final int SEGMENTING_THRESHOLD = 4096;

    public static final void commonClear(@NotNull okio.Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        buffer.skip(buffer.size());
    }

    public static final void commonClose(@NotNull Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        if (unsafeCursor.buffer != null) {
            unsafeCursor.buffer = null;
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = -1L;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
            return;
        }
        throw new IllegalStateException("not attached to a buffer");
    }

    public static final long commonCompleteSegmentByteCount(@NotNull okio.Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        long size = buffer.size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = buffer.head;
        Intrinsics.checkNotNull(segment);
        Segment segment2 = segment.prev;
        Intrinsics.checkNotNull(segment2);
        int i10 = segment2.limit;
        if (i10 < 8192 && segment2.owner) {
            return size - (i10 - segment2.pos);
        }
        return size;
    }

    @NotNull
    public static final okio.Buffer commonCopy(@NotNull okio.Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        okio.Buffer buffer2 = new okio.Buffer();
        if (buffer.size() == 0) {
            return buffer2;
        }
        Segment segment = buffer.head;
        Intrinsics.checkNotNull(segment);
        Segment sharedCopy = segment.sharedCopy();
        buffer2.head = sharedCopy;
        sharedCopy.prev = sharedCopy;
        sharedCopy.next = sharedCopy;
        for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
            Segment segment3 = sharedCopy.prev;
            Intrinsics.checkNotNull(segment3);
            Intrinsics.checkNotNull(segment2);
            segment3.push(segment2.sharedCopy());
        }
        buffer2.setSize$okio(buffer.size());
        return buffer2;
    }

    @NotNull
    public static final okio.Buffer commonCopyTo(@NotNull okio.Buffer buffer, @NotNull okio.Buffer out, long j10, long j11) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(out, "out");
        SegmentedByteString.checkOffsetAndCount(buffer.size(), j10, j11);
        if (j11 == 0) {
            return buffer;
        }
        out.setSize$okio(out.size() + j11);
        Segment segment = buffer.head;
        while (true) {
            Intrinsics.checkNotNull(segment);
            int i10 = segment.limit;
            int i11 = segment.pos;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= i10 - i11;
            segment = segment.next;
        }
        while (j11 > 0) {
            Intrinsics.checkNotNull(segment);
            Segment sharedCopy = segment.sharedCopy();
            int i12 = sharedCopy.pos + ((int) j10);
            sharedCopy.pos = i12;
            sharedCopy.limit = Math.min(i12 + ((int) j11), sharedCopy.limit);
            Segment segment2 = out.head;
            if (segment2 == null) {
                sharedCopy.prev = sharedCopy;
                sharedCopy.next = sharedCopy;
                out.head = sharedCopy;
            } else {
                Intrinsics.checkNotNull(segment2);
                Segment segment3 = segment2.prev;
                Intrinsics.checkNotNull(segment3);
                segment3.push(sharedCopy);
            }
            j11 -= sharedCopy.limit - sharedCopy.pos;
            segment = segment.next;
            j10 = 0;
        }
        return buffer;
    }

    public static final boolean commonEquals(@NotNull okio.Buffer buffer, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer == obj) {
            return true;
        }
        if (!(obj instanceof okio.Buffer)) {
            return false;
        }
        okio.Buffer buffer2 = (okio.Buffer) obj;
        if (buffer.size() != buffer2.size()) {
            return false;
        }
        if (buffer.size() == 0) {
            return true;
        }
        Segment segment = buffer.head;
        Intrinsics.checkNotNull(segment);
        Segment segment2 = buffer2.head;
        Intrinsics.checkNotNull(segment2);
        int i10 = segment.pos;
        int i11 = segment2.pos;
        long j10 = 0;
        while (j10 < buffer.size()) {
            long min = Math.min(segment.limit - i10, segment2.limit - i11);
            long j11 = 0;
            while (j11 < min) {
                int i12 = i10 + 1;
                int i13 = i11 + 1;
                if (segment.data[i10] != segment2.data[i11]) {
                    return false;
                }
                j11++;
                i10 = i12;
                i11 = i13;
            }
            if (i10 == segment.limit) {
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                i10 = segment.pos;
            }
            if (i11 == segment2.limit) {
                segment2 = segment2.next;
                Intrinsics.checkNotNull(segment2);
                i11 = segment2.pos;
            }
            j10 += min;
        }
        return true;
    }

    public static final long commonExpandBuffer(@NotNull Buffer.UnsafeCursor unsafeCursor, int i10) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        if (i10 > 0) {
            if (i10 <= 8192) {
                okio.Buffer buffer = unsafeCursor.buffer;
                if (buffer != null) {
                    if (unsafeCursor.readWrite) {
                        long size = buffer.size();
                        Segment writableSegment$okio = buffer.writableSegment$okio(i10);
                        int i11 = 8192 - writableSegment$okio.limit;
                        writableSegment$okio.limit = 8192;
                        long j10 = i11;
                        buffer.setSize$okio(size + j10);
                        unsafeCursor.setSegment$okio(writableSegment$okio);
                        unsafeCursor.offset = size;
                        unsafeCursor.data = writableSegment$okio.data;
                        unsafeCursor.start = 8192 - i11;
                        unsafeCursor.end = 8192;
                        return j10;
                    }
                    throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
                }
                throw new IllegalStateException("not attached to a buffer");
            }
            throw new IllegalArgumentException(("minByteCount > Segment.SIZE: " + i10).toString());
        }
        throw new IllegalArgumentException(("minByteCount <= 0: " + i10).toString());
    }

    public static final byte commonGet(@NotNull okio.Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        SegmentedByteString.checkOffsetAndCount(buffer.size(), j10, 1L);
        Segment segment = buffer.head;
        if (segment != null) {
            if (buffer.size() - j10 < j10) {
                long size = buffer.size();
                while (size > j10) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    size -= segment.limit - segment.pos;
                }
                Intrinsics.checkNotNull(segment);
                return segment.data[(int) ((segment.pos + j10) - size)];
            }
            long j11 = 0;
            while (true) {
                long j12 = (segment.limit - segment.pos) + j11;
                if (j12 <= j10) {
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j11 = j12;
                } else {
                    Intrinsics.checkNotNull(segment);
                    return segment.data[(int) ((segment.pos + j10) - j11)];
                }
            }
        } else {
            Intrinsics.checkNotNull(null);
            throw null;
        }
    }

    public static final int commonHashCode(@NotNull okio.Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment segment = buffer.head;
        if (segment == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = segment.limit;
            for (int i12 = segment.pos; i12 < i11; i12++) {
                i10 = (i10 * 31) + segment.data[i12];
            }
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
        } while (segment != buffer.head);
        return i10;
    }

    public static final long commonIndexOf(@NotNull okio.Buffer buffer, byte b10, long j10, long j11) {
        Segment segment;
        int i10;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        long j12 = 0;
        if (0 <= j10 && j10 <= j11) {
            if (j11 > buffer.size()) {
                j11 = buffer.size();
            }
            if (j10 == j11 || (segment = buffer.head) == null) {
                return -1L;
            }
            if (buffer.size() - j10 < j10) {
                j12 = buffer.size();
                while (j12 > j10) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    j12 -= segment.limit - segment.pos;
                }
                while (j12 < j11) {
                    byte[] bArr = segment.data;
                    int min = (int) Math.min(segment.limit, (segment.pos + j11) - j12);
                    i10 = (int) ((segment.pos + j10) - j12);
                    while (i10 < min) {
                        if (bArr[i10] != b10) {
                            i10++;
                        }
                    }
                    j12 += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j10 = j12;
                }
                return -1L;
            }
            while (true) {
                long j13 = (segment.limit - segment.pos) + j12;
                if (j13 > j10) {
                    break;
                }
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j12 = j13;
            }
            while (j12 < j11) {
                byte[] bArr2 = segment.data;
                int min2 = (int) Math.min(segment.limit, (segment.pos + j11) - j12);
                i10 = (int) ((segment.pos + j10) - j12);
                while (i10 < min2) {
                    if (bArr2[i10] != b10) {
                        i10++;
                    }
                }
                j12 += segment.limit - segment.pos;
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j10 = j12;
            }
            return -1L;
            return (i10 - segment.pos) + j12;
        }
        throw new IllegalArgumentException(("size=" + buffer.size() + " fromIndex=" + j10 + " toIndex=" + j11).toString());
    }

    public static final long commonIndexOfElement(@NotNull okio.Buffer buffer, @NotNull ByteString targetBytes, long j10) {
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        long j11 = 0;
        if (j10 >= 0) {
            Segment segment = buffer.head;
            if (segment == null) {
                return -1L;
            }
            if (buffer.size() - j10 < j10) {
                j11 = buffer.size();
                while (j11 > j10) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    j11 -= segment.limit - segment.pos;
                }
                if (targetBytes.size() == 2) {
                    byte b10 = targetBytes.getByte(0);
                    byte b11 = targetBytes.getByte(1);
                    while (j11 < buffer.size()) {
                        byte[] bArr = segment.data;
                        i10 = (int) ((segment.pos + j10) - j11);
                        int i12 = segment.limit;
                        while (i10 < i12) {
                            byte b12 = bArr[i10];
                            if (b12 != b10 && b12 != b11) {
                                i10++;
                            }
                            i11 = segment.pos;
                        }
                        j11 += segment.limit - segment.pos;
                        segment = segment.next;
                        Intrinsics.checkNotNull(segment);
                        j10 = j11;
                    }
                } else {
                    byte[] internalArray$okio = targetBytes.internalArray$okio();
                    while (j11 < buffer.size()) {
                        byte[] bArr2 = segment.data;
                        i10 = (int) ((segment.pos + j10) - j11);
                        int i13 = segment.limit;
                        while (i10 < i13) {
                            byte b13 = bArr2[i10];
                            for (byte b14 : internalArray$okio) {
                                if (b13 == b14) {
                                    i11 = segment.pos;
                                }
                            }
                            i10++;
                        }
                        j11 += segment.limit - segment.pos;
                        segment = segment.next;
                        Intrinsics.checkNotNull(segment);
                        j10 = j11;
                    }
                }
                return -1L;
            }
            while (true) {
                long j12 = (segment.limit - segment.pos) + j11;
                if (j12 > j10) {
                    break;
                }
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j11 = j12;
            }
            if (targetBytes.size() == 2) {
                byte b15 = targetBytes.getByte(0);
                byte b16 = targetBytes.getByte(1);
                while (j11 < buffer.size()) {
                    byte[] bArr3 = segment.data;
                    i10 = (int) ((segment.pos + j10) - j11);
                    int i14 = segment.limit;
                    while (i10 < i14) {
                        byte b17 = bArr3[i10];
                        if (b17 != b15 && b17 != b16) {
                            i10++;
                        }
                        i11 = segment.pos;
                    }
                    j11 += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j10 = j11;
                }
            } else {
                byte[] internalArray$okio2 = targetBytes.internalArray$okio();
                while (j11 < buffer.size()) {
                    byte[] bArr4 = segment.data;
                    i10 = (int) ((segment.pos + j10) - j11);
                    int i15 = segment.limit;
                    while (i10 < i15) {
                        byte b18 = bArr4[i10];
                        for (byte b19 : internalArray$okio2) {
                            if (b18 == b19) {
                                i11 = segment.pos;
                            }
                        }
                        i10++;
                    }
                    j11 += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j10 = j11;
                }
            }
            return -1L;
            return (i10 - i11) + j11;
        }
        throw new IllegalArgumentException(("fromIndex < 0: " + j10).toString());
    }

    public static final int commonNext(@NotNull Buffer.UnsafeCursor unsafeCursor) {
        long j10;
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        long j11 = unsafeCursor.offset;
        okio.Buffer buffer = unsafeCursor.buffer;
        Intrinsics.checkNotNull(buffer);
        if (j11 != buffer.size()) {
            long j12 = unsafeCursor.offset;
            if (j12 == -1) {
                j10 = 0;
            } else {
                j10 = j12 + (unsafeCursor.end - unsafeCursor.start);
            }
            return unsafeCursor.seek(j10);
        }
        throw new IllegalStateException("no more bytes");
    }

    public static final boolean commonRangeEquals(@NotNull okio.Buffer buffer, long j10, @NotNull ByteString bytes, int i10, int i11) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (j10 < 0 || i10 < 0 || i11 < 0 || buffer.size() - j10 < i11 || bytes.size() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (buffer.getByte(i12 + j10) != bytes.getByte(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    public static final int commonRead(@NotNull okio.Buffer buffer, @NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        return buffer.read(sink, 0, sink.length);
    }

    public static final long commonReadAll(@NotNull okio.Buffer buffer, @NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long size = buffer.size();
        if (size > 0) {
            sink.write(buffer, size);
        }
        return size;
    }

    @NotNull
    public static final Buffer.UnsafeCursor commonReadAndWriteUnsafe(@NotNull okio.Buffer buffer, @NotNull Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor resolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(unsafeCursor);
        if (resolveDefaultParameter.buffer == null) {
            resolveDefaultParameter.buffer = buffer;
            resolveDefaultParameter.readWrite = true;
            return resolveDefaultParameter;
        }
        throw new IllegalStateException("already attached to a buffer");
    }

    public static final byte commonReadByte(@NotNull okio.Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() != 0) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int i10 = segment.pos;
            int i11 = segment.limit;
            int i12 = i10 + 1;
            byte b10 = segment.data[i10];
            buffer.setSize$okio(buffer.size() - 1);
            if (i12 == i11) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i12;
            }
            return b10;
        }
        throw new EOFException();
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull okio.Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        return buffer.readByteArray(buffer.size());
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull okio.Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        return buffer.readByteString(buffer.size());
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x00a0, code lost:
        r18.setSize$okio(r18.size() - r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x00a9, code lost:
        if (r2 == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00ab, code lost:
        r14 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x00ad, code lost:
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x00ae, code lost:
        if (r1 >= r14) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x00b8, code lost:
        if (r18.size() == 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x00ba, code lost:
        if (r2 == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x00bc, code lost:
        r1 = "Expected a digit";
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x00bf, code lost:
        r1 = "Expected a digit or '-'";
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x00e4, code lost:
        throw new java.lang.NumberFormatException(r1 + " but was 0x" + okio.SegmentedByteString.toHexString(r18.getByte(0)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x00ea, code lost:
        throw new java.io.EOFException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x00eb, code lost:
        if (r2 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x00ef, code lost:
        return -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:?, code lost:
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long commonReadDecimalLong(@org.jetbrains.annotations.NotNull okio.Buffer r18) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.Buffer.commonReadDecimalLong(okio.Buffer):long");
    }

    public static final void commonReadFully(@NotNull okio.Buffer buffer, @NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i10 = 0;
        while (i10 < sink.length) {
            int read = buffer.read(sink, i10, sink.length - i10);
            if (read == -1) {
                throw new EOFException();
            }
            i10 += read;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00ac A[EDGE_INSN: B:90:0x00ac->B:85:0x00ac ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long commonReadHexadecimalUnsignedLong(@org.jetbrains.annotations.NotNull okio.Buffer r14) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            long r0 = r14.size()
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto Lb6
            r0 = 0
            r1 = r0
            r4 = r2
        L12:
            okio.Segment r6 = r14.head
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            byte[] r7 = r6.data
            int r8 = r6.pos
            int r9 = r6.limit
        L1d:
            if (r8 >= r9) goto L98
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L2c
            r11 = 57
            if (r10 > r11) goto L2c
            int r11 = r10 + (-48)
            goto L41
        L2c:
            r11 = 97
            if (r10 < r11) goto L37
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L37
            int r11 = r10 + (-87)
            goto L41
        L37:
            r11 = 65
            if (r10 < r11) goto L79
            r11 = 70
            if (r10 > r11) goto L79
            int r11 = r10 + (-55)
        L41:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L51
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L1d
        L51:
            okio.Buffer r14 = new okio.Buffer
            r14.<init>()
            okio.Buffer r14 = r14.writeHexadecimalUnsignedLong(r4)
            okio.Buffer r14 = r14.writeByte(r10)
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Number too large: "
            r1.append(r2)
            java.lang.String r14 = r14.readUtf8()
            r1.append(r14)
            java.lang.String r14 = r1.toString()
            r0.<init>(r14)
            throw r0
        L79:
            if (r0 == 0) goto L7d
            r1 = 1
            goto L98
        L7d:
            java.lang.NumberFormatException r14 = new java.lang.NumberFormatException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            r0.append(r1)
            java.lang.String r1 = okio.SegmentedByteString.toHexString(r10)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r14.<init>(r0)
            throw r14
        L98:
            if (r8 != r9) goto La4
            okio.Segment r7 = r6.pop()
            r14.head = r7
            okio.SegmentPool.recycle(r6)
            goto La6
        La4:
            r6.pos = r8
        La6:
            if (r1 != 0) goto Lac
            okio.Segment r6 = r14.head
            if (r6 != 0) goto L12
        Lac:
            long r1 = r14.size()
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.setSize$okio(r1)
            return r4
        Lb6:
            java.io.EOFException r14 = new java.io.EOFException
            r14.<init>()
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.Buffer.commonReadHexadecimalUnsignedLong(okio.Buffer):long");
    }

    public static final int commonReadInt(@NotNull okio.Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() >= 4) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int i10 = segment.pos;
            int i11 = segment.limit;
            if (i11 - i10 < 4) {
                return (buffer.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((buffer.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((buffer.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((buffer.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
            }
            byte[] bArr = segment.data;
            int i12 = ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24);
            int i13 = i10 + 3;
            int i14 = i10 + 4;
            int i15 = (bArr[i13] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | i12 | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
            buffer.setSize$okio(buffer.size() - 4);
            if (i14 == i11) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i14;
            }
            return i15;
        }
        throw new EOFException();
    }

    public static final long commonReadLong(@NotNull okio.Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() >= 8) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int i10 = segment.pos;
            int i11 = segment.limit;
            if (i11 - i10 < 8) {
                return ((buffer.readInt() & 4294967295L) << 32) | (4294967295L & buffer.readInt());
            }
            byte[] bArr = segment.data;
            long j10 = ((bArr[i10] & 255) << 56) | ((bArr[i10 + 1] & 255) << 48) | ((bArr[i10 + 2] & 255) << 40);
            int i12 = i10 + 7;
            int i13 = i10 + 8;
            long j11 = j10 | ((bArr[i10 + 3] & 255) << 32) | ((bArr[i10 + 4] & 255) << 24) | ((bArr[i10 + 5] & 255) << 16) | ((bArr[i10 + 6] & 255) << 8) | (bArr[i12] & 255);
            buffer.setSize$okio(buffer.size() - 8);
            if (i13 == i11) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i13;
            }
            return j11;
        }
        throw new EOFException();
    }

    public static final short commonReadShort(@NotNull okio.Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() >= 2) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int i10 = segment.pos;
            int i11 = segment.limit;
            if (i11 - i10 < 2) {
                return (short) ((buffer.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((buffer.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8));
            }
            byte[] bArr = segment.data;
            int i12 = i10 + 1;
            int i13 = i10 + 2;
            int i14 = (bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
            buffer.setSize$okio(buffer.size() - 2);
            if (i13 == i11) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i13;
            }
            return (short) i14;
        }
        throw new EOFException();
    }

    @NotNull
    public static final Buffer.UnsafeCursor commonReadUnsafe(@NotNull okio.Buffer buffer, @NotNull Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor resolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(unsafeCursor);
        if (resolveDefaultParameter.buffer == null) {
            resolveDefaultParameter.buffer = buffer;
            resolveDefaultParameter.readWrite = false;
            return resolveDefaultParameter;
        }
        throw new IllegalStateException("already attached to a buffer");
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull okio.Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 >= 0 && j10 <= SieveCacheKt.NodeLinkMask) {
            if (buffer.size() >= j10) {
                if (i10 == 0) {
                    return "";
                }
                Segment segment = buffer.head;
                Intrinsics.checkNotNull(segment);
                int i11 = segment.pos;
                if (i11 + j10 > segment.limit) {
                    return _Utf8Kt.commonToUtf8String$default(buffer.readByteArray(j10), 0, 0, 3, null);
                }
                int i12 = (int) j10;
                String commonToUtf8String = _Utf8Kt.commonToUtf8String(segment.data, i11, i11 + i12);
                segment.pos += i12;
                buffer.setSize$okio(buffer.size() - j10);
                if (segment.pos == segment.limit) {
                    buffer.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
                return commonToUtf8String;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(("byteCount: " + j10).toString());
    }

    public static final int commonReadUtf8CodePoint(@NotNull okio.Buffer buffer) {
        int i10;
        int i11;
        int i12;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() != 0) {
            byte b10 = buffer.getByte(0L);
            if ((b10 & ByteCompanionObject.MIN_VALUE) == 0) {
                i10 = b10 & ByteCompanionObject.MAX_VALUE;
                i12 = 0;
                i11 = 1;
            } else if ((b10 & 224) == 192) {
                i10 = b10 & 31;
                i11 = 2;
                i12 = 128;
            } else if ((b10 & 240) == 224) {
                i10 = b10 & 15;
                i11 = 3;
                i12 = 2048;
            } else if ((b10 & 248) == 240) {
                i10 = b10 & 7;
                i11 = 4;
                i12 = 65536;
            } else {
                buffer.skip(1L);
                return 65533;
            }
            long j10 = i11;
            if (buffer.size() >= j10) {
                for (int i13 = 1; i13 < i11; i13++) {
                    long j11 = i13;
                    byte b11 = buffer.getByte(j11);
                    if ((b11 & 192) == 128) {
                        i10 = (i10 << 6) | (b11 & 63);
                    } else {
                        buffer.skip(j11);
                        return 65533;
                    }
                }
                buffer.skip(j10);
                if (i10 > 1114111) {
                    return 65533;
                }
                if ((55296 <= i10 && i10 < 57344) || i10 < i12) {
                    return 65533;
                }
                return i10;
            }
            throw new EOFException("size < " + i11 + ": " + buffer.size() + " (to read code point prefixed 0x" + SegmentedByteString.toHexString(b10) + ')');
        }
        throw new EOFException();
    }

    @Nullable
    public static final String commonReadUtf8Line(@NotNull okio.Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        long indexOf = buffer.indexOf((byte) 10);
        if (indexOf != -1) {
            return readUtf8Line(buffer, indexOf);
        }
        if (buffer.size() != 0) {
            return buffer.readUtf8(buffer.size());
        }
        return null;
    }

    @NotNull
    public static final String commonReadUtf8LineStrict(@NotNull okio.Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j10 >= 0) {
            long j11 = Long.MAX_VALUE;
            if (j10 != Long.MAX_VALUE) {
                j11 = j10 + 1;
            }
            long indexOf = buffer.indexOf((byte) 10, 0L, j11);
            if (indexOf != -1) {
                return readUtf8Line(buffer, indexOf);
            }
            if (j11 < buffer.size() && buffer.getByte(j11 - 1) == 13 && buffer.getByte(j11) == 10) {
                return readUtf8Line(buffer, j11);
            }
            okio.Buffer buffer2 = new okio.Buffer();
            buffer.copyTo(buffer2, 0L, Math.min(32, buffer.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(buffer.size(), j10) + " content=" + buffer2.readByteString().hex() + (char) 8230);
        }
        throw new IllegalArgumentException(("limit < 0: " + j10).toString());
    }

    public static final long commonResizeBuffer(@NotNull Buffer.UnsafeCursor unsafeCursor, long j10) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        okio.Buffer buffer = unsafeCursor.buffer;
        if (buffer != null) {
            if (unsafeCursor.readWrite) {
                long size = buffer.size();
                int i10 = (j10 > size ? 1 : (j10 == size ? 0 : -1));
                if (i10 <= 0) {
                    if (j10 >= 0) {
                        long j11 = size - j10;
                        while (true) {
                            if (j11 <= 0) {
                                break;
                            }
                            Segment segment = buffer.head;
                            Intrinsics.checkNotNull(segment);
                            Segment segment2 = segment.prev;
                            Intrinsics.checkNotNull(segment2);
                            int i11 = segment2.limit;
                            long j12 = i11 - segment2.pos;
                            if (j12 <= j11) {
                                buffer.head = segment2.pop();
                                SegmentPool.recycle(segment2);
                                j11 -= j12;
                            } else {
                                segment2.limit = i11 - ((int) j11);
                                break;
                            }
                        }
                        unsafeCursor.setSegment$okio(null);
                        unsafeCursor.offset = j10;
                        unsafeCursor.data = null;
                        unsafeCursor.start = -1;
                        unsafeCursor.end = -1;
                    } else {
                        throw new IllegalArgumentException(("newSize < 0: " + j10).toString());
                    }
                } else if (i10 > 0) {
                    long j13 = j10 - size;
                    boolean z10 = true;
                    while (j13 > 0) {
                        Segment writableSegment$okio = buffer.writableSegment$okio(1);
                        int min = (int) Math.min(j13, 8192 - writableSegment$okio.limit);
                        writableSegment$okio.limit += min;
                        j13 -= min;
                        if (z10) {
                            unsafeCursor.setSegment$okio(writableSegment$okio);
                            unsafeCursor.offset = size;
                            unsafeCursor.data = writableSegment$okio.data;
                            int i12 = writableSegment$okio.limit;
                            unsafeCursor.start = i12 - min;
                            unsafeCursor.end = i12;
                            z10 = false;
                        }
                    }
                }
                buffer.setSize$okio(j10);
                return size;
            }
            throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
        }
        throw new IllegalStateException("not attached to a buffer");
    }

    public static final int commonSeek(@NotNull Buffer.UnsafeCursor unsafeCursor, long j10) {
        Segment segment;
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        okio.Buffer buffer = unsafeCursor.buffer;
        if (buffer != null) {
            int i10 = (j10 > (-1L) ? 1 : (j10 == (-1L) ? 0 : -1));
            if (i10 >= 0 && j10 <= buffer.size()) {
                if (i10 != 0 && j10 != buffer.size()) {
                    long size = buffer.size();
                    Segment segment2 = buffer.head;
                    long j11 = 0;
                    if (unsafeCursor.getSegment$okio() != null) {
                        long j12 = unsafeCursor.offset;
                        int i11 = unsafeCursor.start;
                        Segment segment$okio = unsafeCursor.getSegment$okio();
                        Intrinsics.checkNotNull(segment$okio);
                        long j13 = j12 - (i11 - segment$okio.pos);
                        if (j13 > j10) {
                            segment = segment2;
                            segment2 = unsafeCursor.getSegment$okio();
                            size = j13;
                        } else {
                            segment = unsafeCursor.getSegment$okio();
                            j11 = j13;
                        }
                    } else {
                        segment = segment2;
                    }
                    if (size - j10 > j10 - j11) {
                        while (true) {
                            Intrinsics.checkNotNull(segment);
                            int i12 = segment.limit;
                            int i13 = segment.pos;
                            if (j10 < (i12 - i13) + j11) {
                                break;
                            }
                            j11 += i12 - i13;
                            segment = segment.next;
                        }
                    } else {
                        while (size > j10) {
                            Intrinsics.checkNotNull(segment2);
                            segment2 = segment2.prev;
                            Intrinsics.checkNotNull(segment2);
                            size -= segment2.limit - segment2.pos;
                        }
                        j11 = size;
                        segment = segment2;
                    }
                    if (unsafeCursor.readWrite) {
                        Intrinsics.checkNotNull(segment);
                        if (segment.shared) {
                            Segment unsharedCopy = segment.unsharedCopy();
                            if (buffer.head == segment) {
                                buffer.head = unsharedCopy;
                            }
                            segment = segment.push(unsharedCopy);
                            Segment segment3 = segment.prev;
                            Intrinsics.checkNotNull(segment3);
                            segment3.pop();
                        }
                    }
                    unsafeCursor.setSegment$okio(segment);
                    unsafeCursor.offset = j10;
                    Intrinsics.checkNotNull(segment);
                    unsafeCursor.data = segment.data;
                    int i14 = segment.pos + ((int) (j10 - j11));
                    unsafeCursor.start = i14;
                    int i15 = segment.limit;
                    unsafeCursor.end = i15;
                    return i15 - i14;
                }
                unsafeCursor.setSegment$okio(null);
                unsafeCursor.offset = j10;
                unsafeCursor.data = null;
                unsafeCursor.start = -1;
                unsafeCursor.end = -1;
                return -1;
            }
            throw new ArrayIndexOutOfBoundsException("offset=" + j10 + " > size=" + buffer.size());
        }
        throw new IllegalStateException("not attached to a buffer");
    }

    public static final int commonSelect(@NotNull okio.Buffer buffer, @NotNull Options options) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        int selectPrefix$default = selectPrefix$default(buffer, options, false, 2, null);
        if (selectPrefix$default == -1) {
            return -1;
        }
        buffer.skip(options.getByteStrings$okio()[selectPrefix$default].size());
        return selectPrefix$default;
    }

    public static final void commonSkip(@NotNull okio.Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        while (j10 > 0) {
            Segment segment = buffer.head;
            if (segment != null) {
                int min = (int) Math.min(j10, segment.limit - segment.pos);
                long j11 = min;
                buffer.setSize$okio(buffer.size() - j11);
                j10 -= j11;
                int i10 = segment.pos + min;
                segment.pos = i10;
                if (i10 == segment.limit) {
                    buffer.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @NotNull
    public static final ByteString commonSnapshot(@NotNull okio.Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() <= SieveCacheKt.NodeLinkMask) {
            return buffer.snapshot((int) buffer.size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + buffer.size()).toString());
    }

    @NotNull
    public static final Segment commonWritableSegment(@NotNull okio.Buffer buffer, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (i10 >= 1 && i10 <= 8192) {
            Segment segment = buffer.head;
            if (segment == null) {
                Segment take = SegmentPool.take();
                buffer.head = take;
                take.prev = take;
                take.next = take;
                return take;
            }
            Intrinsics.checkNotNull(segment);
            Segment segment2 = segment.prev;
            Intrinsics.checkNotNull(segment2);
            if (segment2.limit + i10 > 8192 || !segment2.owner) {
                return segment2.push(SegmentPool.take());
            }
            return segment2;
        }
        throw new IllegalArgumentException("unexpected capacity");
    }

    @NotNull
    public static final okio.Buffer commonWrite(@NotNull okio.Buffer buffer, @NotNull ByteString byteString, int i10, int i11) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(buffer, i10, i11);
        return buffer;
    }

    public static /* synthetic */ okio.Buffer commonWrite$default(okio.Buffer buffer, ByteString byteString, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = byteString.size();
        }
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(buffer, i10, i11);
        return buffer;
    }

    public static final long commonWriteAll(@NotNull okio.Buffer buffer, @NotNull Source source) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        long j10 = 0;
        while (true) {
            long read = source.read(buffer, 8192L);
            if (read != -1) {
                j10 += read;
            } else {
                return j10;
            }
        }
    }

    @NotNull
    public static final okio.Buffer commonWriteByte(@NotNull okio.Buffer buffer, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment writableSegment$okio = buffer.writableSegment$okio(1);
        byte[] bArr = writableSegment$okio.data;
        int i11 = writableSegment$okio.limit;
        writableSegment$okio.limit = i11 + 1;
        bArr[i11] = (byte) i10;
        buffer.setSize$okio(buffer.size() + 1);
        return buffer;
    }

    @NotNull
    public static final okio.Buffer commonWriteDecimalLong(@NotNull okio.Buffer buffer, long j10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 == 0) {
            return buffer.writeByte(48);
        }
        int i11 = 1;
        if (i10 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return buffer.writeUtf8("-9223372036854775808");
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (j10 < 100000000) {
            if (j10 < 10000) {
                if (j10 < 100) {
                    if (j10 >= 10) {
                        i11 = 2;
                    }
                } else if (j10 < 1000) {
                    i11 = 3;
                } else {
                    i11 = 4;
                }
            } else if (j10 < 1000000) {
                if (j10 < 100000) {
                    i11 = 5;
                } else {
                    i11 = 6;
                }
            } else if (j10 < 10000000) {
                i11 = 7;
            } else {
                i11 = 8;
            }
        } else if (j10 < 1000000000000L) {
            if (j10 < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                if (j10 < 1000000000) {
                    i11 = 9;
                } else {
                    i11 = 10;
                }
            } else if (j10 < 100000000000L) {
                i11 = 11;
            } else {
                i11 = 12;
            }
        } else if (j10 < 1000000000000000L) {
            if (j10 < 10000000000000L) {
                i11 = 13;
            } else if (j10 < 100000000000000L) {
                i11 = 14;
            } else {
                i11 = 15;
            }
        } else if (j10 < 100000000000000000L) {
            if (j10 < 10000000000000000L) {
                i11 = 16;
            } else {
                i11 = 17;
            }
        } else if (j10 < 1000000000000000000L) {
            i11 = 18;
        } else {
            i11 = 19;
        }
        if (z10) {
            i11++;
        }
        Segment writableSegment$okio = buffer.writableSegment$okio(i11);
        byte[] bArr = writableSegment$okio.data;
        int i12 = writableSegment$okio.limit + i11;
        while (j10 != 0) {
            long j11 = 10;
            i12--;
            bArr[i12] = getHEX_DIGIT_BYTES()[(int) (j10 % j11)];
            j10 /= j11;
        }
        if (z10) {
            bArr[i12 - 1] = 45;
        }
        writableSegment$okio.limit += i11;
        buffer.setSize$okio(buffer.size() + i11);
        return buffer;
    }

    @NotNull
    public static final okio.Buffer commonWriteHexadecimalUnsignedLong(@NotNull okio.Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j10 == 0) {
            return buffer.writeByte(48);
        }
        long j11 = (j10 >>> 1) | j10;
        long j12 = j11 | (j11 >>> 2);
        long j13 = j12 | (j12 >>> 4);
        long j14 = j13 | (j13 >>> 8);
        long j15 = j14 | (j14 >>> 16);
        long j16 = j15 | (j15 >>> 32);
        long j17 = j16 - ((j16 >>> 1) & 6148914691236517205L);
        long j18 = ((j17 >>> 2) & 3689348814741910323L) + (j17 & 3689348814741910323L);
        long j19 = ((j18 >>> 4) + j18) & 1085102592571150095L;
        long j20 = j19 + (j19 >>> 8);
        long j21 = j20 + (j20 >>> 16);
        int i10 = (int) ((((j21 & 63) + ((j21 >>> 32) & 63)) + 3) / 4);
        Segment writableSegment$okio = buffer.writableSegment$okio(i10);
        byte[] bArr = writableSegment$okio.data;
        int i11 = writableSegment$okio.limit;
        for (int i12 = (i11 + i10) - 1; i12 >= i11; i12--) {
            bArr[i12] = getHEX_DIGIT_BYTES()[(int) (15 & j10)];
            j10 >>>= 4;
        }
        writableSegment$okio.limit += i10;
        buffer.setSize$okio(buffer.size() + i10);
        return buffer;
    }

    @NotNull
    public static final okio.Buffer commonWriteInt(@NotNull okio.Buffer buffer, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment writableSegment$okio = buffer.writableSegment$okio(4);
        byte[] bArr = writableSegment$okio.data;
        int i11 = writableSegment$okio.limit;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        writableSegment$okio.limit = i11 + 4;
        buffer.setSize$okio(buffer.size() + 4);
        return buffer;
    }

    @NotNull
    public static final okio.Buffer commonWriteLong(@NotNull okio.Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment writableSegment$okio = buffer.writableSegment$okio(8);
        byte[] bArr = writableSegment$okio.data;
        int i10 = writableSegment$okio.limit;
        bArr[i10] = (byte) ((j10 >>> 56) & 255);
        bArr[i10 + 1] = (byte) ((j10 >>> 48) & 255);
        bArr[i10 + 2] = (byte) ((j10 >>> 40) & 255);
        bArr[i10 + 3] = (byte) ((j10 >>> 32) & 255);
        bArr[i10 + 4] = (byte) ((j10 >>> 24) & 255);
        bArr[i10 + 5] = (byte) ((j10 >>> 16) & 255);
        bArr[i10 + 6] = (byte) ((j10 >>> 8) & 255);
        bArr[i10 + 7] = (byte) (j10 & 255);
        writableSegment$okio.limit = i10 + 8;
        buffer.setSize$okio(buffer.size() + 8);
        return buffer;
    }

    @NotNull
    public static final okio.Buffer commonWriteShort(@NotNull okio.Buffer buffer, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment writableSegment$okio = buffer.writableSegment$okio(2);
        byte[] bArr = writableSegment$okio.data;
        int i11 = writableSegment$okio.limit;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
        writableSegment$okio.limit = i11 + 2;
        buffer.setSize$okio(buffer.size() + 2);
        return buffer;
    }

    @NotNull
    public static final okio.Buffer commonWriteUtf8(@NotNull okio.Buffer buffer, @NotNull String string, int i10, int i11) {
        char charAt;
        char c10;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(string, "string");
        if (i10 >= 0) {
            if (i11 >= i10) {
                if (i11 <= string.length()) {
                    while (i10 < i11) {
                        char charAt2 = string.charAt(i10);
                        if (charAt2 < 128) {
                            Segment writableSegment$okio = buffer.writableSegment$okio(1);
                            byte[] bArr = writableSegment$okio.data;
                            int i12 = writableSegment$okio.limit - i10;
                            int min = Math.min(i11, 8192 - i12);
                            int i13 = i10 + 1;
                            bArr[i10 + i12] = (byte) charAt2;
                            while (true) {
                                i10 = i13;
                                if (i10 >= min || (charAt = string.charAt(i10)) >= 128) {
                                    break;
                                }
                                i13 = i10 + 1;
                                bArr[i10 + i12] = (byte) charAt;
                            }
                            int i14 = writableSegment$okio.limit;
                            int i15 = (i12 + i10) - i14;
                            writableSegment$okio.limit = i14 + i15;
                            buffer.setSize$okio(buffer.size() + i15);
                        } else {
                            if (charAt2 < 2048) {
                                Segment writableSegment$okio2 = buffer.writableSegment$okio(2);
                                byte[] bArr2 = writableSegment$okio2.data;
                                int i16 = writableSegment$okio2.limit;
                                bArr2[i16] = (byte) ((charAt2 >> 6) | 192);
                                bArr2[i16 + 1] = (byte) ((charAt2 & '?') | 128);
                                writableSegment$okio2.limit = i16 + 2;
                                buffer.setSize$okio(buffer.size() + 2);
                            } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                                int i17 = i10 + 1;
                                if (i17 < i11) {
                                    c10 = string.charAt(i17);
                                } else {
                                    c10 = 0;
                                }
                                if (charAt2 <= 56319 && 56320 <= c10 && c10 < 57344) {
                                    int i18 = (((charAt2 & 1023) << 10) | (c10 & 1023)) + 65536;
                                    Segment writableSegment$okio3 = buffer.writableSegment$okio(4);
                                    byte[] bArr3 = writableSegment$okio3.data;
                                    int i19 = writableSegment$okio3.limit;
                                    bArr3[i19] = (byte) ((i18 >> 18) | 240);
                                    bArr3[i19 + 1] = (byte) (((i18 >> 12) & 63) | 128);
                                    bArr3[i19 + 2] = (byte) (((i18 >> 6) & 63) | 128);
                                    bArr3[i19 + 3] = (byte) ((i18 & 63) | 128);
                                    writableSegment$okio3.limit = i19 + 4;
                                    buffer.setSize$okio(buffer.size() + 4);
                                    i10 += 2;
                                } else {
                                    buffer.writeByte(63);
                                    i10 = i17;
                                }
                            } else {
                                Segment writableSegment$okio4 = buffer.writableSegment$okio(3);
                                byte[] bArr4 = writableSegment$okio4.data;
                                int i20 = writableSegment$okio4.limit;
                                bArr4[i20] = (byte) ((charAt2 >> '\f') | 224);
                                bArr4[i20 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                                bArr4[i20 + 2] = (byte) ((charAt2 & '?') | 128);
                                writableSegment$okio4.limit = i20 + 3;
                                buffer.setSize$okio(buffer.size() + 3);
                            }
                            i10++;
                        }
                    }
                    return buffer;
                }
                throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + string.length()).toString());
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
        }
        throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
    }

    @NotNull
    public static final okio.Buffer commonWriteUtf8CodePoint(@NotNull okio.Buffer buffer, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (i10 < 128) {
            buffer.writeByte(i10);
        } else if (i10 < 2048) {
            Segment writableSegment$okio = buffer.writableSegment$okio(2);
            byte[] bArr = writableSegment$okio.data;
            int i11 = writableSegment$okio.limit;
            bArr[i11] = (byte) ((i10 >> 6) | 192);
            bArr[i11 + 1] = (byte) ((i10 & 63) | 128);
            writableSegment$okio.limit = i11 + 2;
            buffer.setSize$okio(buffer.size() + 2);
        } else if (55296 <= i10 && i10 < 57344) {
            buffer.writeByte(63);
        } else if (i10 < 65536) {
            Segment writableSegment$okio2 = buffer.writableSegment$okio(3);
            byte[] bArr2 = writableSegment$okio2.data;
            int i12 = writableSegment$okio2.limit;
            bArr2[i12] = (byte) ((i10 >> 12) | 224);
            bArr2[i12 + 1] = (byte) (((i10 >> 6) & 63) | 128);
            bArr2[i12 + 2] = (byte) ((i10 & 63) | 128);
            writableSegment$okio2.limit = i12 + 3;
            buffer.setSize$okio(buffer.size() + 3);
        } else if (i10 <= 1114111) {
            Segment writableSegment$okio3 = buffer.writableSegment$okio(4);
            byte[] bArr3 = writableSegment$okio3.data;
            int i13 = writableSegment$okio3.limit;
            bArr3[i13] = (byte) ((i10 >> 18) | 240);
            bArr3[i13 + 1] = (byte) (((i10 >> 12) & 63) | 128);
            bArr3[i13 + 2] = (byte) (((i10 >> 6) & 63) | 128);
            bArr3[i13 + 3] = (byte) ((i10 & 63) | 128);
            writableSegment$okio3.limit = i13 + 4;
            buffer.setSize$okio(buffer.size() + 4);
        } else {
            throw new IllegalArgumentException("Unexpected code point: 0x" + SegmentedByteString.toHexString(i10));
        }
        return buffer;
    }

    @NotNull
    public static final byte[] getHEX_DIGIT_BYTES() {
        return HEX_DIGIT_BYTES;
    }

    public static final boolean rangeEquals(@NotNull Segment segment, int i10, @NotNull byte[] bytes, int i11, int i12) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        int i13 = segment.limit;
        byte[] bArr = segment.data;
        while (i11 < i12) {
            if (i10 == i13) {
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                byte[] bArr2 = segment.data;
                bArr = bArr2;
                i10 = segment.pos;
                i13 = segment.limit;
            }
            if (bArr[i10] != bytes[i11]) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    @NotNull
    public static final String readUtf8Line(@NotNull okio.Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (buffer.getByte(j11) == 13) {
                String readUtf8 = buffer.readUtf8(j11);
                buffer.skip(2L);
                return readUtf8;
            }
        }
        String readUtf82 = buffer.readUtf8(j10);
        buffer.skip(1L);
        return readUtf82;
    }

    public static final <T> T seek(@NotNull okio.Buffer buffer, long j10, @NotNull Function2<? super Segment, ? super Long, ? extends T> lambda) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(lambda, "lambda");
        Segment segment = buffer.head;
        if (segment == null) {
            return lambda.invoke(null, -1L);
        }
        if (buffer.size() - j10 < j10) {
            long size = buffer.size();
            while (size > j10) {
                segment = segment.prev;
                Intrinsics.checkNotNull(segment);
                size -= segment.limit - segment.pos;
            }
            return lambda.invoke(segment, Long.valueOf(size));
        }
        long j11 = 0;
        while (true) {
            long j12 = (segment.limit - segment.pos) + j11;
            if (j12 <= j10) {
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j11 = j12;
            } else {
                return lambda.invoke(segment, Long.valueOf(j11));
            }
        }
    }

    public static final int selectPrefix(@NotNull okio.Buffer buffer, @NotNull Options options, boolean z10) {
        int i10;
        int i11;
        boolean z11;
        Segment segment;
        int i12;
        int i13;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        Segment segment2 = buffer.head;
        if (segment2 == null) {
            if (z10) {
                return -2;
            }
            return -1;
        }
        byte[] bArr = segment2.data;
        int i14 = segment2.pos;
        int i15 = segment2.limit;
        int[] trie$okio = options.getTrie$okio();
        Segment segment3 = segment2;
        int i16 = -1;
        int i17 = 0;
        loop0: while (true) {
            int i18 = i17 + 1;
            int i19 = trie$okio[i17];
            int i20 = i17 + 2;
            int i21 = trie$okio[i18];
            if (i21 != -1) {
                i16 = i21;
            }
            if (segment3 == null) {
                break;
            }
            if (i19 < 0) {
                int i22 = i20 + (i19 * (-1));
                while (true) {
                    int i23 = i14 + 1;
                    int i24 = i20 + 1;
                    if ((bArr[i14] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) != trie$okio[i20]) {
                        return i16;
                    }
                    if (i24 == i22) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (i23 == i15) {
                        Intrinsics.checkNotNull(segment3);
                        Segment segment4 = segment3.next;
                        Intrinsics.checkNotNull(segment4);
                        i13 = segment4.pos;
                        byte[] bArr2 = segment4.data;
                        i12 = segment4.limit;
                        if (segment4 == segment2) {
                            if (!z11) {
                                break loop0;
                            }
                            bArr = bArr2;
                            segment = null;
                        } else {
                            segment = segment4;
                            bArr = bArr2;
                        }
                    } else {
                        segment = segment3;
                        i12 = i15;
                        i13 = i23;
                    }
                    if (z11) {
                        i11 = trie$okio[i24];
                        i10 = i13;
                        i15 = i12;
                        segment3 = segment;
                        break;
                    }
                    i14 = i13;
                    i15 = i12;
                    segment3 = segment;
                    i20 = i24;
                }
            } else {
                i10 = i14 + 1;
                int i25 = bArr[i14] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                int i26 = i20 + i19;
                while (i20 != i26) {
                    if (i25 == trie$okio[i20]) {
                        i11 = trie$okio[i20 + i19];
                        if (i10 == i15) {
                            segment3 = segment3.next;
                            Intrinsics.checkNotNull(segment3);
                            i10 = segment3.pos;
                            bArr = segment3.data;
                            i15 = segment3.limit;
                            if (segment3 == segment2) {
                                segment3 = null;
                            }
                        }
                    } else {
                        i20++;
                    }
                }
                return i16;
            }
            if (i11 >= 0) {
                return i11;
            }
            i17 = -i11;
            i14 = i10;
        }
        if (z10) {
            return -2;
        }
        return i16;
    }

    public static /* synthetic */ int selectPrefix$default(okio.Buffer buffer, Options options, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return selectPrefix(buffer, options, z10);
    }

    public static final int commonRead(@NotNull okio.Buffer buffer, @NotNull byte[] sink, int i10, int i11) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        SegmentedByteString.checkOffsetAndCount(sink.length, i10, i11);
        Segment segment = buffer.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i11, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i12 = segment.pos;
        n.h(bArr, sink, i10, i12, i12 + min);
        segment.pos += min;
        buffer.setSize$okio(buffer.size() - min);
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull okio.Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j10 >= 0 && j10 <= SieveCacheKt.NodeLinkMask) {
            if (buffer.size() >= j10) {
                byte[] bArr = new byte[(int) j10];
                buffer.readFully(bArr);
                return bArr;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(("byteCount: " + j10).toString());
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull okio.Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j10 >= 0 && j10 <= SieveCacheKt.NodeLinkMask) {
            if (buffer.size() >= j10) {
                if (j10 >= 4096) {
                    ByteString snapshot = buffer.snapshot((int) j10);
                    buffer.skip(j10);
                    return snapshot;
                }
                return new ByteString(buffer.readByteArray(j10));
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(("byteCount: " + j10).toString());
    }

    @NotNull
    public static final okio.Buffer commonWrite(@NotNull okio.Buffer buffer, @NotNull byte[] source) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        return buffer.write(source, 0, source.length);
    }

    @NotNull
    public static final okio.Buffer commonWrite(@NotNull okio.Buffer buffer, @NotNull byte[] source, int i10, int i11) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        long j10 = i11;
        SegmentedByteString.checkOffsetAndCount(source.length, i10, j10);
        int i12 = i11 + i10;
        while (i10 < i12) {
            Segment writableSegment$okio = buffer.writableSegment$okio(1);
            int min = Math.min(i12 - i10, 8192 - writableSegment$okio.limit);
            int i13 = i10 + min;
            n.h(source, writableSegment$okio.data, writableSegment$okio.limit, i10, i13);
            writableSegment$okio.limit += min;
            i10 = i13;
        }
        buffer.setSize$okio(buffer.size() + j10);
        return buffer;
    }

    public static final void commonReadFully(@NotNull okio.Buffer buffer, @NotNull okio.Buffer sink, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (buffer.size() >= j10) {
            sink.write(buffer, j10);
        } else {
            sink.write(buffer, buffer.size());
            throw new EOFException();
        }
    }

    @NotNull
    public static final ByteString commonSnapshot(@NotNull okio.Buffer buffer, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (i10 == 0) {
            return ByteString.EMPTY;
        }
        SegmentedByteString.checkOffsetAndCount(buffer.size(), 0L, i10);
        Segment segment = buffer.head;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            Intrinsics.checkNotNull(segment);
            int i14 = segment.limit;
            int i15 = segment.pos;
            if (i14 != i15) {
                i12 += i14 - i15;
                i13++;
                segment = segment.next;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i13];
        int[] iArr = new int[i13 * 2];
        Segment segment2 = buffer.head;
        int i16 = 0;
        while (i11 < i10) {
            Intrinsics.checkNotNull(segment2);
            bArr[i16] = segment2.data;
            i11 += segment2.limit - segment2.pos;
            iArr[i16] = Math.min(i11, i10);
            iArr[i16 + i13] = segment2.pos;
            segment2.shared = true;
            i16++;
            segment2 = segment2.next;
        }
        return new C3331SegmentedByteString(bArr, iArr);
    }

    @NotNull
    public static final okio.Buffer commonWrite(@NotNull okio.Buffer buffer, @NotNull Source source, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        while (j10 > 0) {
            long read = source.read(buffer, j10);
            if (read == -1) {
                throw new EOFException();
            }
            j10 -= read;
        }
        return buffer;
    }

    public static final long commonRead(@NotNull okio.Buffer buffer, @NotNull okio.Buffer sink, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j10 >= 0) {
            if (buffer.size() == 0) {
                return -1L;
            }
            if (j10 > buffer.size()) {
                j10 = buffer.size();
            }
            sink.write(buffer, j10);
            return j10;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    public static final void commonWrite(@NotNull okio.Buffer buffer, @NotNull okio.Buffer source, long j10) {
        Segment segment;
        Segment segment2;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        if (source != buffer) {
            SegmentedByteString.checkOffsetAndCount(source.size(), 0L, j10);
            while (j10 > 0) {
                Segment segment3 = source.head;
                Intrinsics.checkNotNull(segment3);
                int i10 = segment3.limit;
                Intrinsics.checkNotNull(source.head);
                if (j10 < i10 - segment.pos) {
                    Segment segment4 = buffer.head;
                    if (segment4 != null) {
                        Intrinsics.checkNotNull(segment4);
                        segment2 = segment4.prev;
                    } else {
                        segment2 = null;
                    }
                    if (segment2 != null && segment2.owner) {
                        if ((segment2.limit + j10) - (segment2.shared ? 0 : segment2.pos) <= 8192) {
                            Segment segment5 = source.head;
                            Intrinsics.checkNotNull(segment5);
                            segment5.writeTo(segment2, (int) j10);
                            source.setSize$okio(source.size() - j10);
                            buffer.setSize$okio(buffer.size() + j10);
                            return;
                        }
                    }
                    Segment segment6 = source.head;
                    Intrinsics.checkNotNull(segment6);
                    source.head = segment6.split((int) j10);
                }
                Segment segment7 = source.head;
                Intrinsics.checkNotNull(segment7);
                long j11 = segment7.limit - segment7.pos;
                source.head = segment7.pop();
                Segment segment8 = buffer.head;
                if (segment8 == null) {
                    buffer.head = segment7;
                    segment7.prev = segment7;
                    segment7.next = segment7;
                } else {
                    Intrinsics.checkNotNull(segment8);
                    Segment segment9 = segment8.prev;
                    Intrinsics.checkNotNull(segment9);
                    segment9.push(segment7).compact();
                }
                source.setSize$okio(source.size() - j11);
                buffer.setSize$okio(buffer.size() + j11);
                j10 -= j11;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    public static /* synthetic */ void getHEX_DIGIT_BYTES$annotations() {
    }

    public static final long commonIndexOf(@NotNull okio.Buffer buffer, @NotNull ByteString bytes, long j10) {
        long j11;
        int i10;
        long j12 = j10;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (bytes.size() > 0) {
            long j13 = 0;
            if (j12 >= 0) {
                Segment segment = buffer.head;
                if (segment == null) {
                    return -1L;
                }
                if (buffer.size() - j12 < j12) {
                    j11 = buffer.size();
                    while (j11 > j12) {
                        segment = segment.prev;
                        Intrinsics.checkNotNull(segment);
                        j11 -= segment.limit - segment.pos;
                    }
                    byte[] internalArray$okio = bytes.internalArray$okio();
                    byte b10 = internalArray$okio[0];
                    int size = bytes.size();
                    long size2 = (buffer.size() - size) + 1;
                    while (j11 < size2) {
                        byte[] bArr = segment.data;
                        int min = (int) Math.min(segment.limit, (segment.pos + size2) - j11);
                        i10 = (int) ((segment.pos + j12) - j11);
                        while (i10 < min) {
                            if (bArr[i10] != b10 || !rangeEquals(segment, i10 + 1, internalArray$okio, 1, size)) {
                                i10++;
                            }
                        }
                        j11 += segment.limit - segment.pos;
                        segment = segment.next;
                        Intrinsics.checkNotNull(segment);
                        j12 = j11;
                    }
                    return -1L;
                }
                while (true) {
                    long j14 = (segment.limit - segment.pos) + j13;
                    if (j14 > j12) {
                        break;
                    }
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j13 = j14;
                }
                byte[] internalArray$okio2 = bytes.internalArray$okio();
                byte b11 = internalArray$okio2[0];
                int size3 = bytes.size();
                long size4 = (buffer.size() - size3) + 1;
                j11 = j13;
                while (j11 < size4) {
                    byte[] bArr2 = segment.data;
                    long j15 = size4;
                    int min2 = (int) Math.min(segment.limit, (segment.pos + size4) - j11);
                    i10 = (int) ((segment.pos + j12) - j11);
                    while (i10 < min2) {
                        if (bArr2[i10] == b11 && rangeEquals(segment, i10 + 1, internalArray$okio2, 1, size3)) {
                        }
                        i10++;
                    }
                    j11 += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    size4 = j15;
                    j12 = j11;
                }
                return -1L;
                return (i10 - segment.pos) + j11;
            }
            throw new IllegalArgumentException(("fromIndex < 0: " + j12).toString());
        }
        throw new IllegalArgumentException("bytes is empty");
    }
}
