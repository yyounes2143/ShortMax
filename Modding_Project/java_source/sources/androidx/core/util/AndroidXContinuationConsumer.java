package androidx.core.util;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidXConsumer.kt */
@Metadata
/* loaded from: classes.dex */
final class AndroidXContinuationConsumer<T> extends AtomicBoolean implements Consumer<T> {
    @NotNull
    private final rs.c<T> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public AndroidXContinuationConsumer(@NotNull rs.c<? super T> cVar) {
        super(false);
        this.continuation = cVar;
    }

    @Override // androidx.core.util.Consumer
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
