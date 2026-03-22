package com.applovin.shadow.okio;

import java.io.IOException;
import javax.crypto.Cipher;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CipherSource.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCipherSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSource.kt\nokio/CipherSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"})
/* loaded from: classes2.dex */
public final class CipherSource implements Source {
    private final int blockSize;
    @NotNull
    private final Buffer buffer;
    @NotNull
    private final Cipher cipher;
    private boolean closed;

    /* renamed from: final  reason: not valid java name */
    private boolean f20final;
    @NotNull
    private final BufferedSource source;

    public CipherSource(@NotNull BufferedSource source, @NotNull Cipher cipher) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        this.source = source;
        this.cipher = cipher;
        int blockSize = cipher.getBlockSize();
        this.blockSize = blockSize;
        this.buffer = new Buffer();
        if (blockSize > 0) {
            return;
        }
        throw new IllegalArgumentException(("Block cipher required " + cipher).toString());
    }

    private final void doFinal() {
        int outputSize = this.cipher.getOutputSize(0);
        if (outputSize == 0) {
            return;
        }
        Segment writableSegment$okio = this.buffer.writableSegment$okio(outputSize);
        int doFinal = this.cipher.doFinal(writableSegment$okio.data, writableSegment$okio.pos);
        writableSegment$okio.limit += doFinal;
        Buffer buffer = this.buffer;
        buffer.setSize$okio(buffer.size() + doFinal);
        if (writableSegment$okio.pos == writableSegment$okio.limit) {
            this.buffer.head = writableSegment$okio.pop();
            SegmentPool.recycle(writableSegment$okio);
        }
    }

    private final void refill() {
        while (this.buffer.size() == 0 && !this.f20final) {
            if (this.source.exhausted()) {
                this.f20final = true;
                doFinal();
                return;
            }
            update();
        }
    }

    private final void update() {
        Segment segment = this.source.getBuffer().head;
        Intrinsics.checkNotNull(segment);
        int i10 = segment.limit - segment.pos;
        int outputSize = this.cipher.getOutputSize(i10);
        while (outputSize > 8192) {
            int i11 = this.blockSize;
            if (i10 <= i11) {
                this.f20final = true;
                Buffer buffer = this.buffer;
                byte[] doFinal = this.cipher.doFinal(this.source.readByteArray());
                Intrinsics.checkNotNullExpressionValue(doFinal, "doFinal(...)");
                buffer.write(doFinal);
                return;
            }
            i10 -= i11;
            outputSize = this.cipher.getOutputSize(i10);
        }
        Segment writableSegment$okio = this.buffer.writableSegment$okio(outputSize);
        int update = this.cipher.update(segment.data, segment.pos, i10, writableSegment$okio.data, writableSegment$okio.pos);
        this.source.skip(i10);
        writableSegment$okio.limit += update;
        Buffer buffer2 = this.buffer;
        buffer2.setSize$okio(buffer2.size() + update);
        if (writableSegment$okio.pos == writableSegment$okio.limit) {
            this.buffer.head = writableSegment$okio.pop();
            SegmentPool.recycle(writableSegment$okio);
        }
    }

    @Override // com.applovin.shadow.okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.closed = true;
        this.source.close();
    }

    @NotNull
    public final Cipher getCipher() {
        return this.cipher;
    }

    @Override // com.applovin.shadow.okio.Source
    public long read(@NotNull Buffer sink, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 >= 0) {
            if (!this.closed) {
                if (i10 == 0) {
                    return 0L;
                }
                refill();
                return this.buffer.read(sink, j10);
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // com.applovin.shadow.okio.Source
    @NotNull
    public Timeout timeout() {
        return this.source.timeout();
    }
}
