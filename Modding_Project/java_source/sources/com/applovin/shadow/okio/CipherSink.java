package com.applovin.shadow.okio;

import java.io.IOException;
import javax.crypto.Cipher;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CipherSink.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCipherSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,148:1\n1#2:149\n86#3:150\n*S KotlinDebug\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n*L\n47#1:150\n*E\n"})
/* loaded from: classes2.dex */
public final class CipherSink implements Sink {
    private final int blockSize;
    @NotNull
    private final Cipher cipher;
    private boolean closed;
    @NotNull
    private final BufferedSink sink;

    public CipherSink(@NotNull BufferedSink sink, @NotNull Cipher cipher) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        this.sink = sink;
        this.cipher = cipher;
        int blockSize = cipher.getBlockSize();
        this.blockSize = blockSize;
        if (blockSize > 0) {
            return;
        }
        throw new IllegalArgumentException(("Block cipher required " + cipher).toString());
    }

    private final Throwable doFinal() {
        int outputSize = this.cipher.getOutputSize(0);
        Throwable th2 = null;
        if (outputSize == 0) {
            return null;
        }
        if (outputSize > 8192) {
            try {
                BufferedSink bufferedSink = this.sink;
                byte[] doFinal = this.cipher.doFinal();
                Intrinsics.checkNotNullExpressionValue(doFinal, "doFinal(...)");
                bufferedSink.write(doFinal);
                return null;
            } catch (Throwable th3) {
                return th3;
            }
        }
        Buffer buffer = this.sink.getBuffer();
        Segment writableSegment$okio = buffer.writableSegment$okio(outputSize);
        try {
            int doFinal2 = this.cipher.doFinal(writableSegment$okio.data, writableSegment$okio.limit);
            writableSegment$okio.limit += doFinal2;
            buffer.setSize$okio(buffer.size() + doFinal2);
        } catch (Throwable th4) {
            th2 = th4;
        }
        if (writableSegment$okio.pos == writableSegment$okio.limit) {
            buffer.head = writableSegment$okio.pop();
            SegmentPool.recycle(writableSegment$okio);
        }
        return th2;
    }

    private final int update(Buffer buffer, long j10) {
        Segment segment = buffer.head;
        Intrinsics.checkNotNull(segment);
        int min = (int) Math.min(j10, segment.limit - segment.pos);
        Buffer buffer2 = this.sink.getBuffer();
        int outputSize = this.cipher.getOutputSize(min);
        while (outputSize > 8192) {
            int i10 = this.blockSize;
            if (min <= i10) {
                BufferedSink bufferedSink = this.sink;
                byte[] update = this.cipher.update(buffer.readByteArray(j10));
                Intrinsics.checkNotNullExpressionValue(update, "update(...)");
                bufferedSink.write(update);
                return (int) j10;
            }
            min -= i10;
            outputSize = this.cipher.getOutputSize(min);
        }
        Segment writableSegment$okio = buffer2.writableSegment$okio(outputSize);
        int update2 = this.cipher.update(segment.data, segment.pos, min, writableSegment$okio.data, writableSegment$okio.limit);
        writableSegment$okio.limit += update2;
        buffer2.setSize$okio(buffer2.size() + update2);
        if (writableSegment$okio.pos == writableSegment$okio.limit) {
            buffer2.head = writableSegment$okio.pop();
            SegmentPool.recycle(writableSegment$okio);
        }
        this.sink.emitCompleteSegments();
        buffer.setSize$okio(buffer.size() - min);
        int i11 = segment.pos + min;
        segment.pos = i11;
        if (i11 == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @Override // com.applovin.shadow.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        Throwable doFinal = doFinal();
        try {
            this.sink.close();
        } catch (Throwable th2) {
            if (doFinal == null) {
                doFinal = th2;
            }
        }
        if (doFinal == null) {
            return;
        }
        throw doFinal;
    }

    @Override // com.applovin.shadow.okio.Sink, java.io.Flushable
    public void flush() {
        this.sink.flush();
    }

    @NotNull
    public final Cipher getCipher() {
        return this.cipher;
    }

    @Override // com.applovin.shadow.okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.sink.timeout();
    }

    @Override // com.applovin.shadow.okio.Sink
    public void write(@NotNull Buffer source, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        SegmentedByteString.checkOffsetAndCount(source.size(), 0L, j10);
        if (!this.closed) {
            while (j10 > 0) {
                j10 -= update(source, j10);
            }
            return;
        }
        throw new IllegalStateException("closed");
    }
}
