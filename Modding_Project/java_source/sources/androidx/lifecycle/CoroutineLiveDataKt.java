package androidx.lifecycle;

import androidx.annotation.RequiresApi;
import gt.q0;
import java.time.Duration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineLiveData.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CoroutineLiveDataKt {
    public static final long DEFAULT_TIMEOUT = 5000;

    @Nullable
    public static final <T> Object addDisposableSource(@NotNull MediatorLiveData<T> mediatorLiveData, @NotNull LiveData<T> liveData, @NotNull rs.c<? super EmittedSource> cVar) {
        return gt.e.g(q0.c().m(), new CoroutineLiveDataKt$addDisposableSource$2(mediatorLiveData, liveData, null), cVar);
    }

    @RequiresApi(26)
    @NotNull
    public static final <T> LiveData<T> liveData(@NotNull Duration timeout, @NotNull Function2<? super LiveDataScope<T>, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        Intrinsics.checkNotNullParameter(block, "block");
        return liveData$default(timeout, (CoroutineContext) null, block, 2, (Object) null);
    }

    public static /* synthetic */ LiveData liveData$default(CoroutineContext coroutineContext, long j10, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        if ((i10 & 2) != 0) {
            j10 = 5000;
        }
        return liveData(coroutineContext, j10, function2);
    }

    @NotNull
    public static final <T> LiveData<T> liveData(@NotNull CoroutineContext context, @NotNull Function2<? super LiveDataScope<T>, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        return liveData$default(context, 0L, block, 2, (Object) null);
    }

    @NotNull
    public static final <T> LiveData<T> liveData(@NotNull Function2<? super LiveDataScope<T>, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return liveData$default((CoroutineContext) null, 0L, block, 3, (Object) null);
    }

    public static /* synthetic */ LiveData liveData$default(Duration duration, CoroutineContext coroutineContext, Function2 function2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        return liveData(duration, coroutineContext, function2);
    }

    @NotNull
    public static final <T> LiveData<T> liveData(@NotNull CoroutineContext context, long j10, @NotNull Function2<? super LiveDataScope<T>, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        return new CoroutineLiveData(context, j10, block);
    }

    @RequiresApi(26)
    @NotNull
    public static final <T> LiveData<T> liveData(@NotNull Duration timeout, @NotNull CoroutineContext context, @NotNull Function2<? super LiveDataScope<T>, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        return new CoroutineLiveData(context, Api26Impl.INSTANCE.toMillis(timeout), block);
    }
}
