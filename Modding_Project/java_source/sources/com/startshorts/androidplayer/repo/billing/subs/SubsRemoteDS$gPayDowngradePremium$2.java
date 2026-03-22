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
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS$gPayDowngradePremium$2", f = "SubsRemoteDS.kt", l = {113}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$gPayDowngradePremium$2 extends SuspendLambda implements Function1<c<? super ServerResult<GPayExchangePremiumResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43438h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43439i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SubsSku f43440j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ f f43441k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f43442l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ SubsSku f43443m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ String f43444n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$gPayDowngradePremium$2(String str, SubsSku subsSku, f fVar, BaseEpisode baseEpisode, SubsSku subsSku2, String str2, c<? super SubsRemoteDS$gPayDowngradePremium$2> cVar) {
        super(1, cVar);
        this.f43439i = str;
        this.f43440j = subsSku;
        this.f43441k = fVar;
        this.f43442l = baseEpisode;
        this.f43443m = subsSku2;
        this.f43444n = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new SubsRemoteDS$gPayDowngradePremium$2(this.f43439i, this.f43440j, this.f43441k, this.f43442l, this.f43443m, this.f43444n, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Integer num;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43438h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.f.b(obj);
        k.a j10 = k.f41787a.j();
        String str = this.f43439i;
        String source = this.f43440j.getSource();
        int receiveType = this.f43440j.getReceiveType();
        String productId = this.f43440j.getProductId();
        String skuId = this.f43440j.getSkuId();
        String f11 = this.f43441k.f();
        String h10 = this.f43441k.h();
        if (h10 == null) {
            h10 = "";
        }
        BaseEpisode baseEpisode = this.f43442l;
        Integer num2 = null;
        if (baseEpisode != null) {
            num = kotlin.coroutines.jvm.internal.a.d(baseEpisode.getShortPlayId());
        } else {
            num = null;
        }
        BaseEpisode baseEpisode2 = this.f43442l;
        if (baseEpisode2 != null) {
            num2 = kotlin.coroutines.jvm.internal.a.d(baseEpisode2.getEpisodeNum());
        }
        Integer num3 = num2;
        String productId2 = this.f43443m.getProductId();
        String str2 = this.f43444n;
        String g10 = p.f41802a.g();
        this.f43438h = 1;
        Object e10 = k.a.C0617a.e(j10, 0, str, source, receiveType, productId, skuId, f11, h10, num, num3, productId2, str2, g10, this, 1, null);
        if (e10 == f10) {
            return f10;
        }
        return e10;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<GPayExchangePremiumResult>> cVar) {
        return ((SubsRemoteDS$gPayDowngradePremium$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
