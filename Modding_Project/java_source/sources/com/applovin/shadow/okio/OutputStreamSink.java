package com.applovin.shadow.okio;

import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JvmOkio.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJvmOkio.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmOkio.kt\nokio/OutputStreamSink\n+ 2 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,239:1\n86#2:240\n*S KotlinDebug\n*F\n+ 1 JvmOkio.kt\nokio/OutputStreamSink\n*L\n55#1:240\n*E\n"})
/* loaded from: classes2.dex */
public final class OutputStreamSink implements Sink {
    @NotNull
    private final OutputStream out;
    @NotNull
    private final Timeout timeout;

    public OutputStreamSink(@NotNull OutputStream out, @NotNull Timeout timeout) {
        Intrinsics.checkNotNullParameter(out, "out");
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        this.out = out;
        this.timeout = timeout;
    }

    @Override // com.applovin.shadow.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.out.close();
    }

    @Override // com.applovin.shadow.okio.Sink, java.io.Flushable
    public void flush() {
        this.out.flush();
    }

    @Override // com.applovin.shadow.okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.timeout;
    }

    @NotNull
    public String toString() {
        return "sink(" + this.out + ')';
    }

    @Override // com.applovin.shadow.okio.Sink
    public void write(@NotNull Buffer source, long j10) {
        Intrinsics.checkNotNullParameter(source, "source");
        SegmentedByteString.checkOffsetAndCount(source.size(), 0L, j10);
        while (j10 > 0) {
            this.timeout.throwIfReached();
            Segment segment = source.head;
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(j10, segment.limit - segment.pos);
            this.out.write(segment.data, segment.pos, min);
            segment.pos += min;
            long j11 = min;
            j10 -= j11;
            source.setSize$okio(source.size() - j11);
            if (segment.pos == segment.limit) {
                source.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }
}
