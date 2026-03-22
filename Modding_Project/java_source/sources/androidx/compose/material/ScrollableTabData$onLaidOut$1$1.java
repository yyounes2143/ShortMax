package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.ScrollState;
import gt.g0;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TabRow.kt */
@Metadata
@d(c = "androidx.compose.material.ScrollableTabData$onLaidOut$1$1", f = "TabRow.kt", l = {475}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ScrollableTabData$onLaidOut$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ int $calculatedOffset;
    int label;
    final /* synthetic */ ScrollableTabData this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableTabData$onLaidOut$1$1(ScrollableTabData scrollableTabData, int i10, c<? super ScrollableTabData$onLaidOut$1$1> cVar) {
        super(2, cVar);
        this.this$0 = scrollableTabData;
        this.$calculatedOffset = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new ScrollableTabData$onLaidOut$1$1(this.this$0, this.$calculatedOffset, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((ScrollableTabData$onLaidOut$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ScrollState scrollState;
        AnimationSpec<Float> animationSpec;
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
            scrollState = this.this$0.scrollState;
            int i11 = this.$calculatedOffset;
            animationSpec = TabRowKt.ScrollableTabRowScrollSpec;
            this.label = 1;
            if (scrollState.animateScrollTo(i11, animationSpec, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
