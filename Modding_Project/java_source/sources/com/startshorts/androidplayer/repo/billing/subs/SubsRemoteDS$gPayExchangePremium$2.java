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
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS$gPayExchangePremium$2", f = "SubsRemoteDS.kt", l = {58}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$gPayExchangePremium$2 extends SuspendLambda implements Function1<c<? super ServerResult<GPayExchangePremiumResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43448h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsSku f43449i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ f f43450j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f43451k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43452l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$gPayExchangePremium$2(SubsSku subsSku, f fVar, BaseEpisode baseEpisode, String str, c<? super SubsRemoteDS$gPayExchangePremium$2> cVar) {
        super(1, cVar);
        this.f43449i = subsSku;
        this.f43450j = fVar;
        this.f43451k = baseEpisode;
        this.f43452l = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new SubsRemoteDS$gPayExchangePremium$2(this.f43449i, this.f43450j, this.f43451k, this.f43452l, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Integer num;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43448h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.f.b(obj);
        k.a j10 = k.f41787a.j();
        String source = this.f43449i.getSource();
        int receiveType = this.f43449i.getReceiveType();
        String productId = this.f43449i.getProductId();
        String skuId = this.f43449i.getSkuId();
        String h10 = this.f43450j.h();
        if (h10 == null) {
            h10 = "";
        }
        String str = h10;
        String f11 = this.f43450j.f();
        BaseEpisode baseEpisode = this.f43451k;
        Integer num2 = null;
        if (baseEpisode != null) {
            num = kotlin.coroutines.jvm.internal.a.d(baseEpisode.getShortPlayId());
        } else {
            num = null;
        }
        BaseEpisode baseEpisode2 = this.f43451k;
        if (baseEpisode2 != null) {
            num2 = kotlin.coroutines.jvm.internal.a.d(baseEpisode2.getEpisodeNum());
        }
        String f12 = p.f41802a.f();
        String str2 = this.f43452l;
        this.f43448h = 1;
        Object f13 = k.a.C0617a.f(j10, false, source, receiveType, productId, skuId, f11, str, num, num2, str2, f12, this, 1, null);
        if (f13 == f10) {
            return f10;
        }
        return f13;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<GPayExchangePremiumResult>> cVar) {
        return ((SubsRemoteDS$gPayExchangePremium$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
