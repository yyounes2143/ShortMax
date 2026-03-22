package okhttp3.internal.concurrent;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: TaskQueue.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue$schedule$2\n*L\n1#1,218:1\n*E\n"})
/* loaded from: classes8.dex */
public final class TaskQueue$schedule$2 extends Task {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Function0<Long> f63746e;

    @Override // okhttp3.internal.concurrent.Task
    public long f() {
        return this.f63746e.invoke().longValue();
    }
}
