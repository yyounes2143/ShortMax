package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.platform.ComposeView;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public abstract class C<T extends o> extends FrameLayout implements s, m, l, t {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final gt.g0 f33676a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public T f33677b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public View f33678c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final ms.i f33679d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final kt.e<Boolean> f33680e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final ms.i f33681f;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.XenossBannerView$isAdDisplaying$2$1", f = "XenossBannerView.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements at.n<Boolean, Boolean, c<? super Boolean>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33682h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f33683i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ boolean f33684j;

        public a(c<? super a> cVar) {
            super(3, cVar);
        }

        public final Object i(boolean z10, boolean z11, c<? super Boolean> cVar) {
            a aVar = new a(cVar);
            aVar.f33683i = z10;
            aVar.f33684j = z11;
            return aVar.invokeSuspend(Unit.f60915a);
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Boolean bool2, c<? super Boolean> cVar) {
            return i(bool.booleanValue(), bool2.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33682h == 0) {
                kotlin.f.b(obj);
                boolean z11 = this.f33683i;
                boolean z12 = this.f33684j;
                if (z11 && z12) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                return kotlin.coroutines.jvm.internal.a.a(z10);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.XenossBannerView$load$1", f = "XenossBannerView.kt", l = {59}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<gt.g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33685h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ C<T> f33686i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ long f33687j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ m.a f33688k;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.XenossBannerView$load$1$1", f = "XenossBannerView.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<Boolean, c<? super Boolean>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f33689h;

            /* renamed from: i  reason: collision with root package name */
            public /* synthetic */ boolean f33690i;

            public a(c<? super a> cVar) {
                super(2, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final c<Unit> create(Object obj, c<?> cVar) {
                a aVar = new a(cVar);
                aVar.f33690i = ((Boolean) obj).booleanValue();
                return aVar;
            }

            public final Object i(boolean z10, c<? super Boolean> cVar) {
                return ((a) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Boolean bool, c<? super Boolean> cVar) {
                return i(bool.booleanValue(), cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f33689h == 0) {
                    kotlin.f.b(obj);
                    return kotlin.coroutines.jvm.internal.a.a(this.f33690i);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(C<T> c10, long j10, m.a aVar, c<? super b> cVar) {
            super(2, cVar);
            this.f33686i = c10;
            this.f33687j = j10;
            this.f33688k = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new b(this.f33686i, this.f33687j, this.f33688k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33685h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                this.f33686i.getAdLoader().h(this.f33687j, this.f33688k);
                kt.i<Boolean> isLoaded = this.f33686i.isLoaded();
                a aVar = new a(null);
                this.f33685h = 1;
                if (kotlinx.coroutines.flow.c.x(isLoaded, aVar, this) == f10) {
                    return f10;
                }
            }
            this.f33686i.k();
            return Unit.f60915a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C(@NotNull Context context, @NotNull gt.g0 scope) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f33676a = scope;
        this.f33679d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C.j(C.this);
            }
        });
        this.f33680e = kotlinx.coroutines.flow.o.a(Boolean.FALSE);
        this.f33681f = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C.i(C.this);
            }
        });
    }

    public static final kt.i i(C c10) {
        return kotlinx.coroutines.flow.c.T(kotlinx.coroutines.flow.c.G(c10.isLoaded(), c10.f33680e, new a(null)), c10.f33676a, kotlinx.coroutines.flow.m.f61804a.c(), Boolean.FALSE);
    }

    public static final kt.i j(C c10) {
        return c10.getAdLoader().isLoaded();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        ViewGroup viewGroup = null;
        kotlinx.coroutines.i.e(this.f33676a, null, 1, null);
        setAdView(null);
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            viewGroup = (ViewGroup) parent;
        }
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
    }

    @NotNull
    public abstract m getAdLoader();

    @Nullable
    public T getAdShowListener() {
        return this.f33677b;
    }

    @Nullable
    public final View getAdView() {
        return this.f33678c;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.s
    @Nullable
    public abstract /* synthetic */ i getCreativeType();

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    public void h(long j10, @Nullable m.a aVar) {
        gt.g.d(this.f33676a, null, null, new b(this, j10, aVar, null), 3, null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    @NotNull
    public kt.i<Boolean> isLoaded() {
        return (kt.i) this.f33679d.getValue();
    }

    public abstract void k();

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l
    @NotNull
    public kt.i<Boolean> m() {
        return (kt.i) this.f33681f.getValue();
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NotNull View changedView, int i10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        super.onVisibilityChanged(changedView, i10);
        kt.e<Boolean> eVar = this.f33680e;
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        eVar.setValue(Boolean.valueOf(z10));
    }

    public void setAdShowListener(@Nullable T t10) {
        this.f33677b = t10;
    }

    public final void setAdView(@Nullable View view) {
        ComposeView composeView;
        View view2 = this.f33678c;
        this.f33678c = view;
        removeAllViews();
        if (view2 instanceof ComposeView) {
            composeView = (ComposeView) view2;
        } else {
            composeView = null;
        }
        if (composeView != null) {
            composeView.disposeComposition();
        }
        if (view != null) {
            addView(view, new ViewGroup.LayoutParams(-1, -1));
        }
    }

    @VisibleForTesting(otherwise = 4)
    public static /* synthetic */ void getAdView$annotations() {
    }
}
