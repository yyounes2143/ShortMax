package com.applovin.shadow.okio.internal;

import com.applovin.shadow.okio.Buffer;
import com.applovin.shadow.okio.ForwardingSource;
import com.applovin.shadow.okio.Source;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FixedLengthSource.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FixedLengthSource extends ForwardingSource {
    private long bytesReceived;
    private final long size;
    private final boolean truncate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FixedLengthSource(@NotNull Source delegate, long j10, boolean z10) {
        super(delegate);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.size = j10;
        this.truncate = z10;
    }

    private final void truncateToSize(Buffer buffer, long j10) {
        Buffer buffer2 = new Buffer();
        buffer2.writeAll(buffer);
        buffer.write(buffer2, j10);
        buffer2.clear();
    }

    @Override // com.applovin.shadow.okio.ForwardingSource, com.applovin.shadow.okio.Source
    public long read(@NotNull Buffer sink, long j10) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j11 = this.bytesReceived;
        long j12 = this.size;
        if (j11 > j12) {
            j10 = 0;
        } else if (this.truncate) {
            long j13 = j12 - j11;
            if (j13 == 0) {
                return -1L;
            }
            j10 = Math.min(j10, j13);
        }
        long read = super.read(sink, j10);
        int i10 = (read > (-1L) ? 1 : (read == (-1L) ? 0 : -1));
        if (i10 != 0) {
            this.bytesReceived += read;
        }
        long j14 = this.bytesReceived;
        long j15 = this.size;
        if ((j14 < j15 && i10 == 0) || j14 > j15) {
            if (read > 0 && j14 > j15) {
                truncateToSize(sink, sink.size() - (this.bytesReceived - this.size));
            }
            throw new IOException("expected " + this.size + " bytes but got " + this.bytesReceived);
        }
        return read;
    }
}
