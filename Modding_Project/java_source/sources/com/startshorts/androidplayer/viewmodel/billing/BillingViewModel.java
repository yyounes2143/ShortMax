package com.startshorts.androidplayer.viewmodel.billing;

import ad.k;
import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.hades.aar.activity.IDActivity;
import com.shorttv.aar.billing.bean.ErrorCode;
import com.shorttv.aar.billing.bean.ErrorType;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentSkuResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import fk.h0;
import fk.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import jk.l;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import le.g;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zc.h;
/* compiled from: BillingViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BillingViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f48322m = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48323e = c.b(new Function0() { // from class: rk.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData U;
            U = BillingViewModel.U();
            return U;
        }
    });
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final i f48324f = c.b(new Function0() { // from class: rk.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String T;
            T = BillingViewModel.T();
            return T;
        }
    });
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final i f48325g = c.b(new Function0() { // from class: rk.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            AtomicInteger V;
            V = BillingViewModel.V();
            return V;
        }
    });

    /* renamed from: h  reason: collision with root package name */
    private boolean f48326h = true;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private String f48327i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private r f48328j;

    /* renamed from: k  reason: collision with root package name */
    private int f48329k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f48330l;

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nBillingViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingViewModel.kt\ncom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$connect$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,602:1\n1863#2:603\n1863#2,2:604\n1864#2:606\n*S KotlinDebug\n*F\n+ 1 BillingViewModel.kt\ncom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$connect$1\n*L\n312#1:603\n313#1:604,2\n312#1:606\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b extends g {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit l(BillingViewModel billingViewModel, GPayExchangePremiumResult.RechargeUserInfo rechargeUserInfo) {
            if (rechargeUserInfo != null) {
                o.b(billingViewModel.Q(), new b.k(rechargeUserInfo));
            } else {
                o.b(billingViewModel.Q(), b.f.f48403a);
            }
            return Unit.f60915a;
        }

        @Override // le.g
        public void a(zc.a error) {
            Intrinsics.checkNotNullParameter(error, "error");
            BillingViewModel billingViewModel = BillingViewModel.this;
            billingViewModel.f("onError -> " + error);
            if (error.c() == ErrorType.CONNECT_FAILED) {
                o.b(BillingViewModel.this.Q(), new b.m(null));
            } else if (error.c() == ErrorType.PURCHASE_FAILED) {
                if (error.a() == ErrorCode.USER_CANCELED) {
                    o.b(BillingViewModel.this.Q(), b.u.f48421a);
                } else if (error.a() == ErrorCode.ITEM_ALREADY_OWNED) {
                    AccountRepo accountRepo = AccountRepo.f43052a;
                    final BillingViewModel billingViewModel2 = BillingViewModel.this;
                    accountRepo.X0(new Function1() { // from class: rk.f
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            Unit l10;
                            l10 = BillingViewModel.b.l(BillingViewModel.this, (GPayExchangePremiumResult.RechargeUserInfo) obj);
                            return l10;
                        }
                    });
                }
            } else {
                o.b(BillingViewModel.this.Q(), b.l.f48409a);
            }
        }

        @Override // le.g
        public void b(String gpSkuId, String str) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            o.b(BillingViewModel.this.Q(), b.C0654b.f48394a);
        }

        @Override // le.g
        public void c(String str, String gpSkuId, GPayPriceInfo priceInfo, String str2) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            o.b(BillingViewModel.this.Q(), new b.c(str, gpSkuId, priceInfo, str2));
            AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
        }

        @Override // le.g
        public void d(String gpSkuId, String str) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            o.b(BillingViewModel.this.Q(), b.d.f48399a);
        }

        @Override // le.g
        public void e(String str, String gpSkuId, GPayPriceInfo priceInfo) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            o.b(BillingViewModel.this.Q(), new b.e(str, gpSkuId, priceInfo));
            AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
            PurchaseRepo.f43366a.f("topup");
        }

        @Override // le.g
        public void f(List<h> list) {
            BillingViewModel billingViewModel = BillingViewModel.this;
            billingViewModel.v("onProductDetails -> list(" + l.d(list) + ')');
            List<h> list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (h hVar : list) {
                    List<Object> a10 = hVar.a();
                    if (a10 != null) {
                        for (Object obj : a10) {
                            arrayList.add(obj);
                        }
                    }
                }
                o.b(BillingViewModel.this.Q(), new b.m(arrayList));
                return;
            }
            o.b(BillingViewModel.this.Q(), new b.m(null));
        }

        @Override // le.g
        public void g() {
            BillingViewModel.this.f48326h = false;
            o.b(BillingViewModel.this.Q(), b.q.f48414a);
        }

        @Override // le.g
        public void h(GPayExchangePremiumResult.RechargeUserInfo rechargeUserInfo) {
            Intrinsics.checkNotNullParameter(rechargeUserInfo, "rechargeUserInfo");
            o.b(BillingViewModel.this.Q(), new b.k(rechargeUserInfo));
        }

        @Override // le.g
        public void i(String gpSkuId, String str, int i10) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            o.b(BillingViewModel.this.Q(), new b.s(i10));
        }

        @Override // le.g
        public void j(String str, String gpSkuId, GPayPriceInfo priceInfo, int i10) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            o.b(BillingViewModel.this.Q(), new b.t(str, gpSkuId, priceInfo, i10));
            AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
        }
    }

    private final void K(Context context) {
        v("activityResumeProcess -> mThirdPartyPaymentClicked=" + this.f48330l + ",context=" + context);
        if (this.f48330l) {
            this.f48330l = false;
            AccountRepo.f43052a.Y0(true, context, new Function1() { // from class: rk.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit L;
                    L = BillingViewModel.L(BillingViewModel.this, (Result) obj);
                    return L;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(BillingViewModel billingViewModel, Result result) {
        Object n10 = result.n();
        if (Result.j(n10) && ((Account) n10) != null) {
            billingViewModel.v("activityResumeProcess -> refreshBalance succeed");
            o.b(billingViewModel.Q(), new b.p(true));
        }
        return Unit.f60915a;
    }

    private final void M() {
        BillingRepo.f43237a.t(this.f48326h, N(), P(), new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String N() {
        return P() + '_' + R().getAndIncrement();
    }

    private final void O(a.d dVar) {
        BaseViewModel.i(this, "createOtherOrder", false, new BillingViewModel$createOtherOrder$1(dVar, this, null), 2, null);
    }

    private final String P() {
        return (String) this.f48324f.getValue();
    }

    private final AtomicInteger R() {
        return (AtomicInteger) this.f48325g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String T() {
        return UUID.randomUUID().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData U() {
        return new MutableLiveData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AtomicInteger V() {
        return new AtomicInteger(0);
    }

    private final void X(boolean z10, String str, BaseActivity baseActivity, CoinSku coinSku, BaseEpisode baseEpisode, String str2, String str3, String str4) {
        ActResource actResource;
        if (baseEpisode != null) {
            actResource = ud.a.f68411a.p();
        } else {
            actResource = null;
        }
        EventManager eventManager = EventManager.f42463a;
        EventManager.F0(eventManager, str, coinSku, baseEpisode, actResource, null, null, str2, str3, null, str4, 304, null);
        if (z10) {
            EventManager.B0(eventManager, str, coinSku, baseEpisode, actResource, null, null, null, null, null, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_OPEN_TIMEOUT, null);
        }
        BillingRepo billingRepo = BillingRepo.f43237a;
        if (!billingRepo.A()) {
            EventManager.K0(eventManager, str, coinSku, null, actResource, String.valueOf(k.f609a.a()), "Your current device does not support Google payment.", 4, null);
            o.b(Q(), new b.n(u.f51776a.e(R$string.common_google_pay_not_support, ae.a.f627a.a())));
            c0();
        } else if (coinSku.getSkuDetails() != null) {
            if (baseActivity != null) {
                billingRepo.K(str, baseActivity, N(), coinSku, baseEpisode, actResource);
            } else {
                EventManager.K0(eventManager, str, coinSku, null, actResource, String.valueOf(k.f609a.b()), "Activity is null", 4, null);
            }
        } else {
            f("purchase failed -> skuDetails is null");
            EventManager.K0(eventManager, str, coinSku, null, actResource, String.valueOf(k.f609a.a()), "SkuDetails is null", 4, null);
            o.b(Q(), new b.n(u.f51776a.d(R$string.common_unknown_exception)));
            c0();
        }
    }

    private final r Y(String str) {
        return BaseViewModel.i(this, "queryNotAcknowledgedPurchases", false, new BillingViewModel$queryNotAcknowledgedPurchases$1(this, str, null), 2, null);
    }

    private final r Z(String str) {
        return BaseViewModel.i(this, "queryNotAcknowledgedSubs", false, new BillingViewModel$queryNotAcknowledgedSubs$1(this, str, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a0(List<zc.g> list) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("queryProductDetailList -> supportOneTimePurchase(");
        BillingRepo billingRepo = BillingRepo.f43237a;
        sb2.append(billingRepo.A());
        sb2.append(") supportSubscription(");
        sb2.append(billingRepo.B());
        sb2.append(')');
        v(sb2.toString());
        v("queryProductDetailList -> list(" + l.d(list) + ')');
        billingRepo.e0(N(), list);
    }

    private final r b0(String str, Integer num) {
        return BaseViewModel.i(this, "queryTTPInfo", false, new BillingViewModel$queryTTPInfo$1(str, num, this, null), 2, null);
    }

    private final void c0() {
        h0.f51735a.e(new Runnable() { // from class: rk.a
            @Override // java.lang.Runnable
            public final void run() {
                BillingViewModel.d0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0() {
        IDActivity iDActivity;
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null && (iDActivity = d10.get()) != null) {
            new gi.a(iDActivity).show();
        }
    }

    private final void e0(String str, BaseActivity baseActivity, SubsSku subsSku, BaseEpisode baseEpisode, String str2, int i10, zc.k kVar, String str3, SubsSku subsSku2, String str4, String str5, String str6) {
        ActResource p10 = baseEpisode != null ? ud.a.f68411a.p() : null;
        EventManager eventManager = EventManager.f42463a;
        EventManager.G0(eventManager, str, subsSku, baseEpisode, p10, i10, null, null, str4, str5, null, str6, 608, null);
        BillingRepo billingRepo = BillingRepo.f43237a;
        if (!billingRepo.B()) {
            eventManager.I0(str, subsSku, baseEpisode, p10, i10, String.valueOf(k.f609a.a()), "Your current device does not support Google payment.");
            o.b(Q(), new b.r(u.f51776a.e(R$string.common_google_pay_not_support, ae.a.f627a.a())));
            c0();
        } else if (subsSku.getSkuDetails() == null) {
            f("subs failed -> skuDetails is null");
            eventManager.I0(str, subsSku, baseEpisode, p10, i10, String.valueOf(k.f609a.a()), "SkuDetails is null");
            o.b(Q(), new b.r(u.f51776a.d(R$string.common_unknown_exception)));
            c0();
        } else if (baseActivity != null) {
            billingRepo.L(str, baseActivity, N(), subsSku, baseEpisode, p10, str2, i10, kVar, str3, subsSku2);
        } else {
            eventManager.I0(str, subsSku, baseEpisode, p10, i10, String.valueOf(k.f609a.b()), "Activity is null");
        }
    }

    private final void f0(String str, ThirdPartyPaymentSkuResult thirdPartyPaymentSkuResult, BaseEpisode baseEpisode) {
        IDActivity iDActivity;
        this.f48330l = true;
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "third_party_payment_click", bundle, 0L, 4, null);
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null && (iDActivity = d10.get()) != null) {
            IntentUtil.f48164a.c(iDActivity, thirdPartyPaymentSkuResult.formatUrl(iDActivity, str, baseEpisode));
        }
    }

    @NotNull
    public final MutableLiveData<com.startshorts.androidplayer.viewmodel.billing.b> Q() {
        return (MutableLiveData) this.f48323e.getValue();
    }

    public final boolean S() {
        return this.f48330l;
    }

    public final void W(@NotNull com.startshorts.androidplayer.viewmodel.billing.a intent) {
        r d10;
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.c) {
            this.f48327i = ((a.c) intent).a();
            M();
        } else if (intent instanceof a.h) {
            if (!ae.a.f627a.i()) {
                a0(((a.h) intent).a());
            } else if (!BillingRepo.f43237a.B()) {
                d10 = gt.g.d(ViewModelKt.getViewModelScope(this), null, null, new BillingViewModel$process$1(this, intent, null), 3, null);
                this.f48328j = d10;
            } else {
                a0(((a.h) intent).a());
            }
        } else if (intent instanceof a.e) {
            a.e eVar = (a.e) intent;
            X(eVar.h(), eVar.d(), eVar.a(), eVar.g(), eVar.c(), eVar.f(), eVar.e(), eVar.b());
        } else if (intent instanceof a.j) {
            a.j jVar = (a.j) intent;
            e0(jVar.d(), jVar.a(), jVar.j(), jVar.c(), jVar.f(), jVar.k(), jVar.l(), jVar.h(), jVar.g(), jVar.i(), jVar.e(), jVar.b());
        } else if (intent instanceof a.k) {
            a.k kVar = (a.k) intent;
            f0(kVar.b(), kVar.c(), kVar.a());
        } else if (intent instanceof a.f) {
            Y(((a.f) intent).a());
        } else if (intent instanceof a.g) {
            Z(((a.g) intent).a());
        } else if (intent instanceof a.C0653a) {
            K(((a.C0653a) intent).a());
        } else if (intent instanceof a.d) {
            O((a.d) intent);
        } else if (intent instanceof a.i) {
            a.i iVar = (a.i) intent;
            b0(iVar.a(), iVar.b());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "BillingViewModel";
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    public void w() {
        super.w();
        BillingRepo billingRepo = BillingRepo.f43237a;
        billingRepo.f0(P());
        billingRepo.g0(P());
        r rVar = this.f48328j;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f48328j = null;
    }
}
