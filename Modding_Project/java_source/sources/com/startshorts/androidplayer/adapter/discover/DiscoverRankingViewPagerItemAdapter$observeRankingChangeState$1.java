package com.startshorts.androidplayer.adapter.discover;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.adapter.discover.DiscoverRankingViewPagerItemAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.bean.discover.PlayListDiscoverRanking;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.adapter.discover.DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1", f = "DiscoverRankingViewPagerItemAdapter.kt", l = {79}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDiscoverRankingViewPagerItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,348:1\n125#2,13:349\n*S KotlinDebug\n*F\n+ 1 DiscoverRankingViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1\n*L\n90#1:349,13\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f37561h;

    /* renamed from: i  reason: collision with root package name */
    int f37562i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DiscoverRankingViewPagerItemAdapter f37563j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ DiscoverRankingViewPagerItemAdapter.b f37564k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1(DiscoverRankingViewPagerItemAdapter discoverRankingViewPagerItemAdapter, DiscoverRankingViewPagerItemAdapter.b bVar, rs.c<? super DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1> cVar) {
        super(2, cVar);
        this.f37563j = discoverRankingViewPagerItemAdapter;
        this.f37564k = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1(this.f37563j, this.f37564k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i10;
        Object n10;
        DiscoverRanking discoverRanking;
        Integer id2;
        MutableLiveData mutableLiveData;
        MutableLiveData mutableLiveData2;
        Integer num;
        String str;
        String name;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f37562i;
        if (i11 != 0) {
            if (i11 == 1) {
                discoverRanking = (DiscoverRanking) this.f37561h;
                kotlin.f.b(obj);
                n10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            DiscoverRanking Q = this.f37563j.Q();
            DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
            String str2 = (Q == null || (id2 = Q.getId()) == null || (str2 = id2.toString()) == null) ? "" : "";
            Integer recommendId = this.f37563j.f37540q.getRecommendId();
            if (recommendId != null) {
                i10 = recommendId.intValue();
            } else {
                i10 = 0;
            }
            this.f37561h = Q;
            this.f37562i = 1;
            n10 = discoverRepo.n(str2, i10, 1, 9, this);
            if (n10 == f10) {
                return f10;
            }
            discoverRanking = Q;
        }
        DiscoverRankingViewPagerItemAdapter discoverRankingViewPagerItemAdapter = this.f37563j;
        DiscoverRankingViewPagerItemAdapter.b bVar = this.f37564k;
        ResponseException responseException = null;
        if (Result.j(n10)) {
            List list = (List) n10;
            List<PlayListDiscoverRanking> rankingResponseList = discoverRankingViewPagerItemAdapter.f37540q.getRankingResponseList();
            if (rankingResponseList != null) {
                if (discoverRanking != null) {
                    num = discoverRanking.getId();
                } else {
                    num = null;
                }
                if (discoverRanking == null || (name = discoverRanking.getName()) == null) {
                    str = "";
                } else {
                    str = name;
                }
                rankingResponseList.add(new PlayListDiscoverRanking(num, str, kotlin.coroutines.jvm.internal.a.a(discoverRankingViewPagerItemAdapter.f37540q.isShowMore()), discoverRankingViewPagerItemAdapter.f37540q.getRecommendId(), discoverRankingViewPagerItemAdapter.f37540q.getBannerId(), list));
            }
            mutableLiveData2 = discoverRankingViewPagerItemAdapter.f37543t;
            DiscoverRanking a10 = ((DiscoverRankingViewPagerItemAdapter.b.C0609b) bVar).a();
            if (list == null) {
                list = new ArrayList();
            }
            jk.o.b(mutableLiveData2, new DiscoverRankingViewPagerItemAdapter.b.c(a10, list));
        }
        DiscoverRankingViewPagerItemAdapter discoverRankingViewPagerItemAdapter2 = this.f37563j;
        DiscoverRankingViewPagerItemAdapter.b bVar2 = this.f37564k;
        Throwable g10 = Result.g(n10);
        if (g10 != null) {
            if (g10 instanceof ResponseException) {
                responseException = (ResponseException) g10;
            }
            if (responseException != null) {
                mutableLiveData = discoverRankingViewPagerItemAdapter2.f37543t;
                jk.o.b(mutableLiveData, new DiscoverRankingViewPagerItemAdapter.b.a(((DiscoverRankingViewPagerItemAdapter.b.C0609b) bVar2).a(), responseException));
            } else {
                Logger.f41511a.e("ApiBuilder", "onResponseFailure exception -> " + g10.getMessage() + ", exception must not be null");
            }
        }
        return Unit.f60915a;
    }
}
