package com.startshorts.androidplayer.repo.billing.subs;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.api.base.p;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function1;
import rs.c;
import zc.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS$gPayUpgradePremium$2", f = "SubsRemoteDS.kt", l = {90}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$gPayUpgradePremium$2 extends SuspendLambda implements Function1<c<? super ServerResult<GPayExchangePremiumResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43461h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43462i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SubsSku f43463j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ f f43464k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f43465l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43466m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$gPayUpgradePremium$2(String str, SubsSku subsSku, f fVar, BaseEpisode baseEpisode, String str2, c<? super SubsRemoteDS$gPayUpgradePremium$2> cVar) {
        super(1, cVar);
        this.f43462i = str;
        this.f43463j = subsSku;
        this.f43464k = fVar;
        this.f43465l = baseEpisode;
        this.f43466m = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new SubsRemoteDS$gPayUpgradePremium$2(this.f43462i, this.f43463j, this.f43464k, this.f43465l, this.f43466m, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Integer num;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43461h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.f.b(obj);
        k.a j10 = k.f41787a.j();
        String str = this.f43462i;
        String source = this.f43463j.getSource();
        int receiveType = this.f43463j.getReceiveType();
        String productId = this.f43463j.getProductId();
        String skuId = this.f43463j.getSkuId();
        String f11 = this.f43464k.f();
        String h10 = this.f43464k.h();
        if (h10 == null) {
            h10 = "";
        }
        BaseEpisode baseEpisode = this.f43465l;
        Integer num2 = null;
        if (baseEpisode != null) {
            num = kotlin.coroutines.jvm.internal.a.d(baseEpisode.getShortPlayId());
        } else {
            num = null;
        }
        BaseEpisode baseEpisode2 = this.f43465l;
        if (baseEpisode2 != null) {
            num2 = kotlin.coroutines.jvm.internal.a.d(baseEpisode2.getEpisodeNum());
        }
        String str2 = this.f43466m;
        String g10 = p.f41802a.g();
        this.f43461h = 1;
        Object h11 = k.a.C0617a.h(j10, 0, str, source, receiveType, productId, skuId, f11, h10, num, num2, str2, g10, this, 1, null);
        if (h11 == f10) {
            return f10;
        }
        return h11;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<GPayExchangePremiumResult>> cVar) {
        return ((SubsRemoteDS$gPayUpgradePremium$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
