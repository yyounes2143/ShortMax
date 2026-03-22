package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Animatable.kt */
@Metadata
@d(c = "androidx.compose.animation.core.Animatable$snapTo$2", f = "Animatable.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class Animatable$snapTo$2 extends SuspendLambda implements Function1<c<? super Unit>, Object> {
    final /* synthetic */ T $targetValue;
    int label;
    final /* synthetic */ Animatable<T, V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Animatable$snapTo$2(Animatable<T, V> animatable, T t10, c<? super Animatable$snapTo$2> cVar) {
        super(1, cVar);
        this.this$0 = animatable;
        this.$targetValue = t10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@NotNull c<?> cVar) {
        return new Animatable$snapTo$2(this.this$0, this.$targetValue, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object clampToBounds;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            this.this$0.endAnimation();
            clampToBounds = this.this$0.clampToBounds(this.$targetValue);
            this.this$0.getInternalState$animation_core_release().setValue$animation_core_release(clampToBounds);
            this.this$0.setTargetValue(clampToBounds);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function1
    @Nullable
    public final Object invoke(@Nullable c<? super Unit> cVar) {
        return ((Animatable$snapTo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
