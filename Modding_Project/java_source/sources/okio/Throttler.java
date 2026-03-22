package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Throttler.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Throttler {
    private long allocatedUntil;
    private long bytesPerSecond;
    @NotNull
    private final Condition condition;
    @NotNull
    private final ReentrantLock lock;
    private long maxByteCount;
    private long waitByteCount;

    public Throttler(long j10) {
        this.allocatedUntil = j10;
        this.waitByteCount = 8192L;
        this.maxByteCount = 262144L;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        Condition newCondition = reentrantLock.newCondition();
        Intrinsics.checkNotNullExpressionValue(newCondition, "newCondition(...)");
        this.condition = newCondition;
    }

    public static /* synthetic */ void bytesPerSecond$default(Throttler throttler, long j10, long j11, long j12, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j11 = throttler.waitByteCount;
        }
        long j13 = j11;
        if ((i10 & 4) != 0) {
            j12 = throttler.maxByteCount;
        }
        throttler.bytesPerSecond(j10, j13, j12);
    }

    private final long bytesToNanos(long j10) {
        return (j10 * 1000000000) / this.bytesPerSecond;
    }

    private final long nanosToBytes(long j10) {
        return (j10 * this.bytesPerSecond) / 1000000000;
    }

    public final long byteCountOrWaitNanos$okio(long j10, long j11) {
        if (this.bytesPerSecond == 0) {
            return j11;
        }
        long max = Math.max(this.allocatedUntil - j10, 0L);
        long nanosToBytes = this.maxByteCount - nanosToBytes(max);
        if (nanosToBytes >= j11) {
            this.allocatedUntil = j10 + max + bytesToNanos(j11);
            return j11;
        }
        long j12 = this.waitByteCount;
        if (nanosToBytes >= j12) {
            this.allocatedUntil = j10 + bytesToNanos(this.maxByteCount);
            return nanosToBytes;
        }
        long min = Math.min(j12, j11);
        long bytesToNanos = max + bytesToNanos(min - this.maxByteCount);
        if (bytesToNanos == 0) {
            this.allocatedUntil = j10 + bytesToNanos(this.maxByteCount);
            return min;
        }
        return -bytesToNanos;
    }

    public final void bytesPerSecond(long j10) {
        bytesPerSecond$default(this, j10, 0L, 0L, 6, null);
    }

    @NotNull
    public final Condition getCondition() {
        return this.condition;
    }

    @NotNull
    public final ReentrantLock getLock() {
        return this.lock;
    }

    @NotNull
    public final Sink sink(@NotNull final Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return new ForwardingSink(sink) { // from class: okio.Throttler$sink$1
            @Override // okio.ForwardingSink, okio.Sink
            public void write(@NotNull Buffer source, long j10) throws IOException {
                Intrinsics.checkNotNullParameter(source, "source");
                while (j10 > 0) {
                    try {
                        long take$okio = this.take$okio(j10);
                        super.write(source, take$okio);
                        j10 -= take$okio;
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException("interrupted");
                    }
                }
            }
        };
    }

    @NotNull
    public final Source source(@NotNull final Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return new ForwardingSource(source) { // from class: okio.Throttler$source$1
            @Override // okio.ForwardingSource, okio.Source
            public long read(@NotNull Buffer sink, long j10) {
                Intrinsics.checkNotNullParameter(sink, "sink");
                try {
                    return super.read(sink, this.take$okio(j10));
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException("interrupted");
                }
            }
        };
    }

    public final long take$okio(long j10) {
        if (j10 > 0) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            while (true) {
                try {
                    long byteCountOrWaitNanos$okio = byteCountOrWaitNanos$okio(System.nanoTime(), j10);
                    if (byteCountOrWaitNanos$okio >= 0) {
                        return byteCountOrWaitNanos$okio;
                    }
                    this.condition.awaitNanos(-byteCountOrWaitNanos$okio);
                } finally {
                    reentrantLock.unlock();
                }
            }
        } else {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public final void bytesPerSecond(long j10, long j11) {
        bytesPerSecond$default(this, j10, j11, 0L, 4, null);
    }

    public final void bytesPerSecond(long j10, long j11, long j12) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (j10 < 0) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (j11 <= 0) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (j12 >= j11) {
                this.bytesPerSecond = j10;
                this.waitByteCount = j11;
                this.maxByteCount = j12;
                this.condition.signalAll();
                Unit unit = Unit.f60915a;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        } finally {
            reentrantLock.unlock();
        }
    }

    public Throttler() {
        this(System.nanoTime());
    }
}
