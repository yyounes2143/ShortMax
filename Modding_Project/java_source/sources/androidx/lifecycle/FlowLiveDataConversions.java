package androidx.lifecycle;

import androidx.annotation.RequiresApi;
import androidx.arch.core.executor.ArchTaskExecutor;
import java.time.Duration;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FlowLiveData.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FlowLiveDataConversions {
    @NotNull
    public static final <T> kt.b<T> asFlow(@NotNull LiveData<T> liveData) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        return kotlinx.coroutines.flow.c.o(kotlinx.coroutines.flow.c.g(new FlowLiveDataConversions$asFlow$1(liveData, null)));
    }

    @NotNull
    public static final <T> LiveData<T> asLiveData(@NotNull kt.b<? extends T> bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        return asLiveData$default(bVar, (CoroutineContext) null, 0L, 3, (Object) null);
    }

    public static /* synthetic */ LiveData asLiveData$default(kt.b bVar, CoroutineContext coroutineContext, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        if ((i10 & 2) != 0) {
            j10 = 5000;
        }
        return asLiveData(bVar, coroutineContext, j10);
    }

    @NotNull
    public static final <T> LiveData<T> asLiveData(@NotNull kt.b<? extends T> bVar, @NotNull CoroutineContext context) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        return asLiveData$default(bVar, context, 0L, 2, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> LiveData<T> asLiveData(@NotNull kt.b<? extends T> bVar, @NotNull CoroutineContext context, long j10) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        LiveData<T> liveData = (LiveData<T>) CoroutineLiveDataKt.liveData(context, j10, new FlowLiveDataConversions$asLiveData$1(bVar, null));
        if (bVar instanceof kt.i) {
            if (ArchTaskExecutor.getInstance().isMainThread()) {
                liveData.setValue(((kt.i) bVar).getValue());
            } else {
                liveData.postValue(((kt.i) bVar).getValue());
            }
        }
        return liveData;
    }

    public static /* synthetic */ LiveData asLiveData$default(kt.b bVar, Duration duration, CoroutineContext coroutineContext, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        return asLiveData(bVar, duration, coroutineContext);
    }

    @RequiresApi(26)
    @NotNull
    public static final <T> LiveData<T> asLiveData(@NotNull kt.b<? extends T> bVar, @NotNull Duration timeout, @NotNull CoroutineContext context) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        Intrinsics.checkNotNullParameter(context, "context");
        return asLiveData(bVar, context, Api26Impl.INSTANCE.toMillis(timeout));
    }
}
