package okio;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealBufferedSource.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 2 RealBufferedSource.kt\nokio/internal/-RealBufferedSource\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,185:1\n62#1:191\n62#1:201\n62#1:208\n62#1:214\n62#1:216\n62#1:220\n62#1:225\n62#1:240\n62#1:244\n62#1:251\n62#1:264\n62#1:272\n62#1:273\n62#1:274\n62#1:280\n62#1:288\n62#1:301\n62#1:305\n62#1:306\n62#1:307\n62#1:308\n62#1:313\n62#1:325\n62#1:341\n62#1:351\n62#1:354\n62#1:357\n62#1:360\n62#1:363\n62#1:366\n62#1:372\n62#1:389\n62#1:409\n62#1:424\n62#1:441\n62#1:454\n62#1:475\n62#1:482\n38#2:186\n39#2,3:188\n42#2,6:192\n51#2:198\n52#2:200\n56#2,2:202\n60#2:204\n61#2,2:206\n63#2,3:209\n69#2,2:212\n74#2:215\n75#2:217\n79#2,2:218\n84#2:221\n86#2,2:223\n88#2,13:226\n107#2:239\n108#2:241\n112#2,2:242\n117#2,6:245\n123#2,9:252\n134#2,3:261\n137#2,5:265\n142#2:271\n146#2,5:275\n151#2,5:281\n158#2,2:286\n160#2,11:289\n174#2:300\n175#2:302\n179#2,2:303\n184#2,4:309\n188#2,6:314\n198#2:320\n199#2,3:322\n202#2,8:326\n210#2,3:335\n217#2,3:338\n220#2,7:342\n230#2,2:349\n235#2,2:352\n240#2,2:355\n245#2,2:358\n250#2,2:361\n255#2,2:364\n260#2,5:367\n265#2,11:373\n279#2,5:384\n284#2,14:390\n301#2,2:404\n303#2,2:407\n305#2,7:410\n314#2,2:417\n316#2,4:420\n320#2,11:425\n334#2,2:436\n337#2,2:439\n339#2,7:442\n350#2,2:449\n353#2,2:452\n355#2,7:455\n371#2:462\n373#2,11:464\n385#2:476\n389#2:477\n393#2,4:478\n397#2:483\n399#2:484\n401#2:485\n1#3:187\n1#3:199\n1#3:205\n1#3:222\n1#3:321\n1#3:406\n1#3:419\n1#3:438\n1#3:451\n1#3:463\n89#4:270\n89#4:334\n*S KotlinDebug\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource\n*L\n66#1:191\n67#1:201\n69#1:208\n70#1:214\n71#1:216\n72#1:220\n73#1:225\n74#1:240\n75#1:244\n77#1:251\n79#1:264\n82#1:272\n83#1:273\n87#1:274\n90#1:280\n91#1:288\n92#1:301\n93#1:305\n96#1:306\n97#1:307\n102#1:308\n105#1:313\n107#1:325\n108#1:341\n109#1:351\n110#1:354\n111#1:357\n112#1:360\n113#1:363\n114#1:366\n115#1:372\n116#1:389\n117#1:409\n121#1:424\n124#1:441\n127#1:454\n141#1:475\n181#1:482\n66#1:186\n66#1:188,3\n66#1:192,6\n67#1:198\n67#1:200\n68#1:202,2\n69#1:204\n69#1:206,2\n69#1:209,3\n70#1:212,2\n71#1:215\n71#1:217\n72#1:218,2\n73#1:221\n73#1:223,2\n73#1:226,13\n74#1:239\n74#1:241\n75#1:242,2\n77#1:245,6\n77#1:252,9\n79#1:261,3\n79#1:265,5\n79#1:271\n90#1:275,5\n90#1:281,5\n91#1:286,2\n91#1:289,11\n92#1:300\n92#1:302\n93#1:303,2\n105#1:309,4\n105#1:314,6\n107#1:320\n107#1:322,3\n107#1:326,8\n107#1:335,3\n108#1:338,3\n108#1:342,7\n109#1:349,2\n110#1:352,2\n111#1:355,2\n112#1:358,2\n113#1:361,2\n114#1:364,2\n115#1:367,5\n115#1:373,11\n116#1:384,5\n116#1:390,14\n117#1:404,2\n117#1:407,2\n117#1:410,7\n121#1:417,2\n121#1:420,4\n121#1:425,11\n124#1:436,2\n124#1:439,2\n124#1:442,7\n127#1:449,2\n127#1:452,2\n127#1:455,7\n141#1:462\n141#1:464,11\n141#1:476\n143#1:477\n181#1:478,4\n181#1:483\n182#1:484\n183#1:485\n66#1:187\n67#1:199\n69#1:205\n73#1:222\n107#1:321\n117#1:406\n121#1:419\n124#1:438\n127#1:451\n141#1:463\n79#1:270\n107#1:334\n*E\n"})
/* loaded from: classes8.dex */
public final class RealBufferedSource implements BufferedSource {
    @NotNull
    public final Buffer bufferField;
    public boolean closed;
    @NotNull
    public final Source source;

