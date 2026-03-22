package e0;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
/* compiled from: FaultHidingSink.kt */
@Metadata
/* loaded from: classes2.dex */
public final class b extends ForwardingSink {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Function1<IOException, Unit> f50714a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f50715b;

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull Sink sink, @NotNull Function1<? super IOException, Unit> function1) {
        super(sink);
        this.f50714a = function1;
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            super.close();
        } catch (IOException e10) {
            this.f50715b = true;
            this.f50714a.invoke(e10);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public void flush() {
        try {
            super.flush();
        } catch (IOException e10) {
            this.f50715b = true;
            this.f50714a.invoke(e10);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(@NotNull Buffer buffer, long j10) {
        if (this.f50715b) {
            buffer.skip(j10);
            return;
        }
        try {
            super.write(buffer, j10);
        } catch (IOException e10) {
            this.f50715b = true;
            this.f50714a.invoke(e10);
        }
    }
}
