package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.compose.runtime.internal.StabilityInferred;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class u implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final View f34342a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g0 f34343b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public kotlinx.coroutines.r f34344c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final View.OnLayoutChangeListener f34345d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final kt.e<Boolean> f34346e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final kt.i<Boolean> f34347f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final a0 f34348g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final kt.e<a> f34349h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final kt.i<a> f34350i;

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final a0 f34351a;

        public a(@NotNull a0 value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.f34351a = value;
        }

        @NotNull
        public final a0 a() {
            return this.f34351a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidViewVisualMetricsTracker$layoutChangeListener$1$1", f = "MraidViewVisualMetricsTracker.kt", l = {41}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34352h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ int f34354j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ int f34355k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ int f34356l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ int f34357m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i10, int i11, int i12, int i13, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f34354j = i10;
            this.f34355k = i11;
            this.f34356l = i12;
            this.f34357m = i13;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f34354j, this.f34355k, this.f34356l, this.f34357m, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34352h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                this.f34352h = 1;
                if (DelayKt.b(200L, this) == f10) {
                    return f10;
                }
            }
            u.this.p();
            u.this.h(this.f34354j, this.f34355k, this.f34356l, this.f34357m);
            return Unit.f60915a;
        }
    }

    public u(@NotNull View view, @NotNull Context context, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f34342a = view;
        this.f34343b = kotlinx.coroutines.i.i(scope, com.moloco.sdk.internal.scheduling.c.a().getMain());
        View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.b0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                u.k(u.this, view2, i10, i11, i12, i13, i14, i15, i16, i17);
            }
        };
        this.f34345d = onLayoutChangeListener;
        view.addOnLayoutChangeListener(onLayoutChangeListener);
        kt.e<Boolean> a10 = kotlinx.coroutines.flow.o.a(Boolean.FALSE);
        this.f34346e = a10;
        this.f34347f = a10;
        a0 a0Var = new a0(context);
        this.f34348g = a0Var;
        kt.e<a> a11 = kotlinx.coroutines.flow.o.a(new a(a0Var));
        this.f34349h = a11;
        this.f34350i = a11;
    }

    public static final void k(u uVar, View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        kotlinx.coroutines.r d10;
        kotlinx.coroutines.r rVar = uVar.f34344c;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        d10 = gt.g.d(uVar.f34343b, null, null, new b(i10, i11, i12, i13, null), 3, null);
        uVar.f34344c = d10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        kotlinx.coroutines.r rVar = this.f34344c;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f34342a.removeOnLayoutChangeListener(this.f34345d);
    }

    public final void h(int i10, int i11, int i12, int i13) {
        Rect rect = new Rect(i10, i11, i12, i13);
        int width = rect.width();
        int height = rect.height();
        a0 a0Var = this.f34348g;
        a0Var.b(i10, i11, width, height);
        a0Var.e(i10, i11, width, height);
        a0Var.f(i10, i11, width, height);
        a0Var.a(width, height);
        this.f34349h.setValue(new a(this.f34348g));
    }

    @NotNull
    public final kt.i<a> m() {
        return this.f34350i;
    }

    @NotNull
    public final kt.i<Boolean> o() {
        return this.f34347f;
    }

    public final void p() {
        this.f34346e.setValue(Boolean.valueOf(this.f34342a.isShown()));
    }
}
