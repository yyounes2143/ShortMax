package androidx.work;

import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.e;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ListenableFuture.kt */
@Metadata
/* loaded from: classes2.dex */
public final class JobListenableFuture<R> implements e<R> {
    @NotNull
    private final r job;
    @NotNull
    private final SettableFuture<R> underlying;

    public JobListenableFuture(@NotNull r job, @NotNull SettableFuture<R> underlying) {
        Intrinsics.checkNotNullParameter(job, "job");
        Intrinsics.checkNotNullParameter(underlying, "underlying");
        this.job = job;
        this.underlying = underlying;
        job.invokeOnCompletion(new Function1<Throwable, Unit>(this) { // from class: androidx.work.JobListenableFuture.1
            final /* synthetic */ JobListenableFuture<R> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                if (th2 == null) {
                    if (!((JobListenableFuture) this.this$0).underlying.isDone()) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                } else if (th2 instanceof CancellationException) {
                    ((JobListenableFuture) this.this$0).underlying.cancel(true);
                } else {
                    SettableFuture settableFuture = ((JobListenableFuture) this.this$0).underlying;
                    Throwable cause = th2.getCause();
                    if (cause != null) {
                        th2 = cause;
                    }
                    settableFuture.setException(th2);
                }
            }
        });
    }

    @Override // com.google.common.util.concurrent.e
    public void addListener(Runnable runnable, Executor executor) {
        this.underlying.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        return this.underlying.cancel(z10);
    }

    public final void complete(R r10) {
        this.underlying.set(r10);
    }

    @Override // java.util.concurrent.Future
    public R get() {
        return this.underlying.get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.underlying.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.underlying.isDone();
    }

    @Override // java.util.concurrent.Future
    public R get(long j10, TimeUnit timeUnit) {
        return this.underlying.get(j10, timeUnit);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ JobListenableFuture(kotlinx.coroutines.r r1, androidx.work.impl.utils.futures.SettableFuture r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
        /*
            r0 = this;
            r3 = r3 & 2
            if (r3 == 0) goto Ld
            androidx.work.impl.utils.futures.SettableFuture r2 = androidx.work.impl.utils.futures.SettableFuture.create()
            java.lang.String r3 = "create()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
        Ld:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.JobListenableFuture.<init>(kotlinx.coroutines.r, androidx.work.impl.utils.futures.SettableFuture, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
