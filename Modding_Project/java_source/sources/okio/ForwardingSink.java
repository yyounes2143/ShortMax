package okio;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: ForwardingSink.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class ForwardingSink implements Sink {
    @NotNull
    private final Sink delegate;

    public ForwardingSink(@NotNull Sink delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @c
    @NotNull
    /* renamed from: -deprecated_delegate  reason: not valid java name */
    public final Sink m4965deprecated_delegate() {
        return this.delegate;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    @NotNull
    public final Sink delegate() {
        return this.delegate;
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.delegate.timeout();
    }

    @NotNull
    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        this.delegate.write(source, j10);
    }
}
