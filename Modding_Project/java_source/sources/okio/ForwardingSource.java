package okio;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: ForwardingSource.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class ForwardingSource implements Source {
    @NotNull
    private final Source delegate;

    public ForwardingSource(@NotNull Source delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @c
    @NotNull
    /* renamed from: -deprecated_delegate  reason: not valid java name */
    public final Source m4966deprecated_delegate() {
        return this.delegate;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    @NotNull
    public final Source delegate() {
        return this.delegate;
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return this.delegate.read(sink, j10);
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.delegate.timeout();
    }

    @NotNull
    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }
}
