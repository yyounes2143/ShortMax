package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Await.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", l = {58}, m = "joinAll")
/* loaded from: classes8.dex */
public final class AwaitKt$joinAll$3 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61272h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61273i;

    /* renamed from: j  reason: collision with root package name */
    int f61274j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AwaitKt$joinAll$3(rs.c<? super AwaitKt$joinAll$3> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61273i = obj;
        this.f61274j |= Integer.MIN_VALUE;
        return AwaitKt.c(null, this);
    }
}
