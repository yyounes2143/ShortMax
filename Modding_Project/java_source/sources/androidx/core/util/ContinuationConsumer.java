package androidx.core.util;

import androidx.annotation.RequiresApi;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformConsumer.kt */
@RequiresApi(24)
@Metadata
/* loaded from: classes.dex */
final class ContinuationConsumer<T> extends AtomicBoolean implements java.util.function.Consumer<T> {
    @NotNull
    private final rs.c<T> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationConsumer(@NotNull rs.c<? super T> cVar) {
        super(false);
        this.continuation = cVar;
    }

    @Override // java.util.function.Consumer
    public void accept(T t10) {
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(Result.d(t10));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    @NotNull
    public String toString() {
        return "ContinuationConsumer(resultAccepted = " + get() + ')';
    }
}
