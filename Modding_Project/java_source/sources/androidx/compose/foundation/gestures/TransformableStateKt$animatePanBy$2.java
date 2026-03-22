package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TransformableState.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.TransformableStateKt$animatePanBy$2", f = "TransformableState.kt", l = {182}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class TransformableStateKt$animatePanBy$2 extends SuspendLambda implements Function2<TransformScope, c<? super Unit>, Object> {
    final /* synthetic */ AnimationSpec<Offset> $animationSpec;
    final /* synthetic */ long $offset;
    final /* synthetic */ Ref.LongRef $previous;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransformableStateKt$animatePanBy$2(Ref.LongRef longRef, long j10, AnimationSpec<Offset> animationSpec, c<? super TransformableStateKt$animatePanBy$2> cVar) {
        super(2, cVar);
        this.$previous = longRef;
        this.$offset = j10;
        this.$animationSpec = animationSpec;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        TransformableStateKt$animatePanBy$2 transformableStateKt$animatePanBy$2 = new TransformableStateKt$animatePanBy$2(this.$previous, this.$offset, this.$animationSpec, cVar);
        transformableStateKt$animatePanBy$2.L$0 = obj;
        return transformableStateKt$animatePanBy$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull TransformScope transformScope, @Nullable c<? super Unit> cVar) {
        return ((TransformableStateKt$animatePanBy$2) create(transformScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            final TransformScope transformScope = (TransformScope) this.L$0;
            AnimationState animationState = new AnimationState(VectorConvertersKt.getVectorConverter(Offset.Companion), Offset.m1595boximpl(this.$previous.element), null, 0L, 0L, false, 60, null);
            Offset m1595boximpl = Offset.m1595boximpl(this.$offset);
            AnimationSpec<Offset> animationSpec = this.$animationSpec;
            final Ref.LongRef longRef = this.$previous;
            Function1<AnimationScope<Offset, AnimationVector2D>, Unit> function1 = new Function1<AnimationScope<Offset, AnimationVector2D>, Unit>() { // from class: androidx.compose.foundation.gestures.TransformableStateKt$animatePanBy$2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(AnimationScope<Offset, AnimationVector2D> animationScope) {
                    invoke2(animationScope);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull AnimationScope<Offset, AnimationVector2D> animateTo) {
                    Intrinsics.checkNotNullParameter(animateTo, "$this$animateTo");
                    TransformScope.m361transformByd4ec7I$default(transformScope, 0.0f, Offset.m1610minusMKHz9U(animateTo.getValue().m1616unboximpl(), Ref.LongRef.this.element), 0.0f, 5, null);
                    Ref.LongRef.this.element = animateTo.getValue().m1616unboximpl();
                }
            };
            this.label = 1;
            if (SuspendAnimationKt.animateTo$default(animationState, m1595boximpl, animationSpec, false, function1, this, 4, null) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
