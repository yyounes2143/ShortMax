package com.startshorts.androidplayer.ui.fragment.mylist;

import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.manager.act.ActResourceManager;
import gt.j1;
import gt.q0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MyListMixFragment.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment$checkActBannerVisible$1", f = "MyListMixFragment.kt", l = {413}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class MyListMixFragment$checkActBannerVisible$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46307h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MyListMixFragment f46308i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyListMixFragment.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment$checkActBannerVisible$1$1", f = "MyListMixFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment$checkActBannerVisible$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f46309h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ String f46310i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ MyListMixFragment f46311j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ List<ActResource> f46312k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, MyListMixFragment myListMixFragment, List<ActResource> list, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f46310i = str;
            this.f46311j = myListMixFragment;
            this.f46312k = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f46310i, this.f46311j, this.f46312k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f46309h == 0) {
                kotlin.f.b(obj);
                if (this.f46310i.length() == 0) {
                    this.f46311j.E1();
                    this.f46311j.W1();
                } else {
                    this.f46311j.F1();
                    this.f46311j.S1(this.f46312k);
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyListMixFragment$checkActBannerVisible$1(MyListMixFragment myListMixFragment, rs.c<? super MyListMixFragment$checkActBannerVisible$1> cVar) {
        super(2, cVar);
        this.f46308i = myListMixFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new MyListMixFragment$checkActBannerVisible$1(this.f46308i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((MyListMixFragment$checkActBannerVisible$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String d10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f46307h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            List<ActResource> q10 = ActResourceManager.f41582a.q();
            if (q10.isEmpty()) {
                d10 = "";
            } else {
                d10 = jk.l.d(q10);
            }
            j1 c10 = q0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(d10, this.f46308i, q10, null);
            this.f46307h = 1;
            if (gt.e.g(c10, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
