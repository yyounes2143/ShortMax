package okhttp3.internal.cache;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
/* compiled from: FaultHidingSink.kt */
@Metadata
/* loaded from: classes8.dex */
public class FaultHidingSink extends ForwardingSink {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Function1<IOException, Unit> f63714a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f63715b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FaultHidingSink(@NotNull Sink delegate, @NotNull Function1<? super IOException, Unit> onException) {
        super(delegate);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(onException, "onException");
        this.f63714a = onException;
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f63715b) {
            return;
        }
        try {
            super.close();
        } catch (IOException e10) {
            this.f63715b = true;
            this.f63714a.invoke(e10);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public void flush() {
        if (this.f63715b) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e10) {
            this.f63715b = true;
            this.f63714a.invoke(e10);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(@NotNull Buffer source, long j10) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (this.f63715b) {
            source.skip(j10);
            return;
        }
        try {
            super.write(source, j10);
        } catch (IOException e10) {
            this.f63715b = true;
            this.f63714a.invoke(e10);
        }
    }
}
