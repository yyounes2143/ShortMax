package androidx.compose.foundation.gestures;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import at.n;
import gt.g;
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
/* compiled from: Scrollable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.ScrollableKt$pointerScrollable$4", f = "Scrollable.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ScrollableKt$pointerScrollable$4 extends SuspendLambda implements n<g0, Float, c<? super Unit>, Object> {
    final /* synthetic */ MutableState<NestedScrollDispatcher> $nestedScrollDispatcher;
    final /* synthetic */ State<ScrollingLogic> $scrollLogic;
    /* synthetic */ float F$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scrollable.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.gestures.ScrollableKt$pointerScrollable$4$1", f = "Scrollable.kt", l = {258}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.gestures.ScrollableKt$pointerScrollable$4$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ State<ScrollingLogic> $scrollLogic;
        final /* synthetic */ float $velocity;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(State<ScrollingLogic> state, float f10, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$scrollLogic = state;
            this.$velocity = f10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.$scrollLogic, this.$velocity, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                float f11 = this.$velocity;
                this.label = 1;
                if (this.$scrollLogic.getValue().onDragStopped(f11, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableKt$pointerScrollable$4(MutableState<NestedScrollDispatcher> mutableState, State<ScrollingLogic> state, c<? super ScrollableKt$pointerScrollable$4> cVar) {
        super(3, cVar);
        this.$nestedScrollDispatcher = mutableState;
        this.$scrollLogic = state;
    }

    @Nullable
    public final Object invoke(@NotNull g0 g0Var, float f10, @Nullable c<? super Unit> cVar) {
        ScrollableKt$pointerScrollable$4 scrollableKt$pointerScrollable$4 = new ScrollableKt$pointerScrollable$4(this.$nestedScrollDispatcher, this.$scrollLogic, cVar);
        scrollableKt$pointerScrollable$4.F$0 = f10;
        return scrollableKt$pointerScrollable$4.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            g.d(this.$nestedScrollDispatcher.getValue().getCoroutineScope(), null, null, new AnonymousClass1(this.$scrollLogic, this.F$0, null), 3, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Float f10, c<? super Unit> cVar) {
        return invoke(g0Var, f10.floatValue(), cVar);
    }
}
