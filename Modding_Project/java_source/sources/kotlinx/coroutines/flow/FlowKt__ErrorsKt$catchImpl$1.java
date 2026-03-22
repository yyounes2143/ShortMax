package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Errors.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt", f = "Errors.kt", l = {152}, m = "catchImpl")
/* loaded from: classes8.dex */
public final class FlowKt__ErrorsKt$catchImpl$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61490h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61491i;

    /* renamed from: j  reason: collision with root package name */
    int f61492j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ErrorsKt$catchImpl$1(rs.c<? super FlowKt__ErrorsKt$catchImpl$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61491i = obj;
        this.f61492j |= Integer.MIN_VALUE;
        return c.j(null, null, this);
    }
}
