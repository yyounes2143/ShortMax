package com.startshorts.androidplayer.viewmodel.discover;

import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverTabPage;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import com.startshorts.androidplayer.viewmodel.discover.b;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.discover.DiscoverViewModel$refreshModules$1", f = "DiscoverViewModel.kt", l = {182}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDiscoverViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverViewModel.kt\ncom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$refreshModules$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,262:1\n1611#2,9:263\n1863#2:272\n1864#2:274\n1620#2:275\n1#3:273\n*S KotlinDebug\n*F\n+ 1 DiscoverViewModel.kt\ncom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$refreshModules$1\n*L\n184#1:263,9\n184#1:272\n184#1:274\n184#1:275\n184#1:273\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscoverViewModel$refreshModules$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48484h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f48485i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DiscoverViewModel f48486j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function1<DiscoverModule, Boolean> f48487k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DiscoverViewModel$refreshModules$1(int i10, DiscoverViewModel discoverViewModel, Function1<? super DiscoverModule, Boolean> function1, rs.c<? super DiscoverViewModel$refreshModules$1> cVar) {
        super(2, cVar);
        this.f48485i = i10;
        this.f48486j = discoverViewModel;
        this.f48487k = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverViewModel$refreshModules$1(this.f48485i, this.f48486j, this.f48487k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverViewModel$refreshModules$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object l10;
        List<DiscoverModule> n10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48484h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                l10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
            int i11 = this.f48485i;
            this.f48484h = 1;
            l10 = discoverRepo.l(i11, this);
            if (l10 == f10) {
                return f10;
            }
        }
        DiscoverViewModel discoverViewModel = this.f48486j;
        Function1<DiscoverModule, Boolean> function1 = this.f48487k;
        if (Result.j(l10)) {
            DiscoverTabPage discoverTabPage = (DiscoverTabPage) l10;
            if (discoverTabPage == null || (n10 = discoverTabPage.getBannerResponseList()) == null) {
                n10 = CollectionsKt.n();
            }
            ArrayList arrayList = new ArrayList();
            for (DiscoverModule discoverModule : n10) {
                String bannerId = discoverModule.getBannerId();
                if (bannerId != null) {
                    arrayList.add(bannerId);
                }
            }
            if (CollectionsKt.i1(arrayList).isEmpty()) {
                discoverViewModel.f("refreshModule ignore -> newBannerIdsList.isEmpty()");
            } else {
                o.b(discoverViewModel.F(), new b.d(CollectionsKt.g1(n10), function1));
            }
        }
        return Unit.f60915a;
    }
}
