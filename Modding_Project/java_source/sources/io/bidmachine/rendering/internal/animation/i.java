package io.bidmachine.rendering.internal.animation;

import android.view.View;
import android.view.ViewGroup;
import gt.g0;
import io.bidmachine.rendering.model.AnimationEventType;
import io.bidmachine.util.ViewUtilsKt;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class i implements eq.c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final g0 f58066a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final io.bidmachine.rendering.internal.h f58067b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Map<Integer, eq.b> f58068c;

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$addAndPrepare$1", f = "DefaultAdAnimationController.kt", l = {32, 35}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58069h;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ tp.f f58071j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ boolean f58072k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ AnimationEventType f58073l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(tp.f fVar, boolean z10, AnimationEventType animationEventType, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f58071j = fVar;
            this.f58072k = z10;
            this.f58073l = animationEventType;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new a(this.f58071j, this.f58072k, this.f58073l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58069h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                i iVar = i.this;
                tp.f fVar = this.f58071j;
                this.f58069h = 1;
                obj = iVar.n(fVar, this);
                if (obj == f10) {
                    return f10;
                }
            }
            View view = (View) obj;
            if (view != null) {
                tp.f fVar2 = this.f58071j;
                boolean z10 = this.f58072k;
                i iVar2 = i.this;
                AnimationEventType animationEventType = this.f58073l;
                eq.b b10 = eq.e.b(fVar2.h(), z10);
                boolean i11 = fVar2.i();
                this.f58069h = 2;
                if (iVar2.i(view, b10, animationEventType, i11, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$addAndPrepare$2", f = "DefaultAdAnimationController.kt", l = {45, 48}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58074h;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ tp.g f58076j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ AnimationEventType f58077k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(tp.g gVar, AnimationEventType animationEventType, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f58076j = gVar;
            this.f58077k = animationEventType;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new b(this.f58076j, this.f58077k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58074h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                i iVar = i.this;
                tp.g gVar = this.f58076j;
                this.f58074h = 1;
                obj = iVar.o(gVar, this);
                if (obj == f10) {
                    return f10;
                }
            }
            View view = (View) obj;
            if (view != null) {
                tp.g gVar2 = this.f58076j;
                i iVar2 = i.this;
                AnimationEventType animationEventType = this.f58077k;
                eq.b c10 = eq.e.c(gVar2.d());
                this.f58074h = 2;
                if (iVar2.i(view, c10, animationEventType, true, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController", f = "DefaultAdAnimationController.kt", l = {61}, m = "addAndPrepare")
    /* loaded from: classes8.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        Object f58078h;

        /* renamed from: i  reason: collision with root package name */
        Object f58079i;

        /* renamed from: j  reason: collision with root package name */
        Object f58080j;

        /* renamed from: k  reason: collision with root package name */
        /* synthetic */ Object f58081k;

        /* renamed from: m  reason: collision with root package name */
        int f58083m;

        c(rs.c<? super c> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f58081k = obj;
            this.f58083m |= Integer.MIN_VALUE;
            return i.this.i(null, null, null, false, this);
        }
    }

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$animate$1", f = "DefaultAdAnimationController.kt", l = {101, 102}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    static final class d extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58084h;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ tp.f f58086j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ AnimationEventType f58087k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ boolean f58088l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ Runnable f58089m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ Runnable f58090n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(tp.f fVar, AnimationEventType animationEventType, boolean z10, Runnable runnable, Runnable runnable2, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f58086j = fVar;
            this.f58087k = animationEventType;
            this.f58088l = z10;
            this.f58089m = runnable;
            this.f58090n = runnable2;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new d(this.f58086j, this.f58087k, this.f58088l, this.f58089m, this.f58090n, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58084h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                i iVar = i.this;
                tp.f fVar = this.f58086j;
                this.f58084h = 1;
                obj = iVar.n(fVar, this);
                if (obj == f10) {
                    return f10;
                }
            }
            View view = (View) obj;
            if (view != null) {
                i iVar2 = i.this;
                AnimationEventType animationEventType = this.f58087k;
                boolean z10 = this.f58088l;
                tp.f fVar2 = this.f58086j;
                Runnable runnable = this.f58089m;
                Runnable runnable2 = this.f58090n;
                boolean i11 = fVar2.i();
                this.f58084h = 2;
                if (iVar2.j(view, animationEventType, z10, i11, runnable, runnable2, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$animate$2", f = "DefaultAdAnimationController.kt", l = {114, 115}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    static final class e extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58091h;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ tp.g f58093j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ AnimationEventType f58094k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ boolean f58095l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ Runnable f58096m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ Runnable f58097n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(tp.g gVar, AnimationEventType animationEventType, boolean z10, Runnable runnable, Runnable runnable2, rs.c<? super e> cVar) {
            super(2, cVar);
            this.f58093j = gVar;
            this.f58094k = animationEventType;
            this.f58095l = z10;
            this.f58096m = runnable;
            this.f58097n = runnable2;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((e) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new e(this.f58093j, this.f58094k, this.f58095l, this.f58096m, this.f58097n, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58091h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                i iVar = i.this;
                tp.g gVar = this.f58093j;
                this.f58091h = 1;
                obj = iVar.o(gVar, this);
                if (obj == f10) {
                    return f10;
                }
            }
            View view = (View) obj;
            if (view != null) {
                i iVar2 = i.this;
                AnimationEventType animationEventType = this.f58094k;
                boolean z10 = this.f58095l;
                Runnable runnable = this.f58096m;
                Runnable runnable2 = this.f58097n;
                this.f58091h = 2;
                if (iVar2.j(view, animationEventType, z10, true, runnable, runnable2, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController", f = "DefaultAdAnimationController.kt", l = {199}, m = "animate")
    /* loaded from: classes8.dex */
    public static final class f extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        Object f58098h;

        /* renamed from: i  reason: collision with root package name */
        Object f58099i;

        /* renamed from: j  reason: collision with root package name */
        Object f58100j;

        /* renamed from: k  reason: collision with root package name */
        Object f58101k;

        /* renamed from: l  reason: collision with root package name */
        Object f58102l;

        /* renamed from: m  reason: collision with root package name */
        boolean f58103m;

        /* renamed from: n  reason: collision with root package name */
        /* synthetic */ Object f58104n;

        /* renamed from: p  reason: collision with root package name */
        int f58106p;

        f(rs.c<? super f> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f58104n = obj;
            this.f58106p |= Integer.MIN_VALUE;
            return i.this.j(null, null, false, false, null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$awaitLayoutImmediate$2", f = "DefaultAdAnimationController.kt", l = {179}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    public static final class g extends SuspendLambda implements Function2<g0, rs.c<? super View>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58107h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ View f58108i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(View view, rs.c<? super g> cVar) {
            super(2, cVar);
            this.f58108i = view;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super View> cVar) {
            return ((g) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new g(this.f58108i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58107h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                View view = this.f58108i;
                this.f58107h = 1;
                obj = ViewUtilsKt.d(view, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$getViewImmediate$2", f = "DefaultAdAnimationController.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    public static final class h extends SuspendLambda implements Function2<g0, rs.c<? super View>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58109h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ tp.f f58110i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(tp.f fVar, rs.c<? super h> cVar) {
            super(2, cVar);
            this.f58110i = fVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super View> cVar) {
            return ((h) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new h(this.f58110i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f58109h == 0) {
                kotlin.f.b(obj);
                return this.f58110i.j();
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$getViewImmediate$4", f = "DefaultAdAnimationController.kt", l = {}, m = "invokeSuspend")
    /* renamed from: io.bidmachine.rendering.internal.animation.i$i  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0810i extends SuspendLambda implements Function2<g0, rs.c<? super ViewGroup>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58111h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ tp.g f58112i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0810i(tp.g gVar, rs.c<? super C0810i> cVar) {
            super(2, cVar);
            this.f58112i = gVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super ViewGroup> cVar) {
            return ((C0810i) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new C0810i(this.f58112i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f58111h == 0) {
                kotlin.f.b(obj);
                return this.f58112i.e();
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$prepareAndAnimate$1", f = "DefaultAdAnimationController.kt", l = {74, 75}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    static final class j extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58113h;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ tp.f f58115j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ AnimationEventType f58116k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ boolean f58117l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ Runnable f58118m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ Runnable f58119n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(tp.f fVar, AnimationEventType animationEventType, boolean z10, Runnable runnable, Runnable runnable2, rs.c<? super j> cVar) {
            super(2, cVar);
            this.f58115j = fVar;
            this.f58116k = animationEventType;
            this.f58117l = z10;
            this.f58118m = runnable;
            this.f58119n = runnable2;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((j) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new j(this.f58115j, this.f58116k, this.f58117l, this.f58118m, this.f58119n, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58113h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                i iVar = i.this;
                tp.f fVar = this.f58115j;
                this.f58113h = 1;
                obj = iVar.n(fVar, this);
                if (obj == f10) {
                    return f10;
                }
            }
            View view = (View) obj;
            if (view != null) {
                i iVar2 = i.this;
                AnimationEventType animationEventType = this.f58116k;
                boolean z10 = this.f58117l;
                tp.f fVar2 = this.f58115j;
                Runnable runnable = this.f58118m;
                Runnable runnable2 = this.f58119n;
                boolean i11 = fVar2.i();
                this.f58113h = 2;
                if (iVar2.q(view, animationEventType, z10, i11, runnable, runnable2, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController", f = "DefaultAdAnimationController.kt", l = {199}, m = "prepareAndAnimate")
    /* loaded from: classes8.dex */
    public static final class k extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        Object f58120h;

        /* renamed from: i  reason: collision with root package name */
        Object f58121i;

        /* renamed from: j  reason: collision with root package name */
        Object f58122j;

        /* renamed from: k  reason: collision with root package name */
        Object f58123k;

        /* renamed from: l  reason: collision with root package name */
        Object f58124l;

        /* renamed from: m  reason: collision with root package name */
        boolean f58125m;

        /* renamed from: n  reason: collision with root package name */
        /* synthetic */ Object f58126n;

        /* renamed from: p  reason: collision with root package name */
        int f58128p;

        k(rs.c<? super k> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f58126n = obj;
            this.f58128p |= Integer.MIN_VALUE;
            return i.this.q(null, null, false, false, null, null, this);
        }
    }

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$remove$1", f = "DefaultAdAnimationController.kt", l = {134, 135}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    static final class l extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58129h;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ tp.f f58131j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(tp.f fVar, rs.c<? super l> cVar) {
            super(2, cVar);
            this.f58131j = fVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((l) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new l(this.f58131j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58129h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                i iVar = i.this;
                tp.f fVar = this.f58131j;
                this.f58129h = 1;
                obj = iVar.n(fVar, this);
                if (obj == f10) {
                    return f10;
                }
            }
            View view = (View) obj;
            if (view != null) {
                i iVar2 = i.this;
                this.f58129h = 2;
                if (iVar2.r(view, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$remove$2", f = "DefaultAdAnimationController.kt", l = {141, 142}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    static final class m extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58132h;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ tp.g f58134j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(tp.g gVar, rs.c<? super m> cVar) {
            super(2, cVar);
            this.f58134j = gVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((m) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new m(this.f58134j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58132h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                i iVar = i.this;
                tp.g gVar = this.f58134j;
                this.f58132h = 1;
                obj = iVar.o(gVar, this);
                if (obj == f10) {
                    return f10;
                }
            }
            View view = (View) obj;
            if (view != null) {
                i iVar2 = i.this;
                this.f58132h = 2;
                if (iVar2.r(view, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$removeAll$1", f = "DefaultAdAnimationController.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    static final class n extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58135h;

        n(rs.c<? super n> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((n) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new n(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f58135h == 0) {
                kotlin.f.b(obj);
                for (Map.Entry entry : i.this.f58068c.entrySet()) {
                    ((eq.b) entry.getValue()).b();
                }
                i.this.f58068c.clear();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public i(@NotNull g0 coroutineScope, @NotNull io.bidmachine.rendering.internal.h coroutineDispatchers) {
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
        this.f58066a = coroutineScope;
        this.f58067b = coroutineDispatchers;
        this.f58068c = new ConcurrentHashMap();
    }

    private final Object k(View view, rs.c<? super View> cVar) {
        return gt.e.g(this.f58067b.i(), new g(view, null), cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object n(tp.f fVar, rs.c<? super View> cVar) {
        return gt.e.g(this.f58067b.i(), new h(fVar, null), cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object o(tp.g gVar, rs.c<? super View> cVar) {
        return gt.e.g(this.f58067b.i(), new C0810i(gVar, null), cVar);
    }

    @Override // eq.c
    public boolean a(int i10) {
        eq.b bVar = this.f58068c.get(Integer.valueOf(i10));
        return bVar != null && bVar.g();
    }

    @Override // eq.c
    public void c(@NotNull tp.g adPhase) {
        Intrinsics.checkNotNullParameter(adPhase, "adPhase");
        gt.g.d(this.f58066a, this.f58067b.g(), null, new m(adPhase, null), 2, null);
    }

    @Override // eq.c
    public void d(@NotNull tp.g adPhase, @NotNull AnimationEventType eventType, boolean z10, @Nullable Runnable runnable, @Nullable Runnable runnable2) {
        Intrinsics.checkNotNullParameter(adPhase, "adPhase");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        gt.g.d(this.f58066a, this.f58067b.g(), null, new e(adPhase, eventType, z10, runnable, runnable2, null), 2, null);
    }

    @Override // eq.c
    public void e(@NotNull tp.f adElement, @NotNull AnimationEventType eventType, boolean z10, @Nullable Runnable runnable, @Nullable Runnable runnable2) {
        Intrinsics.checkNotNullParameter(adElement, "adElement");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        gt.g.d(this.f58066a, this.f58067b.g(), null, new d(adElement, eventType, z10, runnable, runnable2, null), 2, null);
    }

    @Override // eq.c
    public void f(@NotNull tp.f adElement, @NotNull AnimationEventType eventType, boolean z10, @Nullable Runnable runnable, @Nullable Runnable runnable2) {
        Intrinsics.checkNotNullParameter(adElement, "adElement");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        gt.g.d(this.f58066a, this.f58067b.g(), null, new j(adElement, eventType, z10, runnable, runnable2, null), 2, null);
    }

    @Override // eq.c
    public void g(@NotNull tp.g adPhase, @NotNull AnimationEventType eventType) {
        Intrinsics.checkNotNullParameter(adPhase, "adPhase");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        gt.g.d(this.f58066a, this.f58067b.g(), null, new b(adPhase, eventType, null), 2, null);
    }

    @Override // eq.c
    public void h(@NotNull tp.f adElement, boolean z10, @NotNull AnimationEventType eventType) {
        Intrinsics.checkNotNullParameter(adElement, "adElement");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        gt.g.d(this.f58066a, this.f58067b.g(), null, new a(adElement, z10, eventType, null), 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object i(@org.jetbrains.annotations.NotNull android.view.View r5, @org.jetbrains.annotations.NotNull eq.b r6, @org.jetbrains.annotations.NotNull io.bidmachine.rendering.model.AnimationEventType r7, boolean r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r9) {
        /*
            r4 = this;
            boolean r0 = r9 instanceof io.bidmachine.rendering.internal.animation.i.c
            if (r0 == 0) goto L13
            r0 = r9
            io.bidmachine.rendering.internal.animation.i$c r0 = (io.bidmachine.rendering.internal.animation.i.c) r0
            int r1 = r0.f58083m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f58083m = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.animation.i$c r0 = new io.bidmachine.rendering.internal.animation.i$c
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f58081k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f58083m
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r5 = r0.f58080j
            r7 = r5
            io.bidmachine.rendering.model.AnimationEventType r7 = (io.bidmachine.rendering.model.AnimationEventType) r7
            java.lang.Object r5 = r0.f58079i
            r6 = r5
            eq.b r6 = (eq.b) r6
            java.lang.Object r5 = r0.f58078h
            android.view.View r5 = (android.view.View) r5
            kotlin.f.b(r9)
            goto L60
        L37:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3f:
            kotlin.f.b(r9)
            java.util.Map<java.lang.Integer, eq.b> r9 = r4.f58068c
            int r2 = r5.getId()
            java.lang.Integer r2 = kotlin.coroutines.jvm.internal.a.d(r2)
            r9.put(r2, r6)
            if (r8 == 0) goto L60
            r0.f58078h = r5
            r0.f58079i = r6
            r0.f58080j = r7
            r0.f58083m = r3
            java.lang.Object r8 = r4.k(r5, r0)
            if (r8 != r1) goto L60
            return r1
        L60:
            r6.d(r5, r7)
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.animation.i.i(android.view.View, eq.b, io.bidmachine.rendering.model.AnimationEventType, boolean, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object j(@org.jetbrains.annotations.NotNull android.view.View r9, @org.jetbrains.annotations.NotNull io.bidmachine.rendering.model.AnimationEventType r10, boolean r11, boolean r12, @org.jetbrains.annotations.Nullable java.lang.Runnable r13, @org.jetbrains.annotations.Nullable java.lang.Runnable r14, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r15) {
        /*
            r8 = this;
            boolean r0 = r15 instanceof io.bidmachine.rendering.internal.animation.i.f
            if (r0 == 0) goto L13
            r0 = r15
            io.bidmachine.rendering.internal.animation.i$f r0 = (io.bidmachine.rendering.internal.animation.i.f) r0
            int r1 = r0.f58106p
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f58106p = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.animation.i$f r0 = new io.bidmachine.rendering.internal.animation.i$f
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.f58104n
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f58106p
            r3 = 1
            if (r2 == 0) goto L4f
            if (r2 != r3) goto L47
            boolean r11 = r0.f58103m
            java.lang.Object r9 = r0.f58102l
            eq.b r9 = (eq.b) r9
            java.lang.Object r10 = r0.f58101k
            r14 = r10
            java.lang.Runnable r14 = (java.lang.Runnable) r14
            java.lang.Object r10 = r0.f58100j
            r13 = r10
            java.lang.Runnable r13 = (java.lang.Runnable) r13
            java.lang.Object r10 = r0.f58099i
            io.bidmachine.rendering.model.AnimationEventType r10 = (io.bidmachine.rendering.model.AnimationEventType) r10
            java.lang.Object r12 = r0.f58098h
            android.view.View r12 = (android.view.View) r12
            kotlin.f.b(r15)
            r2 = r9
            r4 = r10
            r7 = r11
            r3 = r12
            r5 = r13
            r6 = r14
            goto L8c
        L47:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L4f:
            kotlin.f.b(r15)
            java.util.Map<java.lang.Integer, eq.b> r15 = r8.f58068c
            int r2 = r9.getId()
            java.lang.Integer r2 = kotlin.coroutines.jvm.internal.a.d(r2)
            java.lang.Object r15 = r15.get(r2)
            eq.b r15 = (eq.b) r15
            if (r15 != 0) goto L6f
            if (r13 == 0) goto L69
            r13.run()
        L69:
            if (r14 == 0) goto L8f
            r14.run()
            goto L8f
        L6f:
            if (r12 == 0) goto L86
            r0.f58098h = r9
            r0.f58099i = r10
            r0.f58100j = r13
            r0.f58101k = r14
            r0.f58102l = r15
            r0.f58103m = r11
            r0.f58106p = r3
            java.lang.Object r12 = r8.k(r9, r0)
            if (r12 != r1) goto L86
            return r1
        L86:
            r3 = r9
            r4 = r10
            r7 = r11
            r5 = r13
            r6 = r14
            r2 = r15
        L8c:
            r2.e(r3, r4, r5, r6, r7)
        L8f:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.animation.i.j(android.view.View, io.bidmachine.rendering.model.AnimationEventType, boolean, boolean, java.lang.Runnable, java.lang.Runnable, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object q(@org.jetbrains.annotations.NotNull android.view.View r9, @org.jetbrains.annotations.NotNull io.bidmachine.rendering.model.AnimationEventType r10, boolean r11, boolean r12, @org.jetbrains.annotations.Nullable java.lang.Runnable r13, @org.jetbrains.annotations.Nullable java.lang.Runnable r14, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r15) {
        /*
            r8 = this;
            boolean r0 = r15 instanceof io.bidmachine.rendering.internal.animation.i.k
            if (r0 == 0) goto L13
            r0 = r15
            io.bidmachine.rendering.internal.animation.i$k r0 = (io.bidmachine.rendering.internal.animation.i.k) r0
            int r1 = r0.f58128p
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f58128p = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.animation.i$k r0 = new io.bidmachine.rendering.internal.animation.i$k
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.f58126n
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f58128p
            r3 = 1
            if (r2 == 0) goto L4f
            if (r2 != r3) goto L47
            boolean r11 = r0.f58125m
            java.lang.Object r9 = r0.f58124l
            eq.b r9 = (eq.b) r9
            java.lang.Object r10 = r0.f58123k
            r14 = r10
            java.lang.Runnable r14 = (java.lang.Runnable) r14
            java.lang.Object r10 = r0.f58122j
            r13 = r10
            java.lang.Runnable r13 = (java.lang.Runnable) r13
            java.lang.Object r10 = r0.f58121i
            io.bidmachine.rendering.model.AnimationEventType r10 = (io.bidmachine.rendering.model.AnimationEventType) r10
            java.lang.Object r12 = r0.f58120h
            android.view.View r12 = (android.view.View) r12
            kotlin.f.b(r15)
            r2 = r9
            r4 = r10
            r7 = r11
            r3 = r12
            r5 = r13
            r6 = r14
            goto L8c
        L47:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L4f:
            kotlin.f.b(r15)
            java.util.Map<java.lang.Integer, eq.b> r15 = r8.f58068c
            int r2 = r9.getId()
            java.lang.Integer r2 = kotlin.coroutines.jvm.internal.a.d(r2)
            java.lang.Object r15 = r15.get(r2)
            eq.b r15 = (eq.b) r15
            if (r15 != 0) goto L6f
            if (r13 == 0) goto L69
            r13.run()
        L69:
            if (r14 == 0) goto L92
            r14.run()
            goto L92
        L6f:
            if (r12 == 0) goto L86
            r0.f58120h = r9
            r0.f58121i = r10
            r0.f58122j = r13
            r0.f58123k = r14
            r0.f58124l = r15
            r0.f58125m = r11
            r0.f58128p = r3
            java.lang.Object r12 = r8.k(r9, r0)
            if (r12 != r1) goto L86
            return r1
        L86:
            r3 = r9
            r4 = r10
            r7 = r11
            r5 = r13
            r6 = r14
            r2 = r15
        L8c:
            r2.d(r3, r4)
            r2.e(r3, r4, r5, r6, r7)
        L92:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.animation.i.q(android.view.View, io.bidmachine.rendering.model.AnimationEventType, boolean, boolean, java.lang.Runnable, java.lang.Runnable, rs.c):java.lang.Object");
    }

    @Nullable
    public Object r(@NotNull View view, @NotNull rs.c<? super Unit> cVar) {
        eq.b remove = this.f58068c.remove(kotlin.coroutines.jvm.internal.a.d(view.getId()));
        if (remove != null) {
            remove.b();
        }
        return Unit.f60915a;
    }

    @Override // eq.c
    public void a(@NotNull tp.f adElement) {
        Intrinsics.checkNotNullParameter(adElement, "adElement");
        gt.g.d(this.f58066a, this.f58067b.g(), null, new l(adElement, null), 2, null);
    }

    @Override // eq.c
    public void a() {
        gt.g.d(this.f58066a, this.f58067b.g(), null, new n(null), 2, null);
    }
}
