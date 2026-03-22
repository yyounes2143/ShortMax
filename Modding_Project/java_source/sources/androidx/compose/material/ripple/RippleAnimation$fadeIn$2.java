package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RippleAnimation.kt */
@Metadata
@d(c = "androidx.compose.material.ripple.RippleAnimation$fadeIn$2", f = "RippleAnimation.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class RippleAnimation$fadeIn$2 extends SuspendLambda implements Function2<g0, c<? super r>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ RippleAnimation this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RippleAnimation.kt */
    @Metadata
    @d(c = "androidx.compose.material.ripple.RippleAnimation$fadeIn$2$1", f = "RippleAnimation.kt", l = {89}, m = "invokeSuspend")
    /* renamed from: androidx.compose.material.ripple.RippleAnimation$fadeIn$2$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        int label;
        final /* synthetic */ RippleAnimation this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RippleAnimation rippleAnimation, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.this$0 = rippleAnimation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.this$0, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Animatable animatable;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                animatable = this.this$0.animatedAlpha;
                Float c10 = kotlin.coroutines.jvm.internal.a.c(1.0f);
                TweenSpec tween$default = AnimationSpecKt.tween$default(75, 0, EasingKt.getLinearEasing(), 2, null);
                this.label = 1;
                if (Animatable.animateTo$default(animatable, c10, tween$default, null, null, this, 12, null) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RippleAnimation.kt */
    @Metadata
    @d(c = "androidx.compose.material.ripple.RippleAnimation$fadeIn$2$2", f = "RippleAnimation.kt", l = {95}, m = "invokeSuspend")
    /* renamed from: androidx.compose.material.ripple.RippleAnimation$fadeIn$2$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        int label;
        final /* synthetic */ RippleAnimation this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(RippleAnimation rippleAnimation, c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.this$0 = rippleAnimation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass2(this.this$0, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Animatable animatable;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                animatable = this.this$0.animatedRadiusPercent;
                Float c10 = kotlin.coroutines.jvm.internal.a.c(1.0f);
                TweenSpec tween$default = AnimationSpecKt.tween$default(225, 0, EasingKt.getFastOutSlowInEasing(), 2, null);
                this.label = 1;
                if (Animatable.animateTo$default(animatable, c10, tween$default, null, null, this, 12, null) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RippleAnimation.kt */
    @Metadata
    @d(c = "androidx.compose.material.ripple.RippleAnimation$fadeIn$2$3", f = "RippleAnimation.kt", l = {101}, m = "invokeSuspend")
    /* renamed from: androidx.compose.material.ripple.RippleAnimation$fadeIn$2$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        int label;
        final /* synthetic */ RippleAnimation this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(RippleAnimation rippleAnimation, c<? super AnonymousClass3> cVar) {
            super(2, cVar);
            this.this$0 = rippleAnimation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass3(this.this$0, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Animatable animatable;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                animatable = this.this$0.animatedCenterPercent;
                Float c10 = kotlin.coroutines.jvm.internal.a.c(1.0f);
                TweenSpec tween$default = AnimationSpecKt.tween$default(225, 0, EasingKt.getLinearEasing(), 2, null);
                this.label = 1;
                if (Animatable.animateTo$default(animatable, c10, tween$default, null, null, this, 12, null) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleAnimation$fadeIn$2(RippleAnimation rippleAnimation, c<? super RippleAnimation$fadeIn$2> cVar) {
        super(2, cVar);
        this.this$0 = rippleAnimation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        RippleAnimation$fadeIn$2 rippleAnimation$fadeIn$2 = new RippleAnimation$fadeIn$2(this.this$0, cVar);
        rippleAnimation$fadeIn$2.L$0 = obj;
        return rippleAnimation$fadeIn$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super r> cVar) {
        return ((RippleAnimation$fadeIn$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        r d10;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            g0 g0Var = (g0) this.L$0;
            g.d(g0Var, null, null, new AnonymousClass1(this.this$0, null), 3, null);
            g.d(g0Var, null, null, new AnonymousClass2(this.this$0, null), 3, null);
            d10 = g.d(g0Var, null, null, new AnonymousClass3(this.this$0, null), 3, null);
            return d10;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
