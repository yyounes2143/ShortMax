package com.startshorts.androidplayer.ui.view.discover;

import android.view.View;
import android.widget.TextView;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverVipBoxView.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.discover.DiscoverVipBoxView$showDiscountTip$1", f = "DiscoverVipBoxView.kt", l = {103}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverVipBoxView$showDiscountTip$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f47236h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverVipBoxView f47237i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverVipBoxView.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.view.discover.DiscoverVipBoxView$showDiscountTip$1$1", f = "DiscoverVipBoxView.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.view.discover.DiscoverVipBoxView$showDiscountTip$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f47238h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverVipBoxView f47239i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DiscoverVipBoxView discoverVipBoxView, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f47239i = discoverVipBoxView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f47239i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i10;
            TextView textView;
            View view;
            int i11;
            View view2;
            a.f();
            if (this.f47238h == 0) {
                f.b(obj);
                i10 = this.f47239i.f47232d;
                if (i10 <= 0) {
                    view2 = this.f47239i.f47230b;
                    b0.d(view2);
                } else {
                    textView = this.f47239i.f47231c;
                    if (textView != null) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append('-');
                        i11 = this.f47239i.f47232d;
                        sb2.append(i11);
                        sb2.append('%');
                        textView.setText(sb2.toString());
                    }
                    view = this.f47239i.f47230b;
                    b0.l(view);
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverVipBoxView$showDiscountTip$1(DiscoverVipBoxView discoverVipBoxView, c<? super DiscoverVipBoxView$showDiscountTip$1> cVar) {
        super(2, cVar);
        this.f47237i = discoverVipBoxView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DiscoverVipBoxView$showDiscountTip$1(this.f47237i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DiscoverVipBoxView$showDiscountTip$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f47236h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            j1 c10 = q0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f47237i, null);
            this.f47236h = 1;
            if (e.g(c10, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
