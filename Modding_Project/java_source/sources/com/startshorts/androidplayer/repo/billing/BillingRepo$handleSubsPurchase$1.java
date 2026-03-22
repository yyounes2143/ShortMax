package com.startshorts.androidplayer.repo.billing;

import com.hades.aar.activity.IDActivity;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.billing.subs.SubsRepo;
import gt.g0;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import zc.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingRepo.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRepo$handleSubsPurchase$1", f = "BillingRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT, 406, 421}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class BillingRepo$handleSubsPurchase$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43270h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ f f43271i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43272j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingRepo$handleSubsPurchase$1(f fVar, String str, rs.c<? super BillingRepo$handleSubsPurchase$1> cVar) {
        super(2, cVar);
        this.f43271i = fVar;
        this.f43272j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new BillingRepo$handleSubsPurchase$1(this.f43271i, this.f43272j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((BillingRepo$handleSubsPurchase$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SubsSku subsSku;
        int i10;
        String str;
        SubsSku subsSku2;
        String str2;
        ConcurrentHashMap concurrentHashMap;
        int i11;
        int i12;
        SubsSku subsSku3;
        String str3;
        String str4;
        String str5;
        String str6;
        int i13;
        String str7;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i14 = this.f43270h;
        if (i14 != 0) {
            if (i14 == 1 || i14 == 2 || i14 == 3) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            subsSku = BillingRepo.f43245i;
            String str8 = this.f43271i.d().get(0);
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("handleSubsPurchase -> mLaunchBillingFlowSubsMode(");
            i10 = BillingRepo.f43246j;
            sb2.append(i10);
            sb2.append(") gpSkuId(");
            sb2.append(str8);
            sb2.append(") clickedSkuId(");
            IDActivity iDActivity = null;
            if (subsSku != null) {
                str = subsSku.getSkuId();
            } else {
                str = null;
            }
            sb2.append(str);
            sb2.append(") oldSkuId(");
            subsSku2 = BillingRepo.f43248l;
            if (subsSku2 != null) {
                str2 = subsSku2.getSkuId();
            } else {
                str2 = null;
            }
            sb2.append(str2);
            sb2.append(')');
            logger.h("BillingRepo", sb2.toString());
            if (subsSku == null) {
                logger.e("BillingRepo", "handleSubsPurchase failed -> mLaunchBillingFlowSubsSku is null");
                EventManager.s0(EventManager.f42463a, "purchased_sku_null", null, 0L, 6, null);
                return Unit.f60915a;
            }
            BillingRepo billingRepo = BillingRepo.f43237a;
            GPayPriceInfo f11 = billingRepo.x().f(str8, subsSku.enableDiscount());
            if (!f11.isValid()) {
                if (subsSku.enableDiscount()) {
                    if (subsSku.getFirstAmount() > 0.0f) {
                        f11.setGpCurrencyCode("USD");
                        f11.setGpPrice(String.valueOf(subsSku.getFirstAmount()));
                        f11.setServerPrice(String.valueOf(subsSku.getFirstAmount()));
                    }
                } else if (subsSku.getPayAmount() > 0.0f) {
                    f11.setGpCurrencyCode("USD");
                    f11.setGpPrice(String.valueOf(subsSku.getPayAmount()));
                    f11.setServerPrice(String.valueOf(subsSku.getPayAmount()));
                }
            }
            WeakReference<IDActivity> d10 = aa.a.f321a.d();
            if (d10 != null) {
                iDActivity = d10.get();
            }
            concurrentHashMap = BillingRepo.f43252p;
            BaseEpisode baseEpisode = (BaseEpisode) concurrentHashMap.remove(str8);
            i11 = BillingRepo.f43246j;
            if (i11 != 0) {
                i13 = BillingRepo.f43246j;
                if (i13 != 1) {
                    billingRepo.Q(str8, f11, this.f43271i.b());
                    SubsRepo subsRepo = SubsRepo.f43486a;
                    String str9 = this.f43272j;
                    f fVar = this.f43271i;
                    str7 = BillingRepo.f43249m;
                    this.f43270h = 3;
                    if (subsRepo.d(iDActivity, str9, subsSku, fVar, f11, baseEpisode, str7, this) == f10) {
                        return f10;
                    }
                }
            }
            i12 = BillingRepo.f43246j;
            if (i12 == 1) {
                billingRepo.Q(str8, f11, this.f43271i.b());
                SubsRepo subsRepo2 = SubsRepo.f43486a;
                String str10 = this.f43272j;
                str5 = BillingRepo.f43247k;
                if (str5 == null) {
                    str5 = "";
                }
                String str11 = str5;
                f fVar2 = this.f43271i;
                str6 = BillingRepo.f43249m;
                this.f43270h = 1;
                if (subsRepo2.f(iDActivity, str10, str11, subsSku, fVar2, f11, baseEpisode, str6, this) == f10) {
                    return f10;
                }
            } else if (!Intrinsics.areEqual(subsSku.getSkuId(), str8)) {
                subsSku3 = BillingRepo.f43248l;
                str3 = BillingRepo.f43247k;
                if (subsSku3 == null) {
                    logger.e("BillingRepo", "handleSubsPurchase failed -> mode(UPDATE_MODE_DEFERRED) oldSku(null)");
                } else if (str3 != null && str3.length() != 0) {
                    billingRepo.Q(subsSku.getSkuId(), f11, this.f43271i.b());
                    SubsRepo subsRepo3 = SubsRepo.f43486a;
                    String str12 = this.f43272j;
                    f fVar3 = this.f43271i;
                    str4 = BillingRepo.f43249m;
                    this.f43270h = 2;
                    if (subsRepo3.c(iDActivity, str12, str3, subsSku3, subsSku, fVar3, f11, baseEpisode, str4, this) == f10) {
                        return f10;
                    }
                } else {
                    logger.e("BillingRepo", "handleSubsPurchase failed -> mode(UPDATE_MODE_DEFERRED) oldToken(null)");
                }
            } else {
                logger.e("BillingRepo", "handleSubsPurchase failed -> mode(UPDATE_MODE_DEFERRED) clickedSkuId(" + subsSku.getSkuId() + ") gpSkuId(" + str8 + ')');
                return Unit.f60915a;
            }
        }
        return Unit.f60915a;
    }
}
