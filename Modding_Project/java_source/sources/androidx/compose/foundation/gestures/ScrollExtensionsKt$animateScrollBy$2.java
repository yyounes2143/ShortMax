package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ScrollExtensions.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$2", f = "ScrollExtensions.kt", l = {41}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ScrollExtensionsKt$animateScrollBy$2 extends SuspendLambda implements Function2<ScrollScope, c<? super Unit>, Object> {
    final /* synthetic */ AnimationSpec<Float> $animationSpec;
    final /* synthetic */ Ref.FloatRef $previousValue;
    final /* synthetic */ float $value;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollExtensionsKt$animateScrollBy$2(float f10, AnimationSpec<Float> animationSpec, Ref.FloatRef floatRef, c<? super ScrollExtensionsKt$animateScrollBy$2> cVar) {
        super(2, cVar);
        this.$value = f10;
        this.$animationSpec = animationSpec;
        this.$previousValue = floatRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        ScrollExtensionsKt$animateScrollBy$2 scrollExtensionsKt$animateScrollBy$2 = new ScrollExtensionsKt$animateScrollBy$2(this.$value, this.$animationSpec, this.$previousValue, cVar);
        scrollExtensionsKt$animateScrollBy$2.L$0 = obj;
        return scrollExtensionsKt$animateScrollBy$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull ScrollScope scrollScope, @Nullable c<? super Unit> cVar) {
        return ((ScrollExtensionsKt$animateScrollBy$2) create(scrollScope, cVar)).invokeSuspend(Unit.f60915a);
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
            final ScrollScope scrollScope = (ScrollScope) this.L$0;
            float f11 = this.$value;
            AnimationSpec<Float> animationSpec = this.$animationSpec;
            final Ref.FloatRef floatRef = this.$previousValue;
            Function2<Float, Float, Unit> function2 = new Function2<Float, Float, Unit>() { // from class: androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Float f12, Float f13) {
                    invoke(f12.floatValue(), f13.floatValue());
                    return Unit.f60915a;
                }

                public final void invoke(float f12, float f13) {
                    Ref.FloatRef floatRef2 = Ref.FloatRef.this;
                    float f14 = floatRef2.element;
                    floatRef2.element = f14 + scrollScope.scrollBy(f12 - f14);
                }
            };
            this.label = 1;
            if (SuspendAnimationKt.animate$default(0.0f, f11, 0.0f, animationSpec, function2, this, 4, null) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
