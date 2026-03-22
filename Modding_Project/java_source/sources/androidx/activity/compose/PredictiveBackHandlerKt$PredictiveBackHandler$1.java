package androidx.activity.compose;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: PredictiveBackHandler.kt */
@Metadata
@d(c = "androidx.activity.compose.PredictiveBackHandlerKt$PredictiveBackHandler$1", f = "PredictiveBackHandler.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class PredictiveBackHandlerKt$PredictiveBackHandler$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1 $backCallBack;
    final /* synthetic */ boolean $enabled;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PredictiveBackHandlerKt$PredictiveBackHandler$1(PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1 predictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1, boolean z10, c<? super PredictiveBackHandlerKt$PredictiveBackHandler$1> cVar) {
        super(2, cVar);
        this.$backCallBack = predictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;
        this.$enabled = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new PredictiveBackHandlerKt$PredictiveBackHandler$1(this.$backCallBack, this.$enabled, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((PredictiveBackHandlerKt$PredictiveBackHandler$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            setEnabled(this.$enabled);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
