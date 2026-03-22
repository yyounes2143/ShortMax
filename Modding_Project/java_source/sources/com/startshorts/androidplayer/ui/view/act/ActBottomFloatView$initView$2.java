package com.startshorts.androidplayer.ui.view.act;

import ce.j;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ActBottomFloatView.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$initView$2", f = "ActBottomFloatView.kt", l = {66, 67}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ActBottomFloatView$initView$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f47023h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ActBottomFloatView f47024i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActBottomFloatView.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$initView$2$1", f = "ActBottomFloatView.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$initView$2$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f47025h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ ActResource f47026i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ ActBottomFloatView f47027j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ActResource actResource, ActBottomFloatView actBottomFloatView, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f47026i = actResource;
            this.f47027j = actBottomFloatView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f47026i, this.f47027j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CustomFrescoView customFrescoView;
            CustomFrescoView customFrescoView2;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f47025h == 0) {
                f.b(obj);
                ActResource actResource = this.f47026i;
                if (actResource == null) {
                    return Unit.f60915a;
                }
                j.f3485a.l(actResource);
                ActBottomFloatView actBottomFloatView = this.f47027j;
                customFrescoView = actBottomFloatView.f47011b;
                if (customFrescoView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mActBottomFloatResourceIv");
                    customFrescoView = null;
                }
                actBottomFloatView.Q(customFrescoView, this.f47026i.getResourceMap());
                ActBottomFloatView actBottomFloatView2 = this.f47027j;
                customFrescoView2 = actBottomFloatView2.f47012c;
                if (customFrescoView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mActBottomFloatResourceShrinkedIv");
                    customFrescoView2 = null;
                }
                actBottomFloatView2.Q(customFrescoView2, this.f47026i.getResourceMapShrink());
                EventManager eventManager = EventManager.f42463a;
                eventManager.T("bf_icon_tab", this.f47026i);
                EventManager.s0(eventManager, "bf_icon_tab_show", EventManager.x(eventManager, this.f47026i, false, 2, null), 0L, 4, null);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActBottomFloatView$initView$2(ActBottomFloatView actBottomFloatView, rs.c<? super ActBottomFloatView$initView$2> cVar) {
        super(2, cVar);
        this.f47024i = actBottomFloatView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ActBottomFloatView$initView$2(this.f47024i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ActBottomFloatView$initView$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f47023h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            ActBottomFloatView actBottomFloatView = this.f47024i;
            this.f47023h = 1;
            obj = actBottomFloatView.M(this);
            if (obj == f10) {
                return f10;
            }
        }
        j1 c10 = q0.c();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1((ActResource) obj, this.f47024i, null);
        this.f47023h = 2;
        if (e.g(c10, anonymousClass1, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
