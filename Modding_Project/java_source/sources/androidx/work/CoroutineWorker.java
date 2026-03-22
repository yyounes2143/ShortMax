package androidx.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.e;
import gt.c0;
import gt.g;
import gt.g0;
import gt.q0;
import gt.s;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CoroutineWorker.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class CoroutineWorker extends ListenableWorker {
    @NotNull
    private final c0 coroutineContext;
    @NotNull
    private final SettableFuture<ListenableWorker.Result> future;
    @NotNull
    private final s job;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(@NotNull Context appContext, @NotNull WorkerParameters params) {
        super(appContext, params);
        s b10;
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(params, "params");
        b10 = JobKt__JobKt.b(null, 1, null);
        this.job = b10;
        SettableFuture<ListenableWorker.Result> create = SettableFuture.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.future = create;
        create.addListener(new Runnable() { // from class: androidx.work.b
            @Override // java.lang.Runnable
            public final void run() {
                CoroutineWorker._init_$lambda$0(CoroutineWorker.this);
            }
        }, getTaskExecutor().getSerialTaskExecutor());
        this.coroutineContext = q0.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(CoroutineWorker this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.future.isCancelled()) {
            r.a.b(this$0.job, null, 1, null);
        }
    }

    static /* synthetic */ Object getForegroundInfo$suspendImpl(CoroutineWorker coroutineWorker, c<? super ForegroundInfo> cVar) {
        throw new IllegalStateException("Not implemented");
    }

    @Nullable
    public abstract Object doWork(@NotNull c<? super ListenableWorker.Result> cVar);

    @NotNull
    public c0 getCoroutineContext() {
        return this.coroutineContext;
    }

    @Nullable
    public Object getForegroundInfo(@NotNull c<? super ForegroundInfo> cVar) {
        return getForegroundInfo$suspendImpl(this, cVar);
    }

    @Override // androidx.work.ListenableWorker
    @NotNull
    public final e<ForegroundInfo> getForegroundInfoAsync() {
        s b10;
        b10 = JobKt__JobKt.b(null, 1, null);
        g0 a10 = i.a(getCoroutineContext().plus(b10));
        JobListenableFuture jobListenableFuture = new JobListenableFuture(b10, null, 2, null);
        g.d(a10, null, null, new CoroutineWorker$getForegroundInfoAsync$1(jobListenableFuture, this, null), 3, null);
        return jobListenableFuture;
    }

    @NotNull
    public final SettableFuture<ListenableWorker.Result> getFuture$work_runtime_ktx_release() {
        return this.future;
    }

    @NotNull
    public final s getJob$work_runtime_ktx_release() {
        return this.job;
    }

    @Override // androidx.work.ListenableWorker
    public final void onStopped() {
        super.onStopped();
        this.future.cancel(false);
    }

    @Nullable
    public final Object setForeground(@NotNull ForegroundInfo foregroundInfo, @NotNull c<? super Unit> cVar) {
        e<Void> foregroundAsync = setForegroundAsync(foregroundInfo);
        Intrinsics.checkNotNullExpressionValue(foregroundAsync, "setForegroundAsync(foregroundInfo)");
        if (foregroundAsync.isDone()) {
            try {
                foregroundAsync.get();
            } catch (ExecutionException e10) {
                Throwable cause = e10.getCause();
                if (cause == null) {
                    throw e10;
                }
                throw cause;
            }
        } else {
            kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
            eVar.H();
            foregroundAsync.addListener(new ListenableFutureKt$await$2$1(eVar, foregroundAsync), DirectExecutor.INSTANCE);
            eVar.u(new ListenableFutureKt$await$2$2(foregroundAsync));
            Object B = eVar.B();
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                f.c(cVar);
            }
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                return B;
            }
        }
        return Unit.f60915a;
    }

    @Nullable
    public final Object setProgress(@NotNull Data data, @NotNull c<? super Unit> cVar) {
        e<Void> progressAsync = setProgressAsync(data);
        Intrinsics.checkNotNullExpressionValue(progressAsync, "setProgressAsync(data)");
        if (progressAsync.isDone()) {
            try {
                progressAsync.get();
            } catch (ExecutionException e10) {
                Throwable cause = e10.getCause();
                if (cause == null) {
                    throw e10;
                }
                throw cause;
            }
        } else {
            kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
            eVar.H();
            progressAsync.addListener(new ListenableFutureKt$await$2$1(eVar, progressAsync), DirectExecutor.INSTANCE);
            eVar.u(new ListenableFutureKt$await$2$2(progressAsync));
            Object B = eVar.B();
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                f.c(cVar);
            }
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                return B;
            }
        }
        return Unit.f60915a;
    }

    @Override // androidx.work.ListenableWorker
    @NotNull
    public final e<ListenableWorker.Result> startWork() {
        g.d(i.a(getCoroutineContext().plus(this.job)), null, null, new CoroutineWorker$startWork$1(this, null), 3, null);
        return this.future;
    }

    @ms.c
    public static /* synthetic */ void getCoroutineContext$annotations() {
    }
}
