package gc;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
/* compiled from: LimitedSink.kt */
@Metadata
/* loaded from: classes6.dex */
public final class g implements Sink {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Buffer f52322a;

    /* renamed from: b  reason: collision with root package name */
    private long f52323b;

    public g(@NotNull Buffer limited, long j10) {
        Intrinsics.checkNotNullParameter(limited, "limited");
        if (j10 > 0) {
            this.f52322a = limited;
            this.f52323b = j10;
            return;
        }
        throw new IllegalArgumentException("limit has to be grater than 0");
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f52322a.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.f52322a.flush();
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        long j11 = this.f52323b;
        if (j11 > 0) {
            long min = Math.min(j11, j10);
            this.f52322a.write(source, min);
            this.f52323b -= min;
        }
    }
}
