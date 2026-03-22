package okio;

import androidx.collection.SieveCacheKt;
import com.applovin.shadow.okhttp3.internal.connection.RealConnection;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Buffer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 Buffer.kt\nokio/internal/-Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,641:1\n89#2:642\n86#2:675\n86#2:677\n74#2:737\n74#2:763\n83#2:802\n77#2:813\n89#2:1003\n74#2:1018\n86#2:1122\n89#2:1615\n244#3,32:643\n279#3,10:678\n292#3,18:688\n414#3,2:706\n112#3:708\n416#3:709\n114#3,18:710\n313#3,9:728\n322#3,15:738\n340#3,10:753\n350#3,3:764\n348#3,25:767\n376#3,10:792\n386#3:803\n384#3,9:804\n393#3,7:814\n391#3,20:821\n682#3,60:841\n745#3,56:901\n803#3:957\n806#3:958\n807#3,6:960\n817#3,7:966\n827#3,6:973\n835#3,5:979\n867#3,6:984\n877#3:990\n878#3,11:992\n889#3,5:1004\n898#3,9:1009\n908#3,61:1019\n633#3:1080\n636#3:1081\n637#3,5:1083\n644#3:1088\n647#3,7:1089\n656#3,20:1096\n420#3:1116\n423#3,5:1117\n428#3,10:1123\n439#3,7:1133\n444#3,2:1140\n973#3:1142\n974#3,87:1144\n1064#3,48:1231\n603#3:1279\n610#3,21:1280\n1115#3,7:1301\n1125#3,7:1308\n1135#3,4:1315\n1142#3,8:1319\n1153#3,10:1327\n1166#3,14:1337\n449#3,91:1351\n543#3,40:1442\n586#3:1482\n588#3,13:1484\n1183#3:1497\n1234#3:1498\n1235#3,39:1500\n1276#3,2:1539\n1278#3,4:1542\n1285#3,3:1546\n1289#3,4:1550\n112#3:1554\n1293#3,22:1555\n114#3,18:1577\n1319#3,2:1595\n1321#3,3:1598\n112#3:1601\n1324#3,13:1602\n1337#3,13:1616\n114#3,18:1629\n1354#3,2:1647\n1357#3:1650\n112#3:1651\n1358#3,50:1652\n114#3,18:1702\n1417#3,14:1720\n1434#3,32:1734\n1469#3,12:1766\n1484#3,18:1778\n1506#3:1796\n1507#3:1798\n1512#3,34:1799\n1#4:676\n1#4:959\n1#4:991\n1#4:1082\n1#4:1143\n1#4:1483\n1#4:1499\n1#4:1541\n1#4:1549\n1#4:1597\n1#4:1649\n1#4:1797\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n167#1:642\n197#1:675\n235#1:677\n261#1:737\n264#1:763\n267#1:802\n267#1:813\n335#1:1003\n338#1:1018\n374#1:1122\n483#1:1615\n181#1:643,32\n252#1:678,10\n255#1:688,18\n258#1:706,2\n258#1:708\n258#1:709\n258#1:710,18\n261#1:728,9\n261#1:738,15\n264#1:753,10\n264#1:764,3\n264#1:767,25\n267#1:792,10\n267#1:803\n267#1:804,9\n267#1:814,7\n267#1:821,20\n279#1:841,60\n282#1:901,56\n284#1:957\n287#1:958\n287#1:960,6\n289#1:966,7\n292#1:973,6\n295#1:979,5\n329#1:984,6\n335#1:990\n335#1:992,11\n335#1:1004,5\n338#1:1009,9\n338#1:1019,61\n340#1:1080\n343#1:1081\n343#1:1083,5\n345#1:1088\n348#1:1089,7\n351#1:1096,20\n371#1:1116\n374#1:1117,5\n374#1:1123,10\n376#1:1133,7\n379#1:1140,2\n384#1:1142\n384#1:1144,87\n387#1:1231,48\n410#1:1279\n416#1:1280,21\n437#1:1301,7\n441#1:1308,7\n443#1:1315,4\n445#1:1319,8\n449#1:1327,10\n453#1:1337,14\n457#1:1351,91\n460#1:1442,40\n463#1:1482\n463#1:1484,13\n465#1:1497\n465#1:1498\n465#1:1500,39\n467#1:1539,2\n467#1:1542,4\n477#1:1546,3\n477#1:1550,4\n477#1:1554\n477#1:1555,22\n477#1:1577,18\n483#1:1595,2\n483#1:1598,3\n483#1:1601\n483#1:1602,13\n483#1:1616,13\n483#1:1629,18\n488#1:1647,2\n488#1:1650\n488#1:1651\n488#1:1652,50\n488#1:1702,18\n498#1:1720,14\n568#1:1734,32\n570#1:1766,12\n578#1:1778,18\n586#1:1796\n586#1:1798\n588#1:1799,34\n287#1:959\n335#1:991\n343#1:1082\n384#1:1143\n463#1:1483\n465#1:1499\n467#1:1541\n477#1:1549\n483#1:1597\n488#1:1649\n586#1:1797\n*E\n"})
/* loaded from: classes8.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {
    @Nullable
    public Segment head;
    private long size;

    /* compiled from: Buffer.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 Buffer.kt\nokio/internal/-Buffer\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,641:1\n1567#2:642\n1568#2:644\n1572#2:645\n1573#2,68:647\n1644#2:715\n1645#2,32:717\n1677#2,18:750\n1698#2:768\n1699#2,18:770\n1721#2:788\n1723#2,7:790\n1#3:643\n1#3:646\n1#3:716\n1#3:769\n1#3:789\n86#4:749\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n628#1:642\n628#1:644\n630#1:645\n630#1:647,68\n632#1:715\n632#1:717,32\n632#1:750,18\n634#1:768\n634#1:770,18\n637#1:788\n637#1:790,7\n628#1:643\n630#1:646\n632#1:716\n634#1:769\n637#1:789\n632#1:749\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class UnsafeCursor implements Closeable {
        @Nullable
        public Buffer buffer;
        @Nullable
        public byte[] data;
        public boolean readWrite;
        @Nullable
        private Segment segment;
        public long offset = -1;
        public int start = -1;
        public int end = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer != null) {
                this.buffer = null;
                setSegment$okio(null);
                this.offset = -1L;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer");
        }

        public final long expandBuffer(int i10) {
            if (i10 > 0) {
                if (i10 <= 8192) {
                    Buffer buffer = this.buffer;
                    if (buffer != null) {
                        if (this.readWrite) {
                            long size = buffer.size();
                            Segment writableSegment$okio = buffer.writableSegment$okio(i10);
                            int i11 = 8192 - writableSegment$okio.limit;
                            writableSegment$okio.limit = 8192;
                            long j10 = i11;
                            buffer.setSize$okio(size + j10);
                            setSegment$okio(writableSegment$okio);
                            this.offset = size;
                            this.data = writableSegment$okio.data;
                            this.start = 8192 - i11;
                            this.end = 8192;
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

        @Nullable
        public final Segment getSegment$okio() {
            return this.segment;
        }

        public final int next() {
            long j10;
            long j11 = this.offset;
            Buffer buffer = this.buffer;
            Intrinsics.checkNotNull(buffer);
            if (j11 != buffer.size()) {
                long j12 = this.offset;
                if (j12 == -1) {
                    j10 = 0;
                } else {
                    j10 = j12 + (this.end - this.start);
                }
                return seek(j10);
            }
            throw new IllegalStateException("no more bytes");
        }

        public final long resizeBuffer(long j10) {
            Buffer buffer = this.buffer;
            if (buffer != null) {
                if (this.readWrite) {
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
                            setSegment$okio(null);
                            this.offset = j10;
                            this.data = null;
                            this.start = -1;
                            this.end = -1;
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
                                setSegment$okio(writableSegment$okio);
                                this.offset = size;
                                this.data = writableSegment$okio.data;
                                int i12 = writableSegment$okio.limit;
                                this.start = i12 - min;
                                this.end = i12;
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

        public final int seek(long j10) {
            Segment segment;
            Buffer buffer = this.buffer;
            if (buffer != null) {
                int i10 = (j10 > (-1L) ? 1 : (j10 == (-1L) ? 0 : -1));
                if (i10 >= 0 && j10 <= buffer.size()) {
                    if (i10 != 0 && j10 != buffer.size()) {
                        long size = buffer.size();
                        Segment segment2 = buffer.head;
                        long j11 = 0;
                        if (getSegment$okio() != null) {
                            long j12 = this.offset;
                            int i11 = this.start;
                            Segment segment$okio = getSegment$okio();
                            Intrinsics.checkNotNull(segment$okio);
                            long j13 = j12 - (i11 - segment$okio.pos);
                            if (j13 > j10) {
                                segment = segment2;
                                segment2 = getSegment$okio();
                                size = j13;
                            } else {
                                segment = getSegment$okio();
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
                        if (this.readWrite) {
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
                        setSegment$okio(segment);
                        this.offset = j10;
                        Intrinsics.checkNotNull(segment);
                        this.data = segment.data;
                        int i14 = segment.pos + ((int) (j10 - j11));
                        this.start = i14;
                        int i15 = segment.limit;
                        this.end = i15;
                        return i15 - i14;
                    }
                    setSegment$okio(null);
                    this.offset = j10;
                    this.data = null;
                    this.start = -1;
                    this.end = -1;
                    return -1;
                }
                throw new ArrayIndexOutOfBoundsException("offset=" + j10 + " > size=" + buffer.size());
            }
            throw new IllegalStateException("not attached to a buffer");
        }

        public final void setSegment$okio(@Nullable Segment segment) {
            this.segment = segment;
        }
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, OutputStream outputStream, long j10, long j11, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        long j12 = j10;
        if ((i10 & 4) != 0) {
            j11 = buffer.size - j12;
        }
        return buffer.copyTo(outputStream, j12, j11);
    }

    private final ByteString digest(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        Segment segment = this.head;
        if (segment != null) {
            byte[] bArr = segment.data;
            int i10 = segment.pos;
            messageDigest.update(bArr, i10, segment.limit - i10);
            Segment segment2 = segment.next;
            Intrinsics.checkNotNull(segment2);
            while (segment2 != segment) {
                byte[] bArr2 = segment2.data;
                int i11 = segment2.pos;
                messageDigest.update(bArr2, i11, segment2.limit - i11);
                segment2 = segment2.next;
                Intrinsics.checkNotNull(segment2);
            }
        }
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digest, "digest(...)");
        return new ByteString(digest);
    }

    private final ByteString hmac(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.internalArray$okio(), str));
            Segment segment = this.head;
            if (segment != null) {
                byte[] bArr = segment.data;
                int i10 = segment.pos;
                mac.update(bArr, i10, segment.limit - i10);
                Segment segment2 = segment.next;
                Intrinsics.checkNotNull(segment2);
                while (segment2 != segment) {
                    byte[] bArr2 = segment2.data;
                    int i11 = segment2.pos;
                    mac.update(bArr2, i11, segment2.limit - i11);
                    segment2 = segment2.next;
                    Intrinsics.checkNotNull(segment2);
                }
            }
            byte[] doFinal = mac.doFinal();
            Intrinsics.checkNotNullExpressionValue(doFinal, "doFinal(...)");
            return new ByteString(doFinal);
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static /* synthetic */ UnsafeCursor readAndWriteUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readAndWriteUnsafe(unsafeCursor);
    }

    public static /* synthetic */ UnsafeCursor readUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readUnsafe(unsafeCursor);
    }

    public static /* synthetic */ Buffer writeTo$default(Buffer buffer, OutputStream outputStream, long j10, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            j10 = buffer.size;
        }
        return buffer.writeTo(outputStream, j10);
    }

    @c
    /* renamed from: -deprecated_getByte  reason: not valid java name */
    public final byte m4950deprecated_getByte(long j10) {
        return getByte(j10);
    }

    @c
    /* renamed from: -deprecated_size  reason: not valid java name */
    public final long m4951deprecated_size() {
        return this.size;
    }

    public final void clear() {
        skip(size());
    }

    public final long completeSegmentByteCount() {
        long size = size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = this.head;
        Intrinsics.checkNotNull(segment);
        Segment segment2 = segment.prev;
        Intrinsics.checkNotNull(segment2);
        int i10 = segment2.limit;
        if (i10 < 8192 && segment2.owner) {
            size -= i10 - segment2.pos;
        }
        return size;
    }

    @NotNull
    public final Buffer copy() {
        Buffer buffer = new Buffer();
        if (size() != 0) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            Segment sharedCopy = segment.sharedCopy();
            buffer.head = sharedCopy;
            sharedCopy.prev = sharedCopy;
            sharedCopy.next = sharedCopy;
            for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
                Segment segment3 = sharedCopy.prev;
                Intrinsics.checkNotNull(segment3);
                Intrinsics.checkNotNull(segment2);
                segment3.push(segment2.sharedCopy());
            }
            buffer.setSize$okio(size());
        }
        return buffer;
    }

    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        return copyTo$default(this, out, 0L, 0L, 6, (Object) null);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer emit() {
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Buffer) {
            Buffer buffer = (Buffer) obj;
            if (size() == buffer.size()) {
                if (size() == 0) {
                    return true;
                }
                Segment segment = this.head;
                Intrinsics.checkNotNull(segment);
                Segment segment2 = buffer.head;
                Intrinsics.checkNotNull(segment2);
                int i10 = segment.pos;
                int i11 = segment2.pos;
                long j10 = 0;
                while (j10 < size()) {
                    long min = Math.min(segment.limit - i10, segment2.limit - i11);
                    long j11 = 0;
                    while (j11 < min) {
                        int i12 = i10 + 1;
                        int i13 = i11 + 1;
                        if (segment.data[i10] == segment2.data[i11]) {
                            j11++;
                            i10 = i12;
                            i11 = i13;
                        }
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
        }
        return false;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        if (this.size == 0) {
            return true;
        }
        return false;
    }

    public final byte getByte(long j10) {
        SegmentedByteString.checkOffsetAndCount(size(), j10, 1L);
        Segment segment = this.head;
        if (segment != null) {
            if (size() - j10 < j10) {
                long size = size();
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

    public int hashCode() {
        Segment segment = this.head;
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
        } while (segment != this.head);
        return i10;
    }

    @NotNull
    public final ByteString hmacSha1(@NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac("HmacSHA1", key);
    }

    @NotNull
    public final ByteString hmacSha256(@NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac("HmacSHA256", key);
    }

    @NotNull
    public final ByteString hmacSha512(@NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac("HmacSHA512", key);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b10) {
        return indexOf(b10, 0L, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes) {
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    @Override // okio.BufferedSource
    @NotNull
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.Buffer$inputStream$1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.size(), Integer.MAX_VALUE);
            }

            @Override // java.io.InputStream
            public int read() {
                if (Buffer.this.size() > 0) {
                    return Buffer.this.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                }
                return -1;
            }

            @NotNull
            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(@NotNull byte[] sink, int i10, int i11) {
                Intrinsics.checkNotNullParameter(sink, "sink");
                return Buffer.this.read(sink, i10, i11);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @NotNull
    public final ByteString md5() {
        return digest(SameMD5.TAG);
    }

    @Override // okio.BufferedSink
    @NotNull
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.Buffer$outputStream$1
            @NotNull
            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i10) {
                Buffer.this.writeByte(i10);
            }

            @Override // java.io.OutputStream
            public void write(@NotNull byte[] data, int i10, int i11) {
                Intrinsics.checkNotNullParameter(data, "data");
                Buffer.this.write(data, i10, i11);
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }
        };
    }

    @Override // okio.BufferedSource
    @NotNull
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j10, @NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return rangeEquals(j10, bytes, 0, bytes.size());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(sink.remaining(), segment.limit - segment.pos);
        sink.put(segment.data, segment.pos, min);
        int i10 = segment.pos + min;
        segment.pos = i10;
        this.size -= min;
        if (i10 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @Override // okio.BufferedSource
    public long readAll(@NotNull Sink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long size = size();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    @NotNull
    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe$default(this, null, 1, null);
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        if (size() != 0) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i10 = segment.pos;
            int i11 = segment.limit;
            int i12 = i10 + 1;
            byte b10 = segment.data[i10];
            setSize$okio(size() - 1);
            if (i12 == i11) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i12;
            }
            return b10;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray() {
        return readByteArray(size());
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString() {
        return readByteString(size());
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x009b, code lost:
        setSize$okio(size() - r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a4, code lost:
        if (r2 == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a6, code lost:
        r14 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a8, code lost:
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a9, code lost:
        if (r1 >= r14) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b3, code lost:
        if (size() == 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b5, code lost:
        if (r2 == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b7, code lost:
        r1 = "Expected a digit";
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ba, code lost:
        r1 = "Expected a digit or '-'";
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00df, code lost:
        throw new java.lang.NumberFormatException(r1 + " but was 0x" + okio.SegmentedByteString.toHexString(getByte(0)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e5, code lost:
        throw new java.io.EOFException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e6, code lost:
        if (r2 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ea, code lost:
        return -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
        return r8;
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readDecimalLong():long");
    }

    @NotNull
    public final Buffer readFrom(@NotNull InputStream input) throws IOException {
        Intrinsics.checkNotNullParameter(input, "input");
        readFrom(input, Long.MAX_VALUE, true);
        return this;
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull Buffer sink, long j10) throws EOFException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (size() >= j10) {
            sink.write(this, j10);
        } else {
            sink.write(this, size());
            throw new EOFException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a7 A[EDGE_INSN: B:42:0x00a7->B:37:0x00a7 ?: BREAK  , SYNTHETIC] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readHexadecimalUnsignedLong() throws java.io.EOFException {
        /*
            r14 = this;
            long r0 = r14.size()
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto Lb1
            r0 = 0
            r1 = r0
            r4 = r2
        Ld:
            okio.Segment r6 = r14.head
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            byte[] r7 = r6.data
            int r8 = r6.pos
            int r9 = r6.limit
        L18:
            if (r8 >= r9) goto L93
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L27
            r11 = 57
            if (r10 > r11) goto L27
            int r11 = r10 + (-48)
            goto L3c
        L27:
            r11 = 97
            if (r10 < r11) goto L32
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L32
            int r11 = r10 + (-87)
            goto L3c
        L32:
            r11 = 65
            if (r10 < r11) goto L74
            r11 = 70
            if (r10 > r11) goto L74
            int r11 = r10 + (-55)
        L3c:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L4c
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L18
        L4c:
            okio.Buffer r0 = new okio.Buffer
            r0.<init>()
            okio.Buffer r0 = r0.writeHexadecimalUnsignedLong(r4)
            okio.Buffer r0 = r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.readUtf8()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L74:
            if (r0 == 0) goto L78
            r1 = 1
            goto L93
        L78:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = okio.SegmentedByteString.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L93:
            if (r8 != r9) goto L9f
            okio.Segment r7 = r6.pop()
            r14.head = r7
            okio.SegmentPool.recycle(r6)
            goto La1
        L9f:
            r6.pos = r8
        La1:
            if (r1 != 0) goto La7
            okio.Segment r6 = r14.head
            if (r6 != 0) goto Ld
        La7:
            long r1 = r14.size()
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.setSize$okio(r1)
            return r4
        Lb1:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readHexadecimalUnsignedLong():long");
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        if (size() >= 4) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i10 = segment.pos;
            int i11 = segment.limit;
            if (i11 - i10 < 4) {
                return ((readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            }
            byte[] bArr = segment.data;
            int i12 = ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24);
            int i13 = i10 + 3;
            int i14 = i10 + 4;
            int i15 = (bArr[i13] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | i12 | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
            setSize$okio(size() - 4);
            if (i14 == i11) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i14;
            }
            return i15;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public int readIntLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readInt());
    }

    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        if (size() >= 8) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i10 = segment.pos;
            int i11 = segment.limit;
            if (i11 - i10 < 8) {
                return ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
            }
            byte[] bArr = segment.data;
            long j10 = ((bArr[i10] & 255) << 56) | ((bArr[i10 + 1] & 255) << 48) | ((bArr[i10 + 2] & 255) << 40);
            int i12 = i10 + 7;
            int i13 = i10 + 8;
            long j11 = j10 | ((bArr[i10 + 3] & 255) << 32) | ((bArr[i10 + 4] & 255) << 24) | ((bArr[i10 + 5] & 255) << 16) | ((bArr[i10 + 6] & 255) << 8) | (bArr[i12] & 255);
            setSize$okio(size() - 8);
            if (i13 == i11) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i13;
            }
            return j11;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public long readLongLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readLong());
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        if (size() >= 2) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i10 = segment.pos;
            int i11 = segment.limit;
            if (i11 - i10 < 2) {
                return (short) (((readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED));
            }
            byte[] bArr = segment.data;
            int i12 = i10 + 1;
            int i13 = i10 + 2;
            int i14 = (bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
            setSize$okio(size() - 2);
            if (i13 == i11) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i13;
            }
            return (short) i14;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public short readShortLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readShort());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return readString(this.size, charset);
    }

    @NotNull
    public final UnsafeCursor readUnsafe() {
        return readUnsafe$default(this, null, 1, null);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8() {
        return readString(this.size, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int i10;
        int i11;
        int i12;
        if (size() != 0) {
            byte b10 = getByte(0L);
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
                skip(1L);
                return 65533;
            }
            long j10 = i11;
            if (size() >= j10) {
                for (int i13 = 1; i13 < i11; i13++) {
                    long j11 = i13;
                    byte b11 = getByte(j11);
                    if ((b11 & 192) == 128) {
                        i10 = (i10 << 6) | (b11 & 63);
                    } else {
                        skip(j11);
                        return 65533;
                    }
                }
                skip(j10);
                if (i10 > 1114111) {
                    return 65533;
                }
                if ((55296 <= i10 && i10 < 57344) || i10 < i12) {
                    return 65533;
                }
                return i10;
            }
            throw new EOFException("size < " + i11 + ": " + size() + " (to read code point prefixed 0x" + SegmentedByteString.toHexString(b10) + ')');
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    @Nullable
    public String readUtf8Line() throws EOFException {
        long indexOf = indexOf((byte) 10);
        if (indexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(this, indexOf);
        }
        if (size() != 0) {
            return readUtf8(size());
        }
        return null;
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public boolean request(long j10) {
        if (this.size >= j10) {
            return true;
        }
        return false;
    }

    @Override // okio.BufferedSource
    public void require(long j10) throws EOFException {
        if (this.size >= j10) {
            return;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public int select(@NotNull Options options) {
        Intrinsics.checkNotNullParameter(options, "options");
        int selectPrefix$default = okio.internal.Buffer.selectPrefix$default(this, options, false, 2, null);
        if (selectPrefix$default == -1) {
            return -1;
        }
        skip(options.getByteStrings$okio()[selectPrefix$default].size());
        return selectPrefix$default;
    }

    public final void setSize$okio(long j10) {
        this.size = j10;
    }

    @NotNull
    public final ByteString sha1() {
        return digest(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
    }

    @NotNull
    public final ByteString sha256() {
        return digest("SHA-256");
    }

    @NotNull
    public final ByteString sha512() {
        return digest("SHA-512");
    }

    public final long size() {
        return this.size;
    }

    @Override // okio.BufferedSource
    public void skip(long j10) throws EOFException {
        while (j10 > 0) {
            Segment segment = this.head;
            if (segment != null) {
                int min = (int) Math.min(j10, segment.limit - segment.pos);
                long j11 = min;
                setSize$okio(size() - j11);
                j10 -= j11;
                int i10 = segment.pos + min;
                segment.pos = i10;
                if (i10 == segment.limit) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @NotNull
    public final ByteString snapshot() {
        if (size() <= SieveCacheKt.NodeLinkMask) {
            return snapshot((int) size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + size()).toString());
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @NotNull
    public String toString() {
        return snapshot().toString();
    }

    @NotNull
    public final Segment writableSegment$okio(int i10) {
        if (i10 >= 1 && i10 <= 8192) {
            Segment segment = this.head;
            if (segment == null) {
                Segment take = SegmentPool.take();
                this.head = take;
                take.prev = take;
                take.next = take;
                return take;
            }
            Intrinsics.checkNotNull(segment);
            Segment segment2 = segment.prev;
            Intrinsics.checkNotNull(segment2);
            if (segment2.limit + i10 <= 8192 && segment2.owner) {
                return segment2;
            }
            return segment2.push(SegmentPool.take());
        }
        throw new IllegalArgumentException("unexpected capacity");
    }

    @Override // okio.BufferedSink
    public long writeAll(@NotNull Source source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        long j10 = 0;
        while (true) {
            long read = source.read(this, 8192L);
            if (read != -1) {
                j10 += read;
            } else {
                return j10;
            }
        }
    }

    @NotNull
    public final Buffer writeTo(@NotNull OutputStream out) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        return writeTo$default(this, out, 0L, 2, null);
    }

    @NotNull
    public Buffer clone() {
        return copy();
    }

    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        return copyTo$default(this, out, j10, 0L, 4, (Object) null);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b10, long j10) {
        return indexOf(b10, j10, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes, long j10) {
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        long j11 = 0;
        if (j10 >= 0) {
            Segment segment = this.head;
            if (segment == null) {
                return -1L;
            }
            if (size() - j10 < j10) {
                j11 = size();
                while (j11 > j10) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    j11 -= segment.limit - segment.pos;
                }
                if (targetBytes.size() == 2) {
                    byte b10 = targetBytes.getByte(0);
                    byte b11 = targetBytes.getByte(1);
                    while (j11 < size()) {
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
                    return -1L;
                }
                byte[] internalArray$okio = targetBytes.internalArray$okio();
                while (j11 < size()) {
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
                while (j11 < size()) {
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
                return -1L;
            }
            byte[] internalArray$okio2 = targetBytes.internalArray$okio();
            while (j11 < size()) {
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
            return -1L;
            return (i10 - i11) + j11;
        }
        throw new IllegalArgumentException(("fromIndex < 0: " + j10).toString());
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j10, @NotNull ByteString bytes, int i10, int i11) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (j10 < 0 || i10 < 0 || i11 < 0 || size() - j10 < i11 || bytes.size() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (getByte(i12 + j10) != bytes.getByte(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public final UnsafeCursor readAndWriteUnsafe(@NotNull UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return okio.internal.Buffer.commonReadAndWriteUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray(long j10) throws EOFException {
        if (j10 >= 0 && j10 <= SieveCacheKt.NodeLinkMask) {
            if (size() >= j10) {
                byte[] bArr = new byte[(int) j10];
                readFully(bArr);
                return bArr;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(("byteCount: " + j10).toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString(long j10) throws EOFException {
        if (j10 >= 0 && j10 <= SieveCacheKt.NodeLinkMask) {
            if (size() >= j10) {
                if (j10 >= 4096) {
                    ByteString snapshot = snapshot((int) j10);
                    skip(j10);
                    return snapshot;
                }
                return new ByteString(readByteArray(j10));
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(("byteCount: " + j10).toString());
    }

    @NotNull
    public final Buffer readFrom(@NotNull InputStream input, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(input, "input");
        if (j10 >= 0) {
            readFrom(input, j10, false);
            return this;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(long j10, @NotNull Charset charset) throws EOFException {
        Intrinsics.checkNotNullParameter(charset, "charset");
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 >= 0 && j10 <= SieveCacheKt.NodeLinkMask) {
            if (this.size >= j10) {
                if (i10 == 0) {
                    return "";
                }
                Segment segment = this.head;
                Intrinsics.checkNotNull(segment);
                int i11 = segment.pos;
                if (i11 + j10 > segment.limit) {
                    return new String(readByteArray(j10), charset);
                }
                int i12 = (int) j10;
                String str = new String(segment.data, i11, i12, charset);
                int i13 = segment.pos + i12;
                segment.pos = i13;
                this.size -= j10;
                if (i13 == segment.limit) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
                return str;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(("byteCount: " + j10).toString());
    }

    @NotNull
    public final UnsafeCursor readUnsafe(@NotNull UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return okio.internal.Buffer.commonReadUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8(long j10) throws EOFException {
        return readString(j10, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict(long j10) throws EOFException {
        if (j10 >= 0) {
            long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
            long indexOf = indexOf((byte) 10, 0L, j11);
            if (indexOf != -1) {
                return okio.internal.Buffer.readUtf8Line(this, indexOf);
            }
            if (j11 < size() && getByte(j11 - 1) == 13 && getByte(j11) == 10) {
                return okio.internal.Buffer.readUtf8Line(this, j11);
            }
            Buffer buffer = new Buffer();
            copyTo(buffer, 0L, Math.min(32, size()));
            throw new EOFException("\\n not found: limit=" + Math.min(size(), j10) + " content=" + buffer.readByteString().hex() + (char) 8230);
        }
        throw new IllegalArgumentException(("limit < 0: " + j10).toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeByte(int i10) {
        Segment writableSegment$okio = writableSegment$okio(1);
        byte[] bArr = writableSegment$okio.data;
        int i11 = writableSegment$okio.limit;
        writableSegment$okio.limit = i11 + 1;
        bArr[i11] = (byte) i10;
        setSize$okio(size() + 1);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeDecimalLong(long j10) {
        boolean z10;
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 == 0) {
            return writeByte(48);
        }
        int i11 = 1;
        if (i10 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (j10 >= 100000000) {
            i11 = j10 < 1000000000000L ? j10 < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? j10 < 1000000000 ? 9 : 10 : j10 < 100000000000L ? 11 : 12 : j10 < 1000000000000000L ? j10 < 10000000000000L ? 13 : j10 < 100000000000000L ? 14 : 15 : j10 < 100000000000000000L ? j10 < 10000000000000000L ? 16 : 17 : j10 < 1000000000000000000L ? 18 : 19;
        } else if (j10 >= 10000) {
            i11 = j10 < 1000000 ? j10 < 100000 ? 5 : 6 : j10 < 10000000 ? 7 : 8;
        } else if (j10 >= 100) {
            i11 = j10 < 1000 ? 3 : 4;
        } else if (j10 >= 10) {
            i11 = 2;
        }
        if (z10) {
            i11++;
        }
        Segment writableSegment$okio = writableSegment$okio(i11);
        byte[] bArr = writableSegment$okio.data;
        int i12 = writableSegment$okio.limit + i11;
        while (j10 != 0) {
            long j11 = 10;
            i12--;
            bArr[i12] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (j10 % j11)];
            j10 /= j11;
        }
        if (z10) {
            bArr[i12 - 1] = 45;
        }
        writableSegment$okio.limit += i11;
        setSize$okio(size() + i11);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeHexadecimalUnsignedLong(long j10) {
        if (j10 == 0) {
            return writeByte(48);
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
        Segment writableSegment$okio = writableSegment$okio(i10);
        byte[] bArr = writableSegment$okio.data;
        int i11 = writableSegment$okio.limit;
        for (int i12 = (i11 + i10) - 1; i12 >= i11; i12--) {
            bArr[i12] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (15 & j10)];
            j10 >>>= 4;
        }
        writableSegment$okio.limit += i10;
        setSize$okio(size() + i10);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeInt(int i10) {
        Segment writableSegment$okio = writableSegment$okio(4);
        byte[] bArr = writableSegment$okio.data;
        int i11 = writableSegment$okio.limit;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        writableSegment$okio.limit = i11 + 4;
        setSize$okio(size() + 4);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeIntLe(int i10) {
        return writeInt(SegmentedByteString.reverseBytes(i10));
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeLong(long j10) {
        Segment writableSegment$okio = writableSegment$okio(8);
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
        setSize$okio(size() + 8);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeLongLe(long j10) {
        return writeLong(SegmentedByteString.reverseBytes(j10));
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeShort(int i10) {
        Segment writableSegment$okio = writableSegment$okio(2);
        byte[] bArr = writableSegment$okio.data;
        int i11 = writableSegment$okio.limit;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
        writableSegment$okio.limit = i11 + 2;
        setSize$okio(size() + 2);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeShortLe(int i10) {
        return writeShort((int) SegmentedByteString.reverseBytes((short) i10));
    }

    @NotNull
    public final Buffer writeTo(@NotNull OutputStream out, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        SegmentedByteString.checkOffsetAndCount(this.size, 0L, j10);
        Segment segment = this.head;
        while (j10 > 0) {
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(j10, segment.limit - segment.pos);
            out.write(segment.data, segment.pos, min);
            int i10 = segment.pos + min;
            segment.pos = i10;
            long j11 = min;
            this.size -= j11;
            j10 -= j11;
            if (i10 == segment.limit) {
                Segment pop = segment.pop();
                this.head = pop;
                SegmentPool.recycle(segment);
                segment = pop;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8CodePoint(int i10) {
        if (i10 < 128) {
            writeByte(i10);
        } else if (i10 < 2048) {
            Segment writableSegment$okio = writableSegment$okio(2);
            byte[] bArr = writableSegment$okio.data;
            int i11 = writableSegment$okio.limit;
            bArr[i11] = (byte) ((i10 >> 6) | 192);
            bArr[i11 + 1] = (byte) ((i10 & 63) | 128);
            writableSegment$okio.limit = i11 + 2;
            setSize$okio(size() + 2);
        } else if (55296 <= i10 && i10 < 57344) {
            writeByte(63);
        } else if (i10 < 65536) {
            Segment writableSegment$okio2 = writableSegment$okio(3);
            byte[] bArr2 = writableSegment$okio2.data;
            int i12 = writableSegment$okio2.limit;
            bArr2[i12] = (byte) ((i10 >> 12) | 224);
            bArr2[i12 + 1] = (byte) (((i10 >> 6) & 63) | 128);
            bArr2[i12 + 2] = (byte) ((i10 & 63) | 128);
            writableSegment$okio2.limit = i12 + 3;
            setSize$okio(size() + 3);
        } else if (i10 <= 1114111) {
            Segment writableSegment$okio3 = writableSegment$okio(4);
            byte[] bArr3 = writableSegment$okio3.data;
            int i13 = writableSegment$okio3.limit;
            bArr3[i13] = (byte) ((i10 >> 18) | 240);
            bArr3[i13 + 1] = (byte) (((i10 >> 12) & 63) | 128);
            bArr3[i13 + 2] = (byte) (((i10 >> 6) & 63) | 128);
            bArr3[i13 + 3] = (byte) ((i10 & 63) | 128);
            writableSegment$okio3.limit = i13 + 4;
            setSize$okio(size() + 4);
        } else {
            throw new IllegalArgumentException("Unexpected code point: 0x" + SegmentedByteString.toHexString(i10));
        }
        return this;
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j10, long j11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        return buffer.copyTo(buffer2, j10, j11);
    }

    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out, long j10, long j11) throws IOException {
        int i10;
        Intrinsics.checkNotNullParameter(out, "out");
        SegmentedByteString.checkOffsetAndCount(this.size, j10, j11);
        if (j11 == 0) {
            return this;
        }
        Segment segment = this.head;
        while (true) {
            Intrinsics.checkNotNull(segment);
            int i11 = segment.limit;
            int i12 = segment.pos;
            if (j10 < i11 - i12) {
                break;
            }
            j10 -= i11 - i12;
            segment = segment.next;
        }
        while (j11 > 0) {
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(segment.limit - i10, j11);
            out.write(segment.data, (int) (segment.pos + j10), min);
            j11 -= min;
            segment = segment.next;
            j10 = 0;
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeString(@NotNull String string, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return writeString(string, 0, string.length(), charset);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        return writeUtf8(string, 0, string.length());
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        return buffer.copyTo(buffer2, j10);
    }

    private final void readFrom(InputStream inputStream, long j10, boolean z10) throws IOException {
        while (true) {
            if (j10 <= 0 && !z10) {
                return;
            }
            Segment writableSegment$okio = writableSegment$okio(1);
            int read = inputStream.read(writableSegment$okio.data, writableSegment$okio.limit, (int) Math.min(j10, 8192 - writableSegment$okio.limit));
            if (read == -1) {
                if (writableSegment$okio.pos == writableSegment$okio.limit) {
                    this.head = writableSegment$okio.pop();
                    SegmentPool.recycle(writableSegment$okio);
                }
                if (!z10) {
                    throw new EOFException();
                }
                return;
            }
            writableSegment$okio.limit += read;
            long j11 = read;
            this.size += j11;
            j10 -= j11;
        }
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b10, long j10, long j11) {
        Segment segment;
        int i10;
        long j12 = 0;
        if (0 <= j10 && j10 <= j11) {
            if (j11 > size()) {
                j11 = size();
            }
            if (j10 == j11 || (segment = this.head) == null) {
                return -1L;
            }
            if (size() - j10 < j10) {
                j12 = size();
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
        throw new IllegalArgumentException(("size=" + size() + " fromIndex=" + j10 + " toIndex=" + j11).toString());
    }

    @NotNull
    public final ByteString snapshot(int i10) {
        if (i10 == 0) {
            return ByteString.EMPTY;
        }
        SegmentedByteString.checkOffsetAndCount(size(), 0L, i10);
        Segment segment = this.head;
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
        Segment segment2 = this.head;
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

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8(@NotNull String string, int i10, int i11) {
        char charAt;
        Intrinsics.checkNotNullParameter(string, "string");
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
        } else if (i11 >= i10) {
            if (i11 > string.length()) {
                throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + string.length()).toString());
            }
            while (i10 < i11) {
                char charAt2 = string.charAt(i10);
                if (charAt2 < 128) {
                    Segment writableSegment$okio = writableSegment$okio(1);
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
                    setSize$okio(size() + i15);
                } else {
                    if (charAt2 < 2048) {
                        Segment writableSegment$okio2 = writableSegment$okio(2);
                        byte[] bArr2 = writableSegment$okio2.data;
                        int i16 = writableSegment$okio2.limit;
                        bArr2[i16] = (byte) ((charAt2 >> 6) | 192);
                        bArr2[i16 + 1] = (byte) ((charAt2 & '?') | 128);
                        writableSegment$okio2.limit = i16 + 2;
                        setSize$okio(size() + 2);
                    } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                        int i17 = i10 + 1;
                        char charAt3 = i17 < i11 ? string.charAt(i17) : (char) 0;
                        if (charAt2 <= 56319 && 56320 <= charAt3 && charAt3 < 57344) {
                            int i18 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                            Segment writableSegment$okio3 = writableSegment$okio(4);
                            byte[] bArr3 = writableSegment$okio3.data;
                            int i19 = writableSegment$okio3.limit;
                            bArr3[i19] = (byte) ((i18 >> 18) | 240);
                            bArr3[i19 + 1] = (byte) (((i18 >> 12) & 63) | 128);
                            bArr3[i19 + 2] = (byte) (((i18 >> 6) & 63) | 128);
                            bArr3[i19 + 3] = (byte) ((i18 & 63) | 128);
                            writableSegment$okio3.limit = i19 + 4;
                            setSize$okio(size() + 4);
                            i10 += 2;
                        } else {
                            writeByte(63);
                            i10 = i17;
                        }
                    } else {
                        Segment writableSegment$okio4 = writableSegment$okio(3);
                        byte[] bArr4 = writableSegment$okio4.data;
                        int i20 = writableSegment$okio4.limit;
                        bArr4[i20] = (byte) ((charAt2 >> '\f') | 224);
                        bArr4[i20 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                        bArr4[i20 + 2] = (byte) ((charAt2 & '?') | 128);
                        writableSegment$okio4.limit = i20 + 3;
                        setSize$okio(size() + 3);
                    }
                    i10++;
                }
            }
            return this;
        } else {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
        }
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull byte[] sink) throws EOFException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i10 = 0;
        while (i10 < sink.length) {
            int read = read(sink, i10, sink.length - i10);
            if (read == -1) {
                throw new EOFException();
            }
            i10 += read;
        }
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeString(@NotNull String string, int i10, int i11, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
        } else if (i11 >= i10) {
            if (i11 <= string.length()) {
                if (Intrinsics.areEqual(charset, Charsets.UTF_8)) {
                    return writeUtf8(string, i10, i11);
                }
                String substring = string.substring(i10, i11);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                byte[] bytes = substring.getBytes(charset);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                return write(bytes, 0, bytes.length);
            }
            throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + string.length()).toString());
        } else {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
        }
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        int remaining = source.remaining();
        int i10 = remaining;
        while (i10 > 0) {
            Segment writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i10, 8192 - writableSegment$okio.limit);
            source.get(writableSegment$okio.data, writableSegment$okio.limit, min);
            i10 -= min;
            writableSegment$okio.limit += min;
        }
        this.size += remaining;
        return remaining;
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink, int i10, int i11) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        SegmentedByteString.checkOffsetAndCount(sink.length, i10, i11);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i11, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i12 = segment.pos;
        n.h(bArr, sink, i10, i12, i12 + min);
        segment.pos += min;
        setSize$okio(size() - min);
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @NotNull
    public final Buffer copyTo(@NotNull Buffer out, long j10) {
        Intrinsics.checkNotNullParameter(out, "out");
        return copyTo(out, j10, this.size - j10);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    @NotNull
    public final Buffer copyTo(@NotNull Buffer out, long j10, long j11) {
        Intrinsics.checkNotNullParameter(out, "out");
        SegmentedByteString.checkOffsetAndCount(size(), j10, j11);
        if (j11 != 0) {
            out.setSize$okio(out.size() + j11);
            Segment segment = this.head;
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
        }
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull ByteString byteString, int i10, int i11) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(this, i10, i11);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return write(source, 0, source.length);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull byte[] source, int i10, int i11) {
        Intrinsics.checkNotNullParameter(source, "source");
        long j10 = i11;
        SegmentedByteString.checkOffsetAndCount(source.length, i10, j10);
        int i12 = i11 + i10;
        while (i10 < i12) {
            Segment writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i12 - i10, 8192 - writableSegment$okio.limit);
            int i13 = i10 + min;
            n.h(source, writableSegment$okio.data, writableSegment$okio.limit, i10, i13);
            writableSegment$okio.limit += min;
            i10 = i13;
        }
        setSize$okio(size() + j10);
        return this;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer buffer() {
        return this;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer getBuffer() {
        return this;
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j10) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j10 >= 0) {
            if (size() == 0) {
                return -1L;
            }
            if (j10 > size()) {
                j10 = size();
            }
            sink.write(this, j10);
            return j10;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull Source source, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        while (j10 > 0) {
            long read = source.read(this, j10);
            if (read == -1) {
                throw new EOFException();
            }
            j10 -= read;
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes, long j10) throws IOException {
        int i10;
        long j11 = j10;
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (bytes.size() > 0) {
            long j12 = 0;
            if (j11 >= 0) {
                Segment segment = this.head;
                if (segment != null) {
                    if (size() - j11 < j11) {
                        j12 = size();
                        while (j12 > j11) {
                            segment = segment.prev;
                            Intrinsics.checkNotNull(segment);
                            j12 -= segment.limit - segment.pos;
                        }
                        byte[] internalArray$okio = bytes.internalArray$okio();
                        byte b10 = internalArray$okio[0];
                        int size = bytes.size();
                        long size2 = (size() - size) + 1;
                        while (j12 < size2) {
                            byte[] bArr = segment.data;
                            long j13 = size2;
                            int min = (int) Math.min(segment.limit, (segment.pos + size2) - j12);
                            i10 = (int) ((segment.pos + j11) - j12);
                            while (i10 < min) {
                                if (bArr[i10] == b10 && okio.internal.Buffer.rangeEquals(segment, i10 + 1, internalArray$okio, 1, size)) {
                                    return (i10 - segment.pos) + j12;
                                }
                                i10++;
                            }
                            j12 += segment.limit - segment.pos;
                            segment = segment.next;
                            Intrinsics.checkNotNull(segment);
                            j11 = j12;
                            size2 = j13;
                        }
                    } else {
                        while (true) {
                            long j14 = (segment.limit - segment.pos) + j12;
                            if (j14 > j11) {
                                break;
                            }
                            segment = segment.next;
                            Intrinsics.checkNotNull(segment);
                            j12 = j14;
                        }
                        byte[] internalArray$okio2 = bytes.internalArray$okio();
                        byte b11 = internalArray$okio2[0];
                        int size3 = bytes.size();
                        long size4 = (size() - size3) + 1;
                        while (j12 < size4) {
                            byte[] bArr2 = segment.data;
                            int min2 = (int) Math.min(segment.limit, (segment.pos + size4) - j12);
                            i10 = (int) ((segment.pos + j11) - j12);
                            while (i10 < min2) {
                                if (bArr2[i10] == b11 && okio.internal.Buffer.rangeEquals(segment, i10 + 1, internalArray$okio2, 1, size3)) {
                                    return (i10 - segment.pos) + j12;
                                }
                                i10++;
                            }
                            j12 += segment.limit - segment.pos;
                            segment = segment.next;
                            Intrinsics.checkNotNull(segment);
                            j11 = j12;
                        }
                    }
                }
                return -1L;
            }
            throw new IllegalArgumentException(("fromIndex < 0: " + j11).toString());
        }
        throw new IllegalArgumentException("bytes is empty");
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j10) {
        Segment segment;
        Segment segment2;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source != this) {
            SegmentedByteString.checkOffsetAndCount(source.size(), 0L, j10);
            while (j10 > 0) {
                Segment segment3 = source.head;
                Intrinsics.checkNotNull(segment3);
                int i10 = segment3.limit;
                Intrinsics.checkNotNull(source.head);
                if (j10 < i10 - segment.pos) {
                    Segment segment4 = this.head;
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
                            setSize$okio(size() + j10);
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
                Segment segment8 = this.head;
                if (segment8 == null) {
                    this.head = segment7;
                    segment7.prev = segment7;
                    segment7.next = segment7;
                } else {
                    Intrinsics.checkNotNull(segment8);
                    Segment segment9 = segment8.prev;
                    Intrinsics.checkNotNull(segment9);
                    segment9.push(segment7).compact();
                }
                source.setSize$okio(source.size() - j11);
                setSize$okio(size() + j11);
                j10 -= j11;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }
}
