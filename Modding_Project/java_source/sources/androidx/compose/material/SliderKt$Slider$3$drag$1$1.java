package androidx.compose.material;

import androidx.compose.runtime.State;
import at.n;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Slider.kt */
@Metadata
@d(c = "androidx.compose.material.SliderKt$Slider$3$drag$1$1", f = "Slider.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class SliderKt$Slider$3$drag$1$1 extends SuspendLambda implements n<g0, Float, c<? super Unit>, Object> {
    final /* synthetic */ State<Function1<Float, Unit>> $gestureEndAction;
    /* synthetic */ float F$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SliderKt$Slider$3$drag$1$1(State<? extends Function1<? super Float, Unit>> state, c<? super SliderKt$Slider$3$drag$1$1> cVar) {
        super(3, cVar);
        this.$gestureEndAction = state;
    }

    @Nullable
    public final Object invoke(@NotNull g0 g0Var, float f10, @Nullable c<? super Unit> cVar) {
        SliderKt$Slider$3$drag$1$1 sliderKt$Slider$3$drag$1$1 = new SliderKt$Slider$3$drag$1$1(this.$gestureEndAction, cVar);
        sliderKt$Slider$3$drag$1$1.F$0 = f10;
        return sliderKt$Slider$3$drag$1$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            this.$gestureEndAction.getValue().invoke(kotlin.coroutines.jvm.internal.a.c(this.F$0));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Float f10, c<? super Unit> cVar) {
        return invoke(g0Var, f10.floatValue(), cVar);
    }
}
