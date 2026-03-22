package com.startshorts.androidplayer.repo.discover;

import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.DiscoverTabHomeResult;
import com.startshorts.androidplayer.bean.discover.DiscoverTabPage;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import gt.g0;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import vg.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRepo$preloadModules$1", f = "DiscoverRepo.kt", l = {170, 171}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverRepo$preloadModules$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43993h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f43994i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43995j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverRepo.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRepo$preloadModules$1$1", f = "DiscoverRepo.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.repo.discover.DiscoverRepo$preloadModules$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f43996h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Object f43997i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ String f43998j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Object obj, String str, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f43997i = obj;
            this.f43998j = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f43997i, this.f43998j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a w10;
            List<DiscoverTab> list;
            a w11;
            DiscoverTabPage discoverTabPage;
            DiscoverTabPage tabPageResponse;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f43996h == 0) {
                f.b(obj);
                DiscoverRepo.f43970d = false;
                Object obj2 = this.f43997i;
                String str = this.f43998j;
                if (Result.j(obj2)) {
                    DiscoverTabHomeResult discoverTabHomeResult = (DiscoverTabHomeResult) obj2;
                    DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
                    w10 = discoverRepo.w();
                    HashMap<String, List<DiscoverTab>> c10 = w10.c();
                    List<DiscoverModule> list2 = null;
                    if (discoverTabHomeResult != null) {
                        list = discoverTabHomeResult.getTabResponseList();
                    } else {
                        list = null;
                    }
                    c10.put(str, list);
                    w11 = discoverRepo.w();
                    HashMap<String, DiscoverTabPage> b10 = w11.b();
                    if (discoverTabHomeResult != null) {
                        discoverTabPage = discoverTabHomeResult.getTabPageResponse();
                    } else {
                        discoverTabPage = null;
                    }
                    b10.put(str, discoverTabPage);
                    if (!fk.a.f51702a.a()) {
                        if (discoverTabHomeResult != null && (tabPageResponse = discoverTabHomeResult.getTabPageResponse()) != null) {
                            list2 = tabPageResponse.getBannerResponseList();
                        }
                        discoverRepo.G(list2);
                    }
                }
                DiscoverRepo.f43967a.A(this.f43997i);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRepo$preloadModules$1(String str, c<? super DiscoverRepo$preloadModules$1> cVar) {
        super(2, cVar);
        this.f43995j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        DiscoverRepo$preloadModules$1 discoverRepo$preloadModules$1 = new DiscoverRepo$preloadModules$1(this.f43995j, cVar);
        discoverRepo$preloadModules$1.f43994i = obj;
        return discoverRepo$preloadModules$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DiscoverRepo$preloadModules$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        g0 g0Var;
        Object q10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43993h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            g0Var = (g0) this.f43994i;
            f.b(obj);
            q10 = ((Result) obj).n();
        } else {
            f.b(obj);
            g0Var = (g0) this.f43994i;
            DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
            this.f43994i = g0Var;
            this.f43993h = 1;
            q10 = discoverRepo.q(true, this);
            if (q10 == f10) {
                return f10;
            }
        }
        g0 g0Var2 = g0Var;
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(q10, this.f43995j, null);
        this.f43994i = null;
        this.f43993h = 2;
        if (CoroutineUtil.t(coroutineUtil, g0Var2, "preloadModules-1", false, anonymousClass1, this, 2, null) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
