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
@d(c = "androidx.compose.foundation.gestures.TransformableStateKt$rotateBy$2", f = "TransformableState.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class TransformableStateKt$rotateBy$2 extends SuspendLambda implements Function2<TransformScope, c<? super Unit>, Object> {
    final /* synthetic */ float $degrees;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransformableStateKt$rotateBy$2(float f10, c<? super TransformableStateKt$rotateBy$2> cVar) {
        super(2, cVar);
        this.$degrees = f10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        TransformableStateKt$rotateBy$2 transformableStateKt$rotateBy$2 = new TransformableStateKt$rotateBy$2(this.$degrees, cVar);
        transformableStateKt$rotateBy$2.L$0 = obj;
        return transformableStateKt$rotateBy$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull TransformScope transformScope, @Nullable c<? super Unit> cVar) {
        return ((TransformableStateKt$rotateBy$2) create(transformScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            ((TransformScope) this.L$0).mo276transformByd4ec7I(1.0f, Offset.Companion.m1622getZeroF1C5BW0(), this.$degrees);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
