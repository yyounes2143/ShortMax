package androidx.work;

import com.google.common.util.concurrent.e;
import gt.i;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.f;
import rs.c;
/* compiled from: ListenableFuture.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ListenableFutureKt$await$2$1 implements Runnable {
    final /* synthetic */ i<R> $cancellableContinuation;
    final /* synthetic */ e<R> $this_await;

    /* JADX WARN: Multi-variable type inference failed */
    public ListenableFutureKt$await$2$1(i<? super R> iVar, e<R> eVar) {
        this.$cancellableContinuation = iVar;
        this.$this_await = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            c cVar = this.$cancellableContinuation;
            Result.a aVar = Result.f60901b;
            cVar.resumeWith(Result.d(this.$this_await.get()));
        } catch (Throwable th2) {
            Throwable cause = th2.getCause();
            if (cause == null) {
                cause = th2;
            }
            if (th2 instanceof CancellationException) {
                this.$cancellableContinuation.cancel(cause);
                return;
            }
            c cVar2 = this.$cancellableContinuation;
            Result.a aVar2 = Result.f60901b;
            cVar2.resumeWith(Result.d(f.a(cause)));
        }
    }
}
