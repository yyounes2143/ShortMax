package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: InflaterSource.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInflaterSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,147:1\n1#2:148\n86#3:149\n*S KotlinDebug\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n*L\n73#1:149\n*E\n"})
/* loaded from: classes8.dex */
public final class InflaterSource implements Source {
    private int bufferBytesHeldByInflater;
    private boolean closed;
    @NotNull
    private final Inflater inflater;
    @NotNull
    private final BufferedSource source;

    public InflaterSource(@NotNull BufferedSource source, @NotNull Inflater inflater) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this.source = source;
        this.inflater = inflater;
    }

    private final void releaseBytesAfterInflate() {
        int i10 = this.bufferBytesHeldByInflater;
        if (i10 == 0) {
            return;
        }
        int remaining = i10 - this.inflater.getRemaining();
        this.bufferBytesHeldByInflater -= remaining;
        this.source.skip(remaining);
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.inflater.end();
        this.closed = true;
        this.source.close();
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        do {
            long readOrInflate = readOrInflate(sink, j10);
            if (readOrInflate > 0) {
                return readOrInflate;
            }
            if (this.inflater.finished() || this.inflater.needsDictionary()) {
                return -1L;
            }
        } while (!this.source.exhausted());
        throw new EOFException("source exhausted prematurely");
    }

    public final long readOrInflate(@NotNull Buffer sink, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 >= 0) {
            if (!this.closed) {
                if (i10 == 0) {
                    return 0L;
                }
                try {
                    Segment writableSegment$okio = sink.writableSegment$okio(1);
                    refill();
                    int inflate = this.inflater.inflate(writableSegment$okio.data, writableSegment$okio.limit, (int) Math.min(j10, 8192 - writableSegment$okio.limit));
                    releaseBytesAfterInflate();
                    if (inflate > 0) {
                        writableSegment$okio.limit += inflate;
                        long j11 = inflate;
                        sink.setSize$okio(sink.size() + j11);
                        return j11;
                    }
                    if (writableSegment$okio.pos == writableSegment$okio.limit) {
                        sink.head = writableSegment$okio.pop();
                        SegmentPool.recycle(writableSegment$okio);
                    }
                    return 0L;
                } catch (DataFormatException e10) {
                    throw new IOException(e10);
                }
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    public final boolean refill() throws IOException {
        if (!this.inflater.needsInput()) {
            return false;
        }
        if (this.source.exhausted()) {
            return true;
        }
        Segment segment = this.source.getBuffer().head;
        Intrinsics.checkNotNull(segment);
        int i10 = segment.limit;
        int i11 = segment.pos;
        int i12 = i10 - i11;
        this.bufferBytesHeldByInflater = i12;
        this.inflater.setInput(segment.data, i11, i12);
        return false;
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.source.timeout();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InflaterSource(@NotNull Source source, @NotNull Inflater inflater) {
        this(Okio.buffer(source), inflater);
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
    }
}