    public RealBufferedSource(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.source = source;
        this.bufferField = new Buffer();
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer buffer() {
        return this.bufferField;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.closed) {
            this.closed = true;
            this.source.close();
            this.bufferField.clear();
        }
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        if (!this.closed) {
            if (this.bufferField.exhausted() && this.source.read(this.bufferField, 8192L) == -1) {
                return true;
            }
            return false;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer getBuffer() {
        return this.bufferField;
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
        return new InputStream() { // from class: okio.RealBufferedSource$inputStream$1
            @Override // java.io.InputStream
            public int available() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.closed) {
                    return (int) Math.min(realBufferedSource.bufferField.size(), Integer.MAX_VALUE);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSource.this.close();
            }

            @Override // java.io.InputStream
            public int read() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.closed) {
                    if (realBufferedSource.bufferField.size() == 0) {
                        RealBufferedSource realBufferedSource2 = RealBufferedSource.this;
                        if (realBufferedSource2.source.read(realBufferedSource2.bufferField, 8192L) == -1) {
                            return -1;
                        }
                    }
                    return RealBufferedSource.this.bufferField.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                }
                throw new IOException("closed");
            }

            @NotNull
            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(@NotNull byte[] data, int i10, int i11) {
                Intrinsics.checkNotNullParameter(data, "data");
                if (!RealBufferedSource.this.closed) {
                    SegmentedByteString.checkOffsetAndCount(data.length, i10, i11);
                    if (RealBufferedSource.this.bufferField.size() == 0) {
                        RealBufferedSource realBufferedSource = RealBufferedSource.this;
                        if (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                            return -1;
                        }
                    }
                    return RealBufferedSource.this.bufferField.read(data, i10, i11);
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
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

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @Override // okio.BufferedSource
    public long readAll(@NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j10 = 0;
        while (this.source.read(this.bufferField, 8192L) != -1) {
            long completeSegmentByteCount = this.bufferField.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                j10 += completeSegmentByteCount;
                sink.write(this.bufferField, completeSegmentByteCount);
            }
        }
        if (this.bufferField.size() > 0) {
            long size = j10 + this.bufferField.size();
            Buffer buffer = this.bufferField;
            sink.write(buffer, buffer.size());
            return size;
        }
        return j10;
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        require(1L);
        return this.bufferField.readByte();
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteArray();
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
        if (r4 == 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
        r1 = new java.lang.StringBuilder();
        r1.append("Expected a digit or '-' but was 0x");
        r2 = java.lang.Integer.toString(r8, kotlin.text.CharsKt.checkRadix(kotlin.text.CharsKt.checkRadix(16)));
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, "toString(this, checkRadix(radix))");
        r1.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0055, code lost:
        throw new java.lang.NumberFormatException(r1.toString());
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() {
        /*
            r10 = this;
            r0 = 1
            r10.require(r0)
            r2 = 0
            r4 = r2
        L8:
            long r6 = r4 + r0
            boolean r8 = r10.request(r6)
            if (r8 == 0) goto L56
            okio.Buffer r8 = r10.bufferField
            byte r8 = r8.getByte(r4)
            r9 = 48
            if (r8 < r9) goto L1e
            r9 = 57
            if (r8 <= r9) goto L27
        L1e:
            int r4 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r4 != 0) goto L29
            r5 = 45
            if (r8 == r5) goto L27
            goto L29
        L27:
            r4 = r6
            goto L8
        L29:
            if (r4 == 0) goto L2c
            goto L56
        L2c:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected a digit or '-' but was 0x"
            r1.append(r2)
            r2 = 16
            int r2 = kotlin.text.CharsKt.checkRadix(r2)
            int r2 = kotlin.text.CharsKt.checkRadix(r2)
            java.lang.String r2 = java.lang.Integer.toString(r8, r2)
            java.lang.String r3 = "toString(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L56:
            okio.Buffer r0 = r10.bufferField
            long r0 = r0.readDecimalLong()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.readDecimalLong():long");
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            require(sink.length);
            this.bufferField.readFully(sink);
        } catch (EOFException e10) {
            int i10 = 0;
            while (this.bufferField.size() > 0) {
                Buffer buffer = this.bufferField;
                int read = buffer.read(sink, i10, (int) buffer.size());
                if (read == -1) {
                    throw new AssertionError();
                }
                i10 += read;
            }
            throw e10;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0031, code lost:
        if (r0 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
        r1 = new java.lang.StringBuilder();
        r1.append("Expected leading [0-9a-fA-F] character but was 0x");
        r2 = java.lang.Integer.toString(r2, kotlin.text.CharsKt.checkRadix(kotlin.text.CharsKt.checkRadix(16)));
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, "toString(this, checkRadix(radix))");
        r1.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
        throw new java.lang.NumberFormatException(r1.toString());
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readHexadecimalUnsignedLong() {
        /*
            r5 = this;
            r0 = 1
            r5.require(r0)
            r0 = 0
        L6:
            int r1 = r0 + 1
            long r2 = (long) r1
            boolean r2 = r5.request(r2)
            if (r2 == 0) goto L5e
            okio.Buffer r2 = r5.bufferField
            long r3 = (long) r0
            byte r2 = r2.getByte(r3)
            r3 = 48
            if (r2 < r3) goto L1e
            r3 = 57
            if (r2 <= r3) goto L2f
        L1e:
            r3 = 97
            if (r2 < r3) goto L26
            r3 = 102(0x66, float:1.43E-43)
            if (r2 <= r3) goto L2f
        L26:
            r3 = 65
            if (r2 < r3) goto L31
            r3 = 70
            if (r2 <= r3) goto L2f
            goto L31
        L2f:
            r0 = r1
            goto L6
        L31:
            if (r0 == 0) goto L34
            goto L5e
        L34:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r3)
            r3 = 16
            int r3 = kotlin.text.CharsKt.checkRadix(r3)
            int r3 = kotlin.text.CharsKt.checkRadix(r3)
            java.lang.String r2 = java.lang.Integer.toString(r2, r3)
            java.lang.String r3 = "toString(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L5e:
            okio.Buffer r0 = r5.bufferField
            long r0 = r0.readHexadecimalUnsignedLong()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.readHexadecimalUnsignedLong():long");
    }

    @Override // okio.BufferedSource
    public int readInt() {
        require(4L);
        return this.bufferField.readInt();
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        require(4L);
        return this.bufferField.readIntLe();
    }

    @Override // okio.BufferedSource
    public long readLong() {
        require(8L);
        return this.bufferField.readLong();
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        require(8L);
        return this.bufferField.readLongLe();
    }

    @Override // okio.BufferedSource
    public short readShort() {
        require(2L);
        return this.bufferField.readShort();
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        require(2L);
        return this.bufferField.readShortLe();
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(long j10, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        require(j10);
        return this.bufferField.readString(j10, charset);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readUtf8();
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() {
        require(1L);
        byte b10 = this.bufferField.getByte(0L);
        if ((b10 & 224) == 192) {
            require(2L);
        } else if ((b10 & 240) == 224) {
            require(3L);
        } else if ((b10 & 248) == 240) {
            require(4L);
        }
        return this.bufferField.readUtf8CodePoint();
    }

    @Override // okio.BufferedSource
    @Nullable
    public String readUtf8Line() {
        long indexOf = indexOf((byte) 10);
        if (indexOf == -1) {
            if (this.bufferField.size() != 0) {
                return readUtf8(this.bufferField.size());
            }
            return null;
        }
        return okio.internal.Buffer.readUtf8Line(this.bufferField, indexOf);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public boolean request(long j10) {
        if (j10 >= 0) {
            if (!this.closed) {
                while (this.bufferField.size() < j10) {
                    if (this.source.read(this.bufferField, 8192L) == -1) {
                        return false;
                    }
                }
                return true;
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // okio.BufferedSource
    public void require(long j10) {
        if (request(j10)) {
            return;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public int select(@NotNull Options options) {
        Intrinsics.checkNotNullParameter(options, "options");
        if (!this.closed) {
            while (true) {
                int selectPrefix = okio.internal.Buffer.selectPrefix(this.bufferField, options, true);
                if (selectPrefix != -2) {
                    if (selectPrefix != -1) {
                        this.bufferField.skip(options.getByteStrings$okio()[selectPrefix].size());
                        return selectPrefix;
                    }
                } else if (this.source.read(this.bufferField, 8192L) == -1) {
                    break;
                }
            }
            return -1;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource
    public void skip(long j10) {
        if (!this.closed) {
            while (j10 > 0) {
                if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192L) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j10, this.bufferField.size());
                this.bufferField.skip(min);
                j10 -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.source.timeout();
    }

    @NotNull
    public String toString() {
        return "buffer(" + this.source + ')';
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b10, long j10) {
        return indexOf(b10, j10, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes, long j10) {
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long indexOfElement = this.bufferField.indexOfElement(targetBytes, j10);
            if (indexOfElement != -1) {
                return indexOfElement;
            }
            long size = this.bufferField.size();
            if (this.source.read(this.bufferField, 8192L) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, size);
        }
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j10) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j10 >= 0) {
            if (!this.closed) {
                if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192L) == -1) {
                    return -1L;
                }
                return this.bufferField.read(sink, Math.min(j10, this.bufferField.size()));
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict(long j10) {
        if (j10 >= 0) {
            long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
            long indexOf = indexOf((byte) 10, 0L, j11);
            if (indexOf != -1) {
                return okio.internal.Buffer.readUtf8Line(this.bufferField, indexOf);
            }
            if (j11 < Long.MAX_VALUE && request(j11) && this.bufferField.getByte(j11 - 1) == 13 && request(1 + j11) && this.bufferField.getByte(j11) == 10) {
                return okio.internal.Buffer.readUtf8Line(this.bufferField, j11);
            }
            Buffer buffer = new Buffer();
            Buffer buffer2 = this.bufferField;
            buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.bufferField.size(), j10) + " content=" + buffer.readByteString().hex() + (char) 8230);
        }
        throw new IllegalArgumentException(("limit < 0: " + j10).toString());
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j10, @NotNull ByteString bytes, int i10, int i11) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!this.closed) {
            if (j10 < 0 || i10 < 0 || i11 < 0 || bytes.size() - i10 < i11) {
                return false;
            }
            for (int i12 = 0; i12 < i11; i12++) {
                long j11 = i12 + j10;
                if (!request(1 + j11) || this.bufferField.getByte(j11) != bytes.getByte(i10 + i12)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b10, long j10, long j11) {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        if (0 > j10 || j10 > j11) {
            throw new IllegalArgumentException(("fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        while (j10 < j11) {
            long indexOf = this.bufferField.indexOf(b10, j10, j11);
            if (indexOf != -1) {
                return indexOf;
            }
            long size = this.bufferField.size();
            if (size >= j11 || this.source.read(this.bufferField, 8192L) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, size);
        }
        return -1L;
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        this.bufferField.writeAll(this.source);
        return this.bufferField.readString(charset);
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray(long j10) {
        require(j10);
        return this.bufferField.readByteArray(j10);
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString(long j10) {
        require(j10);
        return this.bufferField.readByteString(j10);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8(long j10) {
        require(j10);
        return this.bufferField.readUtf8(j10);
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull Buffer sink, long j10) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            require(j10);
            this.bufferField.readFully(sink, j10);
        } catch (EOFException e10) {
            sink.writeAll(this.bufferField);
            throw e10;
        }
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink, int i10, int i11) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j10 = i11;
        SegmentedByteString.checkOffsetAndCount(sink.length, i10, j10);
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192L) == -1) {
            return -1;
        }
        return this.bufferField.read(sink, i10, (int) Math.min(j10, this.bufferField.size()));
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes, long j10) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long indexOf = this.bufferField.indexOf(bytes, j10);
            if (indexOf != -1) {
                return indexOf;
            }
            long size = this.bufferField.size();
            if (this.source.read(this.bufferField, 8192L) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, (size - bytes.size()) + 1);
        }
    }

    public static /* synthetic */ void getBuffer$annotations() {
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192L) == -1) {
            return -1;
        }
        return this.bufferField.read(sink);
    }
}
