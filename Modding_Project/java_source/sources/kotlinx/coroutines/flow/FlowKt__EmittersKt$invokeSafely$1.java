package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Emitters.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt", f = "Emitters.kt", l = {212}, m = "invokeSafely$FlowKt__EmittersKt")
/* loaded from: classes8.dex */
public final class FlowKt__EmittersKt$invokeSafely$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61480h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61481i;

    /* renamed from: j  reason: collision with root package name */
    int f61482j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__EmittersKt$invokeSafely$1(rs.c<? super FlowKt__EmittersKt$invokeSafely$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object c10;
        this.f61481i = obj;
        this.f61482j |= Integer.MIN_VALUE;
        c10 = FlowKt__EmittersKt.c(null, null, null, this);
        return c10;
    }
}
