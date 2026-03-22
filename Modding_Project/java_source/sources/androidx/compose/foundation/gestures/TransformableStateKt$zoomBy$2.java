package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TransformableState.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.TransformableStateKt$zoomBy$2", f = "TransformableState.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class TransformableStateKt$zoomBy$2 extends SuspendLambda implements Function2<TransformScope, c<? super Unit>, Object> {
    final /* synthetic */ float $zoomFactor;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransformableStateKt$zoomBy$2(float f10, c<? super TransformableStateKt$zoomBy$2> cVar) {
        super(2, cVar);
        this.$zoomFactor = f10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        TransformableStateKt$zoomBy$2 transformableStateKt$zoomBy$2 = new TransformableStateKt$zoomBy$2(this.$zoomFactor, cVar);
        transformableStateKt$zoomBy$2.L$0 = obj;
        return transformableStateKt$zoomBy$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull TransformScope transformScope, @Nullable c<? super Unit> cVar) {
        return ((TransformableStateKt$zoomBy$2) create(transformScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            ((TransformScope) this.L$0).mo276transformByd4ec7I(this.$zoomFactor, Offset.Companion.m1622getZeroF1C5BW0(), 0.0f);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
