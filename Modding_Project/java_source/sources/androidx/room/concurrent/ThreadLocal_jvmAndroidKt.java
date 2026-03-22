package androidx.room.concurrent;

import gt.t1;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ThreadLocal.jvmAndroid.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ThreadLocal_jvmAndroidKt {
    @NotNull
    public static final <T> CoroutineContext.Element asContextElement(@NotNull ThreadLocal<T> threadLocal, T t10) {
        Intrinsics.checkNotNullParameter(threadLocal, "<this>");
        return t1.a(threadLocal, t10);
    }

    public static final long currentThreadId() {
        return Thread.currentThread().getId();
    }

    public static /* synthetic */ void ThreadLocal$annotations() {
    }
}
