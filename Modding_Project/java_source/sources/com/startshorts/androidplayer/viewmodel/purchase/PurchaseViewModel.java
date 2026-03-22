package com.startshorts.androidplayer.viewmodel.purchase;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.purchase.BlackFridayCoinSku;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.purchase.LowSkuTemplateNotificationCoinSku;
import com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentCoinSku;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentSkuResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel;
import com.startshorts.androidplayer.viewmodel.purchase.a;
import com.startshorts.androidplayer.viewmodel.purchase.b;
import com.tencent.wcdb.FileUtils;
import java.util.Iterator;
import java.util.List;
import jk.o;
import jk.u;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PurchaseViewModel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPurchaseViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaseViewModel.kt\ncom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,671:1\n360#2,7:672\n1863#2,2:680\n1863#2,2:682\n1863#2,2:684\n1863#2,2:686\n1863#2,2:688\n1863#2,2:690\n1863#2,2:692\n1863#2,2:694\n1863#2,2:696\n1#3:679\n*S KotlinDebug\n*F\n+ 1 PurchaseViewModel.kt\ncom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel\n*L\n138#1:672,7\n294#1:680,2\n440#1:682,2\n445#1:684,2\n458#1:686,2\n464#1:688,2\n523#1:690,2\n526#1:692,2\n541#1:694,2\n562#1:696,2\n*E\n"})
/* loaded from: classes7.dex */
public final class PurchaseViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f48984p = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48985e = c.b(new Function0() { // from class: al.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData X;
            X = PurchaseViewModel.X();
            return X;
        }
    });
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f48986f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f48987g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private BaseEpisode f48988h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private QueryNormalCoinSkuResult f48989i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private ThirdPartyPaymentSkuResult f48990j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private List<BlackFridayCoinSku> f48991k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private CoinSku f48992l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private CoinSku f48993m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f48994n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private SubsSku f48995o;

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void T(List<? extends Object> list) {
        boolean z10;
        List<CoinSku> list2;
        CoinSku coinSku;
        Object obj;
        List<CoinSku> list3;
        SubsSku subsSku;
        List<SubsSku> list4;
        EventManager eventManager = EventManager.f42463a;
        String N = N();
        BaseEpisode baseEpisode = this.f48988h;
        String str = this.f48987g;
        if (str == null) {
            str = "other";
        }
        ThirdPartyPaymentSkuResult thirdPartyPaymentSkuResult = this.f48990j;
        if (thirdPartyPaymentSkuResult != null) {
            z10 = thirdPartyPaymentSkuResult.enable();
        } else {
            z10 = false;
        }
        EventManager.Y0(eventManager, N, str, baseEpisode, z10, null, 16, null);
        String str2 = this.f48986f;
        if (str2 != null) {
            switch (str2.hashCode()) {
                case -1131860734:
                    if (!str2.equals("top_up_dialog")) {
                        return;
                    }
                    break;
                case -1056761421:
                    if (str2.equals("coin_store")) {
                        QueryNormalCoinSkuResult queryNormalCoinSkuResult = this.f48989i;
                        if (queryNormalCoinSkuResult != null) {
                            list2 = queryNormalCoinSkuResult.getSkuInfoResponses();
                        } else {
                            list2 = null;
                        }
                        if (list2 != null) {
                            for (CoinSku coinSku2 : list2) {
                                u.l(coinSku2, list, false, 2, null);
                            }
                        }
                        if (list2 != null) {
                            Iterator<T> it = list2.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    obj = it.next();
                                    if (((CoinSku) obj).getSkuType() == 0) {
                                    }
                                } else {
                                    obj = null;
                                }
                            }
                            coinSku = (CoinSku) obj;
                        } else {
                            coinSku = null;
                        }
                        if (coinSku != null) {
                            if (list2 != null) {
                                list2.remove(coinSku);
                            }
                        } else {
                            List<CoinSku> list5 = list2;
                            if (list5 != null && !list5.isEmpty()) {
                                coinSku = list2.remove(0);
                            }
                        }
                        if (coinSku != null) {
                            this.f48993m = coinSku;
                        }
                        o.b(R(), new b.k(list2, coinSku, null, null));
                        return;
                    }
                    return;
                case -868043323:
                    if (!str2.equals("top_up")) {
                        return;
                    }
                    break;
                case -174920269:
                    if (str2.equals("subs_expansion")) {
                        SubsSku subsSku2 = this.f48995o;
                        if (subsSku2 != null) {
                            u.k(subsSku2, list);
                        }
                        o.b(R(), new b.j(this.f48995o));
                        return;
                    }
                    return;
                case 17878207:
                    if (str2.equals("expansion")) {
                        CoinSku coinSku3 = this.f48992l;
                        if (coinSku3 != null) {
                            u.l(coinSku3, list, false, 2, null);
                        }
                        o.b(R(), new b.i(this.f48992l));
                        return;
                    }
                    return;
                case 1775977887:
                    if (str2.equals("black_friday")) {
                        List<BlackFridayCoinSku> list6 = this.f48991k;
                        if (list6 != null) {
                            for (BlackFridayCoinSku blackFridayCoinSku : list6) {
                                if (blackFridayCoinSku.getGpSkuId().length() > 0) {
                                    u.l(blackFridayCoinSku, list, false, 2, null);
                                }
                            }
                        }
                        o.b(R(), new b.h(this.f48991k));
                        return;
                    }
                    return;
                default:
                    return;
            }
            QueryNormalCoinSkuResult queryNormalCoinSkuResult2 = this.f48989i;
            if (queryNormalCoinSkuResult2 != null) {
                list3 = queryNormalCoinSkuResult2.getSkuInfoResponses();
            } else {
                list3 = null;
            }
            if (this.f48994n && list3 != null) {
                LowSkuTemplateNotificationCoinSku lowSkuTemplateNotificationCoinSku = new LowSkuTemplateNotificationCoinSku();
                lowSkuTemplateNotificationCoinSku.setGpSkuId("");
                Unit unit = Unit.f60915a;
                list3.add(0, lowSkuTemplateNotificationCoinSku);
            }
            ThirdPartyPaymentSkuResult S = S();
            if (S != null && list3 != null) {
                ThirdPartyPaymentCoinSku thirdPartyPaymentCoinSku = new ThirdPartyPaymentCoinSku(S);
                thirdPartyPaymentCoinSku.setGpSkuId("");
                Unit unit2 = Unit.f60915a;
                list3.add(0, thirdPartyPaymentCoinSku);
            }
            QueryNormalCoinSkuResult queryNormalCoinSkuResult3 = this.f48989i;
            if (queryNormalCoinSkuResult3 != null) {
                subsSku = queryNormalCoinSkuResult3.getActiveSubscribeSku();
            } else {
                subsSku = null;
            }
            if (subsSku != null) {
                u.k(subsSku, list);
            }
            QueryNormalCoinSkuResult queryNormalCoinSkuResult4 = this.f48989i;
            if (queryNormalCoinSkuResult4 != null) {
                list4 = queryNormalCoinSkuResult4.getSubscribeSkuResponses();
            } else {
                list4 = null;
            }
            if (list4 != null) {
                for (SubsSku subsSku3 : list4) {
                    u.k(subsSku3, list);
                }
            }
            if (list3 != null) {
                for (CoinSku coinSku4 : list3) {
                    u.l(coinSku4, list, false, 2, null);
                }
            }
            o.b(R(), new b.k(list3, null, list4, subsSku));
        }
    }

    private final void U(String str, String str2, String str3, GPayPriceInfo gPayPriceInfo, BaseEpisode baseEpisode, int i10) {
        SubsSku subsSku = this.f48995o;
        if (subsSku != null) {
            EventManager.U0(EventManager.f42463a, str, subsSku, gPayPriceInfo, str2, baseEpisode, null, null, Integer.valueOf(i10), null, null, TTVideoEngineInterface.PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_CHECK_COUNT, null);
        }
    }

    private final void V(String str, String str2, GPayPriceInfo gPayPriceInfo, BaseEpisode baseEpisode) {
        CoinSku coinSku;
        CoinSku coinSku2;
        String str3;
        List<CoinSku> skuInfoResponses;
        Object obj;
        Object obj2;
        String str4 = this.f48986f;
        ActResource actResource = null;
        if (Intrinsics.areEqual(str4, "black_friday")) {
            List<BlackFridayCoinSku> list = this.f48991k;
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        obj2 = it.next();
                        if (Intrinsics.areEqual(((BlackFridayCoinSku) obj2).getGpSkuId(), str2)) {
                            break;
                        }
                    } else {
                        obj2 = null;
                        break;
                    }
                }
                coinSku = (BlackFridayCoinSku) obj2;
            } else {
                coinSku = null;
            }
        } else if (Intrinsics.areEqual(str4, "expansion")) {
            coinSku = this.f48992l;
        } else {
            QueryNormalCoinSkuResult queryNormalCoinSkuResult = this.f48989i;
            if (queryNormalCoinSkuResult != null && (skuInfoResponses = queryNormalCoinSkuResult.getSkuInfoResponses()) != null) {
                Iterator<T> it2 = skuInfoResponses.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        obj = it2.next();
                        if (Intrinsics.areEqual(((CoinSku) obj).getGpSkuId(), str2)) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                coinSku = (CoinSku) obj;
            } else {
                coinSku = null;
            }
            if (coinSku == null && (coinSku2 = this.f48993m) != null) {
                if (coinSku2 != null) {
                    str3 = coinSku2.getGpSkuId();
                } else {
                    str3 = null;
                }
                if (Intrinsics.areEqual(str3, str2)) {
                    coinSku = this.f48993m;
                }
            }
        }
        CoinSku coinSku3 = coinSku;
        EventManager eventManager = EventManager.f42463a;
        String N = N();
        if (baseEpisode != null) {
            actResource = ud.a.f68411a.p();
        }
        EventManager.T0(eventManager, N, coinSku3, gPayPriceInfo, str, baseEpisode, actResource, null, null, null, FileUtils.S_IRWXU, null);
    }

    private final void W(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        List<SubsSku> subscribeSkuResponses;
        Object obj;
        QueryNormalCoinSkuResult queryNormalCoinSkuResult = this.f48989i;
        if (queryNormalCoinSkuResult != null && (subscribeSkuResponses = queryNormalCoinSkuResult.getSubscribeSkuResponses()) != null) {
            Iterator<T> it = subscribeSkuResponses.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(((SubsSku) obj).getSkuId(), str2)) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            SubsSku subsSku = (SubsSku) obj;
            if (subsSku != null) {
                EventManager.U0(EventManager.f42463a, "recharge", subsSku, gPayPriceInfo, str, null, null, null, null, null, null, 1008, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData X() {
        return new MutableLiveData();
    }

    private final r Z() {
        return BaseViewModel.i(this, "queryBlackFridayCoinSkuList", false, new PurchaseViewModel$queryBlackFridayCoinSkuList$1(this, null), 2, null);
    }

    private final r a0() {
        return BaseViewModel.i(this, "queryExpansionCoinSku", false, new PurchaseViewModel$queryExpansionCoinSku$1(this, null), 2, null);
    }

    private final r b0() {
        return BaseViewModel.i(this, "queryExpansionSubsSku", false, new PurchaseViewModel$queryExpansionSubsSku$1(this, null), 2, null);
    }

    private final r c0(String str, String str2) {
        return BaseViewModel.i(this, "queryNormalCoinSkuList(" + str + ')', false, new PurchaseViewModel$queryNormalCoinSkuList$1(this, str2, str, null), 2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0082, code lost:
        if (r3.equals("top_up") == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ba, code lost:
        if (r3.equals("top_up_dialog") == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00be, code lost:
        r3 = r6.f48989i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c0, code lost:
        if (r3 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c2, code lost:
        r3 = r3.getSkuInfoResponses();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c6, code lost:
        if (r3 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c8, code lost:
        r3 = r3.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00d2, code lost:
        if (r3.hasNext() == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d4, code lost:
        r4 = (com.startshorts.androidplayer.bean.purchase.CoinSku) r3.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e2, code lost:
        if (r4.getGpSkuId().length() <= 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00e4, code lost:
        r1.add(r4.getGpSkuId());
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ec, code lost:
        r3 = r6.f48989i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ee, code lost:
        if (r3 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f0, code lost:
        r3 = r3.getSubscribeSkuResponses();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00f4, code lost:
        if (r3 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00f6, code lost:
        r3 = r3.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0100, code lost:
        if (r3.hasNext() == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0102, code lost:
        r4 = (com.startshorts.androidplayer.bean.subs.SubsSku) r3.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0110, code lost:
        if (android.text.TextUtils.isEmpty(r4.getSkuId()) != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0112, code lost:
        r2.add(r4.getSkuId());
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x011a, code lost:
        r3 = r6.f48989i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x011c, code lost:
        if (r3 == null) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x011e, code lost:
        r3 = r3.getActiveSubscribeSku();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0122, code lost:
        if (r3 == null) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x012c, code lost:
        if (android.text.TextUtils.isEmpty(r3.getSkuId()) != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x012e, code lost:
        r2.add(r3.getSkuId());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void d0() {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel.d0():void");
    }

    private final void e0(Context context, SubsSku subsSku, SubsSku subsSku2) {
        BaseViewModel.i(this, "querySubsUpdateMode", false, new PurchaseViewModel$querySubsUpdateMode$1(subsSku, context, this, subsSku2, null), 2, null);
    }

    private final r f0(String str, Integer num) {
        return BaseViewModel.i(this, "queryTTPInfo", false, new PurchaseViewModel$queryTTPInfo$1(str, num, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0(QueryNormalCoinSkuResult queryNormalCoinSkuResult) {
        List<CoinSku> list;
        boolean z10;
        boolean z11;
        boolean isLowPayScoreUser;
        List<SubsSku> subscribeSkuResponses;
        if (queryNormalCoinSkuResult != null && (subscribeSkuResponses = queryNormalCoinSkuResult.getSubscribeSkuResponses()) != null) {
            for (SubsSku subsSku : subscribeSkuResponses) {
                subsSku.setSource("3");
                subsSku.setReceiveType(AccountRepo.f43052a.p0());
            }
        }
        List<SubsSku> list2 = null;
        if (queryNormalCoinSkuResult != null) {
            list = queryNormalCoinSkuResult.getSkuInfoResponses();
        } else {
            list = null;
        }
        List<CoinSku> list3 = list;
        boolean z12 = true;
        if (list3 != null && !list3.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (ABTestFactory.f42224a.c1().isEnable().invoke().booleanValue()) {
            if (z10 || queryNormalCoinSkuResult == null) {
                isLowPayScoreUser = false;
            } else {
                isLowPayScoreUser = queryNormalCoinSkuResult.isLowPayScoreUser();
            }
            this.f48994n = isLowPayScoreUser;
        }
        if (queryNormalCoinSkuResult != null) {
            list2 = queryNormalCoinSkuResult.getSubscribeSkuResponses();
        }
        List<SubsSku> list4 = list2;
        if (list4 != null && !list4.isEmpty()) {
            z11 = false;
        } else {
            z11 = true;
        }
        o.b(R(), new b.d((z10 && z11) ? false : false, queryNormalCoinSkuResult));
    }

    public final void I(@NotNull SubsSku discountSubs) {
        int i10;
        Intrinsics.checkNotNullParameter(discountSubs, "discountSubs");
        QueryNormalCoinSkuResult queryNormalCoinSkuResult = this.f48989i;
        if (queryNormalCoinSkuResult != null) {
            List<SubsSku> subscribeSkuResponses = queryNormalCoinSkuResult.getSubscribeSkuResponses();
            if (subscribeSkuResponses != null && !subscribeSkuResponses.isEmpty()) {
                List<SubsSku> subscribeSkuResponses2 = queryNormalCoinSkuResult.getSubscribeSkuResponses();
                if (subscribeSkuResponses2 != null) {
                    Iterator<SubsSku> it = subscribeSkuResponses2.iterator();
                    int i11 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().getType() == discountSubs.getType()) {
                                break;
                            }
                            i11++;
                        } else {
                            i11 = -1;
                            break;
                        }
                    }
                    Integer valueOf = Integer.valueOf(i11);
                    if (valueOf.intValue() == -1) {
                        valueOf = null;
                    }
                    if (valueOf != null) {
                        i10 = valueOf.intValue();
                    } else {
                        i10 = -1;
                    }
                    if (i10 != -1) {
                        subscribeSkuResponses2.set(i10, discountSubs);
                        return;
                    } else {
                        subscribeSkuResponses2.add(0, discountSubs);
                        return;
                    }
                }
                return;
            }
            queryNormalCoinSkuResult.setSubscribeSkuResponses(CollectionsKt.t(discountSubs));
        }
    }

    public final void J() {
        this.f48991k = null;
    }

    public final void K(@NotNull String scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        this.f48989i = null;
        this.f48990j = null;
        PurchaseRepo.f43366a.f(scene);
    }

    public final boolean L() {
        if (this.f48991k != null) {
            return true;
        }
        return false;
    }

    public final boolean M() {
        if (this.f48989i != null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x004e, code lost:
        if (r0.equals("coin_store") == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0059, code lost:
        if (r0.equals("top_up_dialog") == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
        return r1;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String N() {
        /*
            r2 = this;
            java.lang.String r0 = r2.f48986f
            if (r0 == 0) goto L5b
            int r1 = r0.hashCode()
            switch(r1) {
                case -1131860734: goto L53;
                case -1056761421: goto L48;
                case -868043323: goto L3c;
                case -174920269: goto L30;
                case 17878207: goto L24;
                case 1775977887: goto L18;
                case 1887481713: goto Lc;
                default: goto Lb;
            }
        Lb:
            goto L5b
        Lc:
            java.lang.String r1 = "coins_2_sub_dialog"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L15
            goto L5b
        L15:
            java.lang.String r0 = "pay_coins_2_sub"
            goto L5d
        L18:
            java.lang.String r1 = "black_friday"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L21
            goto L5b
        L21:
            java.lang.String r0 = "my_wallet_discount"
            goto L5d
        L24:
            java.lang.String r1 = "expansion"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L2d
            goto L5b
        L2d:
            java.lang.String r0 = "pay_retain"
            goto L5d
        L30:
            java.lang.String r1 = "subs_expansion"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L39
            goto L5b
        L39:
            java.lang.String r0 = "retention_pop_sku_pay"
            goto L5d
        L3c:
            java.lang.String r1 = "top_up"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L45
            goto L5b
        L45:
            java.lang.String r0 = "recharge_page"
            goto L5d
        L48:
            java.lang.String r1 = "coin_store"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L51
            goto L5b
        L51:
            r0 = r1
            goto L5d
        L53:
            java.lang.String r1 = "top_up_dialog"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L51
        L5b:
            java.lang.String r0 = ""
        L5d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel.N():java.lang.String");
    }

    @Nullable
    public final CoinSku O() {
        return this.f48992l;
    }

    @Nullable
    public final SubsSku P() {
        return this.f48995o;
    }

    @Nullable
    public final QueryNormalCoinSkuResult Q() {
        return this.f48989i;
    }

    @NotNull
    public final MutableLiveData<b> R() {
        return (MutableLiveData) this.f48985e.getValue();
    }

    @Nullable
    public final ThirdPartyPaymentSkuResult S() {
        ThirdPartyPaymentSkuResult thirdPartyPaymentSkuResult = this.f48990j;
        if (thirdPartyPaymentSkuResult != null && thirdPartyPaymentSkuResult.enable()) {
            return this.f48990j;
        }
        return null;
    }

    public final void Y(@NotNull com.startshorts.androidplayer.viewmodel.purchase.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.g) {
            a.g gVar = (a.g) intent;
            this.f48986f = gVar.c();
            this.f48987g = gVar.a();
            this.f48988h = gVar.b();
            String c10 = gVar.c();
            switch (c10.hashCode()) {
                case -1131860734:
                    if (!c10.equals("top_up_dialog")) {
                        return;
                    }
                    break;
                case -1056761421:
                    if (!c10.equals("coin_store")) {
                        return;
                    }
                    break;
                case -868043323:
                    if (!c10.equals("top_up")) {
                        return;
                    }
                    break;
                case -174920269:
                    if (c10.equals("subs_expansion")) {
                        b0();
                        return;
                    }
                    return;
                case 17878207:
                    if (c10.equals("expansion")) {
                        a0();
                        return;
                    }
                    return;
                case 1775977887:
                    if (c10.equals("black_friday")) {
                        Z();
                        return;
                    }
                    return;
                case 1887481713:
                    if (c10.equals("coins_2_sub_dialog")) {
                        b0();
                        return;
                    }
                    return;
                default:
                    return;
            }
            c0(gVar.c(), "topup");
        } else if (intent instanceof a.f) {
            d0();
        } else if (intent instanceof a.b) {
            T(((a.b) intent).a());
        } else if (intent instanceof a.d) {
            a.d dVar = (a.d) intent;
            V(dVar.b(), dVar.c(), dVar.d(), dVar.a());
        } else if (intent instanceof a.e) {
            a.e eVar = (a.e) intent;
            W(eVar.a(), eVar.b(), eVar.c());
        } else if (intent instanceof a.c) {
            a.c cVar = (a.c) intent;
            U(cVar.e(), cVar.b(), cVar.c(), cVar.d(), cVar.a(), cVar.f());
        } else if (intent instanceof a.i) {
            a.i iVar = (a.i) intent;
            f0(iVar.a(), iVar.b());
        } else if (intent instanceof a.h) {
            a.h hVar = (a.h) intent;
            e0(hVar.b(), hVar.a(), hVar.c());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final void g0(boolean z10) {
        this.f48994n = z10;
    }

    public final void h0(@Nullable QueryNormalCoinSkuResult queryNormalCoinSkuResult) {
        this.f48989i = queryNormalCoinSkuResult;
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "PurchaseViewModel";
    }
}
