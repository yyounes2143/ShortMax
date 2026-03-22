package com.startshorts.androidplayer.repo.ranking;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.manager.api.base.k;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RankingRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.ranking.RankingRepo$queryRankList$2", f = "RankingRepo.kt", l = {21}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RankingRepo$queryRankList$2 extends SuspendLambda implements Function1<c<? super ServerResult<List<DiscoverShorts>>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44439h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f44440i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Integer f44441j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f44442k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f44443l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f44444m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ String f44445n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RankingRepo$queryRankList$2(String str, Integer num, int i10, int i11, String str2, String str3, c<? super RankingRepo$queryRankList$2> cVar) {
        super(1, cVar);
        this.f44440i = str;
        this.f44441j = num;
        this.f44442k = i10;
        this.f44443l = i11;
        this.f44444m = str2;
        this.f44445n = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new RankingRepo$queryRankList$2(this.f44440i, this.f44441j, this.f44442k, this.f44443l, this.f44444m, this.f44445n, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44439h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f44440i;
            Integer num = this.f44441j;
            int i11 = this.f44442k;
            int i12 = this.f44443l;
            String str2 = this.f44444m;
            String str3 = this.f44445n;
            this.f44439h = 1;
            obj = j10.y0(str, num, i11, i12, str2, str3, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<List<DiscoverShorts>>> cVar) {
        return ((RankingRepo$queryRankList$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
