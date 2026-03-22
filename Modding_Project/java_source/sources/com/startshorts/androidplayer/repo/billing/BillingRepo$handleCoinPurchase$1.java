package com.startshorts.androidplayer.repo.billing;

import android.os.Bundle;
import com.hades.aar.activity.IDActivity;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.purchase.BatchUnlockEpisodeSku;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import fk.u;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import jk.q;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import zc.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingRepo.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRepo$handleCoinPurchase$1", f = "BillingRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS, 307, 332, 338}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class BillingRepo$handleCoinPurchase$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43256h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ f f43257i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43258j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BillingRepo.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRepo$handleCoinPurchase$1$2", f = "BillingRepo.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.repo.billing.BillingRepo$handleCoinPurchase$1$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f43259h;

        AnonymousClass2(rs.c<? super AnonymousClass2> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass2(cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f43259h == 0) {
                kotlin.f.b(obj);
                u.j(u.f51776a, R$string.common_unknown_exception, 0, 2, null);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BillingRepo.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRepo$handleCoinPurchase$1$4", f = "BillingRepo.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.repo.billing.BillingRepo$handleCoinPurchase$1$4  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass4 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f43260h;

        AnonymousClass4(rs.c<? super AnonymousClass4> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass4(cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass4) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f43260h == 0) {
                kotlin.f.b(obj);
                u.j(u.f51776a, R$string.common_unknown_exception, 0, 2, null);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingRepo$handleCoinPurchase$1(f fVar, String str, rs.c<? super BillingRepo$handleCoinPurchase$1> cVar) {
        super(2, cVar);
        this.f43257i = fVar;
        this.f43258j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new BillingRepo$handleCoinPurchase$1(this.f43257i, this.f43258j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((BillingRepo$handleCoinPurchase$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Type inference failed for: r15v10, types: [com.startshorts.androidplayer.bean.purchase.CoinSku, T] */
    /* JADX WARN: Type inference failed for: r4v8, types: [com.startshorts.androidplayer.bean.purchase.CoinSku, T] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.startshorts.androidplayer.bean.purchase.CoinSku, T] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ?? r62;
        IDActivity iDActivity;
        ConcurrentHashMap concurrentHashMap;
        String str;
        String str2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43256h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3 && i10 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                kotlin.f.b(obj);
                return Unit.f60915a;
            }
            kotlin.f.b(obj);
            Logger.m(Logger.f41511a, null, 1, null);
            return Unit.f60915a;
        }
        kotlin.f.b(obj);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        r62 = BillingRepo.f43243g;
        objectRef.element = r62;
        String str3 = this.f43257i.d().get(0);
        BillingRepo billingRepo = BillingRepo.f43237a;
        GPayPriceInfo e10 = billingRepo.x().e(str3);
        if (objectRef.element == 0) {
            Logger.f41511a.e("BillingRepo", "handleCoinPurchase failed -> mLaunchBillingFlowCoinSku is null");
            EventManager eventManager = EventManager.f42463a;
            EventManager.s0(eventManager, "purchased_sku_null", null, 0L, 6, null);
            ?? a10 = q.a(this.f43257i);
            objectRef.element = a10;
            if (a10 != 0) {
                Bundle bundle = new Bundle();
                bundle.putString("gpSkuId", str3);
                CoinSku coinSku = (CoinSku) objectRef.element;
                if (coinSku != null) {
                    str2 = coinSku.getGpSkuId();
                } else {
                    str2 = null;
                }
                bundle.putString("purchasedSkuId", str2);
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "purchased_sku_null_solved", bundle, 0L, 4, null);
            }
        }
        if (objectRef.element == 0) {
            billingRepo.O(str3, e10, this.f43257i.b());
            j1 c10 = q0.c();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(null);
            this.f43256h = 1;
            if (e.g(c10, anonymousClass2, this) == f10) {
                return f10;
            }
            Logger.m(Logger.f41511a, null, 1, null);
            return Unit.f60915a;
        }
        if (!billingRepo.C() && !Intrinsics.areEqual(str3, ((CoinSku) objectRef.element).getGpSkuId())) {
            Logger logger = Logger.f41511a;
            logger.e("BillingRepo", "handleCoinPurchase failed -> skuFromGp(" + str3 + ") skuFromPurchasedSku(" + ((CoinSku) objectRef.element).getGpSkuId() + ')');
            Logger.m(logger, null, 1, null);
            EventManager eventManager2 = EventManager.f42463a;
            Bundle bundle2 = new Bundle();
            bundle2.putString("gpSkuId", str3);
            CoinSku coinSku2 = (CoinSku) objectRef.element;
            if (coinSku2 != null) {
                str = coinSku2.getGpSkuId();
            } else {
                str = null;
            }
            bundle2.putString("purchasedSkuId", str);
            Unit unit2 = Unit.f60915a;
            EventManager.s0(eventManager2, "purchased_sku_invalid", bundle2, 0L, 4, null);
            ?? a11 = q.a(this.f43257i);
            objectRef.element = a11;
            if (a11 == 0) {
                billingRepo.O(str3, e10, this.f43257i.b());
                j1 c11 = q0.c();
                AnonymousClass4 anonymousClass4 = new AnonymousClass4(null);
                this.f43256h = 2;
                if (e.g(c11, anonymousClass4, this) == f10) {
                    return f10;
                }
                return Unit.f60915a;
            }
            Bundle bundle3 = new Bundle();
            bundle3.putString("gpSkuId", str3);
            bundle3.putString("purchasedSkuId", ((CoinSku) objectRef.element).getGpSkuId());
            EventManager.s0(eventManager2, "purchased_sku_invalid_solved", bundle3, 0L, 4, null);
        }
        if (!e10.isValid() && ((CoinSku) objectRef.element).getRecharge() > 0.0f) {
            e10.setGpCurrencyCode("USD");
            e10.setGpPrice(String.valueOf(((CoinSku) objectRef.element).getRecharge()));
            e10.setServerPrice(String.valueOf(((CoinSku) objectRef.element).getRecharge()));
        }
        billingRepo.O(str3, e10, this.f43257i.b());
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null) {
            iDActivity = d10.get();
        } else {
            iDActivity = null;
        }
        concurrentHashMap = BillingRepo.f43252p;
        BaseEpisode baseEpisode = (BaseEpisode) concurrentHashMap.remove(str3);
        T t10 = objectRef.element;
        if (t10 instanceof BatchUnlockEpisodeSku) {
            f fVar = this.f43257i;
            this.f43256h = 3;
            if (PurchaseRepo.f43366a.h(iDActivity, this.f43258j, (BatchUnlockEpisodeSku) t10, fVar, e10, baseEpisode, this) == f10) {
                return f10;
            }
        } else {
            f fVar2 = this.f43257i;
            this.f43256h = 4;
            if (PurchaseRepo.f43366a.j(iDActivity, this.f43258j, (CoinSku) t10, fVar2, e10, baseEpisode, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
