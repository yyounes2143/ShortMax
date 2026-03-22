package com.startshorts.androidplayer.ui.view.act;

import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.act.ActResourceManager;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: ActAppOpenView.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.act.ActAppOpenView$onActActive$1", f = "ActAppOpenView.kt", l = {141, 144}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nActAppOpenView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActAppOpenView.kt\ncom/startshorts/androidplayer/ui/view/act/ActAppOpenView$onActActive$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,265:1\n256#2,2:266\n*S KotlinDebug\n*F\n+ 1 ActAppOpenView.kt\ncom/startshorts/androidplayer/ui/view/act/ActAppOpenView$onActActive$1\n*L\n142#1:266,2\n*E\n"})
/* loaded from: classes7.dex */
final class ActAppOpenView$onActActive$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46983h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ActAppOpenView f46984i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function1<ActResource, Unit> f46985j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActAppOpenView.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.view.act.ActAppOpenView$onActActive$1$1", f = "ActAppOpenView.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.view.act.ActAppOpenView$onActActive$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f46986h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Function1<ActResource, Unit> f46987i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ ActResource f46988j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super ActResource, Unit> function1, ActResource actResource, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f46987i = function1;
            this.f46988j = actResource;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f46987i, this.f46988j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f46986h == 0) {
                f.b(obj);
                this.f46987i.invoke(this.f46988j);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ActAppOpenView$onActActive$1(ActAppOpenView actAppOpenView, Function1<? super ActResource, Unit> function1, rs.c<? super ActAppOpenView$onActActive$1> cVar) {
        super(2, cVar);
        this.f46984i = actAppOpenView;
        this.f46985j = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ActAppOpenView$onActActive$1(this.f46984i, this.f46985j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ActAppOpenView$onActActive$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f46983h;
        boolean z10 = true;
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
            ActResourceManager actResourceManager = ActResourceManager.f41582a;
            this.f46983h = 1;
            obj = actResourceManager.r(this);
            if (obj == f10) {
                return f10;
            }
        }
        ActResource actResource = (ActResource) CollectionsKt.firstOrNull((List) obj);
        ActAppOpenView actAppOpenView = this.f46984i;
        int i11 = 0;
        if (actResource == null) {
            z10 = false;
        }
        if (!z10) {
            i11 = 8;
        }
        actAppOpenView.setVisibility(i11);
        if (actResource != null) {
            j1 c10 = q0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f46985j, actResource, null);
            this.f46983h = 2;
            if (e.g(c10, anonymousClass1, this) == f10) {
                return f10;
            }
        } else {
            Logger.f41511a.e("ActAppOpenView", "onActActive failed -> actResource is null");
        }
        return Unit.f60915a;
    }
}
