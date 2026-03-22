package com.startshorts.androidplayer.ui.view.act;

import com.startshorts.androidplayer.bean.act.ActResource;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActBottomFloatView.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$onActActive$1", f = "ActBottomFloatView.kt", l = {202, 204}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ActBottomFloatView$onActActive$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f47028h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ActBottomFloatView f47029i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function1<ActResource, Unit> f47030j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActBottomFloatView.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$onActActive$1$1", f = "ActBottomFloatView.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nActBottomFloatView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActBottomFloatView.kt\ncom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onActActive$1$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,225:1\n256#2,2:226\n*S KotlinDebug\n*F\n+ 1 ActBottomFloatView.kt\ncom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onActActive$1$1\n*L\n205#1:226,2\n*E\n"})
    /* renamed from: com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$onActActive$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f47031h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ ActBottomFloatView f47032i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ ActResource f47033j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ Function1<ActResource, Unit> f47034k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(ActBottomFloatView actBottomFloatView, ActResource actResource, Function1<? super ActResource, Unit> function1, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f47032i = actBottomFloatView;
            this.f47033j = actResource;
            this.f47034k = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f47032i, this.f47033j, this.f47034k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Function1 function1;
            int i10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f47031h == 0) {
                f.b(obj);
                ActBottomFloatView actBottomFloatView = this.f47032i;
                function1 = actBottomFloatView.f47014e;
                if (((Boolean) function1.invoke(this.f47033j)).booleanValue()) {
                    i10 = 0;
                } else {
                    i10 = 8;
                }
                actBottomFloatView.setVisibility(i10);
                this.f47034k.invoke(this.f47033j);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ActBottomFloatView$onActActive$1(ActBottomFloatView actBottomFloatView, Function1<? super ActResource, Unit> function1, rs.c<? super ActBottomFloatView$onActActive$1> cVar) {
        super(2, cVar);
        this.f47029i = actBottomFloatView;
        this.f47030j = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ActBottomFloatView$onActActive$1(this.f47029i, this.f47030j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ActBottomFloatView$onActActive$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f47028h;
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
            ActBottomFloatView actBottomFloatView = this.f47029i;
            this.f47028h = 1;
            obj = actBottomFloatView.M(this);
            if (obj == f10) {
                return f10;
            }
        }
        ActResource actResource = (ActResource) obj;
        if (actResource != null) {
            j1 c10 = q0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f47029i, actResource, this.f47030j, null);
            this.f47028h = 2;
            if (e.g(c10, anonymousClass1, this) == f10) {
                return f10;
            }
        } else {
            this.f47029i.r("onActActive -> failed. actResource is null");
        }
        return Unit.f60915a;
    }
}
