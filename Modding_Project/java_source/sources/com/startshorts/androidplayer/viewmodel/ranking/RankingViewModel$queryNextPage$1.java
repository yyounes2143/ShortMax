package com.startshorts.androidplayer.viewmodel.ranking;

import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import com.startshorts.androidplayer.repo.ranking.RankingRepo;
import com.startshorts.androidplayer.viewmodel.ranking.b;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import jk.o;
import jk.z;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RankingViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.ranking.RankingViewModel$queryNextPage$1", f = "RankingViewModel.kt", l = {59}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RankingViewModel$queryNextPage$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49060h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f49061i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Integer f49062j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f49063k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f49064l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ RankingViewModel f49065m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ int f49066n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RankingViewModel$queryNextPage$1(int i10, Integer num, int i11, int i12, RankingViewModel rankingViewModel, int i13, c<? super RankingViewModel$queryNextPage$1> cVar) {
        super(2, cVar);
        this.f49061i = i10;
        this.f49062j = num;
        this.f49063k = i11;
        this.f49064l = i12;
        this.f49065m = rankingViewModel;
        this.f49066n = i13;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RankingViewModel$queryNextPage$1(this.f49061i, this.f49062j, this.f49063k, this.f49064l, this.f49065m, this.f49066n, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RankingViewModel$queryNextPage$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object a10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49060h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                a10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            RankingRepo rankingRepo = RankingRepo.f44435a;
            String valueOf = String.valueOf(this.f49061i);
            Integer num = this.f49062j;
            int i11 = this.f49063k;
            int i12 = this.f49064l;
            DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
            String r10 = discoverRepo.r();
            String s10 = discoverRepo.s();
            this.f49060h = 1;
            a10 = rankingRepo.a(valueOf, num, i11, i12, r10, s10, this);
            if (a10 == f10) {
                return f10;
            }
        }
        RankingViewModel rankingViewModel = this.f49065m;
        int i13 = this.f49063k;
        int i14 = this.f49066n;
        if (Result.j(a10)) {
            List list = (List) a10;
            if (list == null) {
                list = new ArrayList();
            }
            rankingViewModel.C().g(list, i13);
            rankingViewModel.C().f();
            o.b(rankingViewModel.B(), new b.C0678b(i14, list, rankingViewModel.C().d()));
        }
        RankingViewModel rankingViewModel2 = this.f49065m;
        int i15 = this.f49066n;
        Throwable g10 = Result.g(a10);
        if (g10 != null) {
            rankingViewModel2.C().f();
            o.b(rankingViewModel2.B(), new b.a(i15, rankingViewModel2.p(z.a(g10))));
        }
        return Unit.f60915a;
    }
}
