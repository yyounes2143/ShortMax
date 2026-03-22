package com.startshorts.androidplayer.viewmodel.discover;

import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.discover.DiscoverViewModel$loadModules$1", f = "DiscoverViewModel.kt", l = {155, 160}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverViewModel$loadModules$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    boolean f48465h;

    /* renamed from: i  reason: collision with root package name */
    Object f48466i;

    /* renamed from: j  reason: collision with root package name */
    Object f48467j;

    /* renamed from: k  reason: collision with root package name */
    int f48468k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ DiscoverViewModel f48469l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f48470m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverViewModel$loadModules$1(DiscoverViewModel discoverViewModel, int i10, rs.c<? super DiscoverViewModel$loadModules$1> cVar) {
        super(2, cVar);
        this.f48469l = discoverViewModel;
        this.f48470m = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverViewModel$loadModules$1(this.f48469l, this.f48470m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverViewModel$loadModules$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean w02;
        Object n10;
        boolean z10;
        Object obj2;
        Object obj3;
        DiscoverViewModel discoverViewModel;
        DiscoverViewModel discoverViewModel2;
        Throwable g10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48468k;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    z10 = this.f48465h;
                    discoverViewModel = (DiscoverViewModel) this.f48467j;
                    obj3 = this.f48466i;
                    kotlin.f.b(obj);
                    obj2 = ((Result) obj).n();
                    discoverViewModel.G(obj2);
                    w02 = z10;
                    n10 = obj3;
                    discoverViewModel2 = this.f48469l;
                    g10 = Result.g(n10);
                    if (g10 != null && (w02 || !Intrinsics.areEqual(g10.getMessage(), "Job was cancelled"))) {
                        discoverViewModel2.z(g10);
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            boolean z11 = this.f48465h;
            kotlin.f.b(obj);
            n10 = ((Result) obj).n();
            w02 = z11;
        } else {
            kotlin.f.b(obj);
            w02 = AccountRepo.f43052a.w0();
            AccountManager accountManager = AccountManager.f41533a;
            this.f48465h = w02;
            this.f48468k = 1;
            n10 = accountManager.n(this);
            if (n10 == f10) {
                return f10;
            }
        }
        DiscoverViewModel discoverViewModel3 = this.f48469l;
        int i11 = this.f48470m;
        if (Result.j(n10)) {
            ((Boolean) n10).booleanValue();
            if (w02) {
                DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
                this.f48466i = n10;
                this.f48467j = discoverViewModel3;
                this.f48465h = w02;
                this.f48468k = 2;
                Object l10 = discoverRepo.l(i11, this);
                if (l10 == f10) {
                    return f10;
                }
                z10 = w02;
                obj2 = l10;
                obj3 = n10;
                discoverViewModel = discoverViewModel3;
                discoverViewModel.G(obj2);
                w02 = z10;
                n10 = obj3;
            }
        }
        discoverViewModel2 = this.f48469l;
        g10 = Result.g(n10);
        if (g10 != null) {
            discoverViewModel2.z(g10);
        }
        return Unit.f60915a;
    }
}
