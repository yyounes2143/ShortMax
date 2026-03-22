package ce;

import android.content.Context;
import android.os.Bundle;
import com.applovin.sdk.AppLovinEventParameters;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.act.ActCallH5Message;
import com.startshorts.androidplayer.bean.act.ActCallH5QueryPriceResult;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.CallH5DataKey;
import com.startshorts.androidplayer.bean.act.H5Result;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.purchase.ActQueryPriceResult;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.act.SkipType;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.billing.ActPaymentDelegate;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.act.ActActivity;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.utils.IntentUtil;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActRouteManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nActRouteManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActRouteManager.kt\ncom/startshorts/androidplayer/manager/act/ActRouteManager\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,584:1\n32#2,2:585\n1863#3,2:587\n1863#3,2:589\n*S KotlinDebug\n*F\n+ 1 ActRouteManager.kt\ncom/startshorts/androidplayer/manager/act/ActRouteManager\n*L\n207#1:585,2\n450#1:587,2\n486#1:589,2\n*E\n"})
/* loaded from: classes6.dex */
public final class j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j f3485a = new j();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ms.i f3486b = kotlin.c.b(new Function0() { // from class: ce.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap k10;
            k10 = j.k();
            return k10;
        }
    });
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static ActResource f3487c;

    /* compiled from: ActRouteManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a implements IntentUtil.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ActResource f3488a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f3489b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f3490c;

        a(ActResource actResource, String str, String str2) {
            this.f3488a = actResource;
            this.f3489b = str;
            this.f3490c = str2;
        }

        @Override // com.startshorts.androidplayer.utils.IntentUtil.a
        public void a(String channel) {
            Intrinsics.checkNotNullParameter(channel, "channel");
            EventManager eventManager = EventManager.f42463a;
            Bundle x10 = EventManager.x(eventManager, this.f3488a, false, 2, null);
            String str = this.f3489b;
            String str2 = this.f3490c;
            x10.putString("share_channel", channel);
            if (str != null && str.length() != 0) {
                x10.putString("activity_id", str);
            }
            if (str2 != null && str2.length() != 0) {
                x10.putString("activity_name", str2);
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "activity_share_success", x10, 0L, 4, null);
        }
    }

    private j() {
    }

    private final ActPaymentDelegate g(String str, ActResource actResource) {
        ActPaymentDelegate actPaymentDelegate = j().get(str);
        if (actPaymentDelegate == null) {
            Logger logger = Logger.f41511a;
            logger.h("ActRouteManager", "createPaymentDelegate -> from(" + str + ')');
            ActPaymentDelegate actPaymentDelegate2 = new ActPaymentDelegate(actResource);
            j().put(str, actPaymentDelegate2);
            return actPaymentDelegate2;
        }
        return actPaymentDelegate;
    }

    private final ConcurrentHashMap<String, ActPaymentDelegate> j() {
        return (ConcurrentHashMap) f3486b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap k() {
        return new ConcurrentHashMap();
    }

    public static /* synthetic */ void o(j jVar, Context context, String str, ActResource actResource, DiscoverTab discoverTab, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            discoverTab = null;
        }
        jVar.n(context, str, actResource, discoverTab);
    }

    private final void p(Context context, String str, String str2, ActResource actResource) {
        int i10;
        String str3;
        try {
            ImmersionActivity.a aVar = ImmersionActivity.V0;
            ImmersionParams immersionParams = new ImmersionParams();
            immersionParams.setFrom(str2);
            immersionParams.setType(3);
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            if (str != null) {
                i10 = Integer.parseInt(str);
            } else {
                i10 = -1;
            }
            immersionShortsInfo.setShortsId(i10);
            immersionShortsInfo.setShortPlayCode(str);
            if (actResource != null) {
                str3 = actResource.getUpack();
            } else {
                str3 = null;
            }
            immersionShortsInfo.setUpack(str3);
            immersionParams.setShortsInfo(immersionShortsInfo);
            immersionParams.setActResource(actResource);
            Unit unit = Unit.f60915a;
            aVar.a(context, immersionParams);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ActRouteManager", "routeToActScene -> exception -> " + e10.getMessage());
        }
    }

    public static /* synthetic */ void r(j jVar, boolean z10, String str, BaseActivity baseActivity, ActResource actResource, String str2, Function2 function2, Function2 function22, Function1 function1, int i10, Object obj) {
        boolean z11;
        ActResource actResource2;
        Function2 function23;
        if ((i10 & 1) != 0) {
            z11 = true;
        } else {
            z11 = z10;
        }
        if ((i10 & 8) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        if ((i10 & 64) != 0) {
            function23 = null;
        } else {
            function23 = function22;
        }
        jVar.q(z11, str, baseActivity, actResource2, str2, function2, function23, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(Function1 function1, BaseActivity baseActivity, CoinSku coinSku, String str, boolean z10, String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (z10) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putFloat("amount", coinSku.getRecharge());
            bundle.putString(AppLovinEventParameters.PRODUCT_IDENTIFIER, coinSku.getGpSkuId());
            bundle.putString("product_id", coinSku.getSkuProductId());
            bundle.putString("scene", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "win_product_pay_success", bundle, 0L, 4, null);
            Logger.f41511a.h("ActRouteManager", "routeWhenCallApp -> succeed pay");
            function1.invoke(H5Result.RESULT_PAYMENT_SUCCEED);
            baseActivity.x(R$string.top_up_fragment_recharge_success);
        } else {
            Logger logger = Logger.f41511a;
            logger.e("ActRouteManager", "routeWhenCallApp -> failed pay,msg=" + msg);
            function1.invoke(H5Result.RESULT_PAYMENT_REFRESH);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t(Function1 function1, BaseActivity baseActivity, SubsSku subsSku, String str, boolean z10, String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (z10) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putFloat("amount", subsSku.getPayAmount());
            bundle.putString(AppLovinEventParameters.PRODUCT_IDENTIFIER, subsSku.getSkuId());
            bundle.putString("product_id", subsSku.getProductId());
            bundle.putString("scene", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "win_product_pay_success", bundle, 0L, 4, null);
            Logger.f41511a.h("ActRouteManager", "routeWhenCallApp -> succeed pay");
            function1.invoke(H5Result.RESULT_PAYMENT_SUCCEED);
            baseActivity.x(R$string.subscription_detail_activity_subs_success);
        } else {
            Logger logger = Logger.f41511a;
            logger.e("ActRouteManager", "routeWhenCallApp -> failed pay,msg=" + msg);
            function1.invoke(H5Result.RESULT_PAYMENT_REFRESH);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u(String str, Function1 function1, boolean z10, List list, String message) {
        ActCallH5QueryPriceResult actCallH5QueryPriceResult;
        Intrinsics.checkNotNullParameter(message, "message");
        if (z10) {
            HashMap hashMap = new HashMap();
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ActQueryPriceResult actQueryPriceResult = (ActQueryPriceResult) it.next();
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put(CallH5DataKey.KEY_ORIGIN_PRICE, actQueryPriceResult.getOriginPrice());
                    hashMap2.put(CallH5DataKey.KEY_DISCOUNT_PRICE, actQueryPriceResult.getDiscountPrice());
                    hashMap2.put(CallH5DataKey.KEY_RENEW_PRICE, actQueryPriceResult.getRenewPrice());
                    hashMap.put(actQueryPriceResult.getSkuId(), hashMap2);
                }
            }
            actCallH5QueryPriceResult = new ActCallH5QueryPriceResult(str, 0, hashMap, message);
        } else {
            actCallH5QueryPriceResult = new ActCallH5QueryPriceResult(str, -1, null, message);
        }
        String d10 = l.d(new ActCallH5Message(5, actCallH5QueryPriceResult));
        Logger logger = Logger.f41511a;
        logger.h("ActRouteManager", "querySkuPrice result -> " + d10);
        function1.invoke(d10);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(BaseActivity baseActivity, final Function1 function1) {
        AdManager.q0(AdManager.f41600a, "", baseActivity, "activity", null, new Function1() { // from class: ce.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit w10;
                w10 = j.w(Function1.this, ((Boolean) obj).booleanValue());
                return w10;
            }
        }, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w(Function1 function1, boolean z10) {
        String str;
        if (z10) {
            str = H5Result.RESULT_SUCCESS;
        } else {
            str = H5Result.RESULT_FAILED;
        }
        function1.invoke(str);
        return Unit.f60915a;
    }

    public final void h(@NotNull String from) {
        Intrinsics.checkNotNullParameter(from, "from");
        ActPaymentDelegate remove = j().remove(from);
        if (remove != null) {
            Logger logger = Logger.f41511a;
            logger.h("ActRouteManager", "destroyPaymentDelegate -> from(" + from + ')');
            remove.M();
        }
    }

    @Nullable
    public final ActResource i() {
        return f3487c;
    }

    public final void l(@NotNull ActResource actResource) {
        Intrinsics.checkNotNullParameter(actResource, "actResource");
        if (actResource.isShorts()) {
            ag.a.d(ag.a.f646a, "resource_bit", actResource.getSkipValue(), actResource, 0, null, null, null, null, null, 504, null);
        }
    }

    public final void m(@NotNull Context context, @NotNull String fromPosition, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fromPosition, "fromPosition");
        if (str == null) {
            Logger.f41511a.e("ActRouteManager", "routeToActH5 -> url is null");
            return;
        }
        Logger logger = Logger.f41511a;
        logger.h("ActRouteManager", "routeToActH5 -> fromPosition(" + fromPosition + ") url(" + str + ')');
        ActActivity.a.c(ActActivity.B, context, fromPosition, str, null, 8, null);
    }

    public final void n(@NotNull Context context, @NotNull String fromPosition, @NotNull ActResource actResource, @Nullable DiscoverTab discoverTab) {
        WeakReference<IDActivity> d10;
        IDActivity iDActivity;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fromPosition, "fromPosition");
        Intrinsics.checkNotNullParameter(actResource, "actResource");
        Logger logger = Logger.f41511a;
        logger.h("ActRouteManager", "routeToActScene -> " + actResource);
        String skipValue = actResource.getSkipValue();
        if (skipValue != null && skipValue.length() != 0) {
            int rawSkipType = actResource.getRawSkipType();
            if (rawSkipType == SkipType.SHORTS.getType()) {
                p(context, skipValue, "resource_bit", actResource);
                return;
            } else if (rawSkipType != SkipType.MARKETING_CAMPAIGN.getType() && rawSkipType != SkipType.COMBINATION_ACT.getType() && rawSkipType != SkipType.H5.getType()) {
                if (rawSkipType != SkipType.NATIVE.getType()) {
                    if (rawSkipType == SkipType.BRAND_AD.getType()) {
                        IntentUtil.f48164a.c(context, skipValue);
                        return;
                    } else if ((rawSkipType == SkipType.H5_BROWSER_OFFICIAL.getType() || rawSkipType == SkipType.H5_BROWSER_THIRD.getType()) && (d10 = aa.a.f321a.d()) != null && (iDActivity = d10.get()) != null && !IntentUtil.f48164a.c(iDActivity, actResource.formatBrowserUrl())) {
                        ActActivity.B.a(context, fromPosition, actResource, discoverTab);
                        return;
                    } else {
                        return;
                    }
                }
                return;
            } else {
                ActActivity.B.a(context, fromPosition, actResource, discoverTab);
                return;
            }
        }
        logger.e("ActRouteManager", "routeToActScene failed -> skipValue is null");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0286, code lost:
        if (r5.length() != 0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0289, code lost:
        r15.putString("activity_name", r5);
     */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0543  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(boolean r29, @org.jetbrains.annotations.NotNull java.lang.String r30, @org.jetbrains.annotations.NotNull final com.startshorts.androidplayer.ui.activity.base.BaseActivity r31, @org.jetbrains.annotations.Nullable com.startshorts.androidplayer.bean.act.ActResource r32, @org.jetbrains.annotations.NotNull java.lang.String r33, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super org.json.JSONObject, kotlin.Unit> r34, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super java.lang.String, ? super java.lang.Integer, kotlin.Unit> r35, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super java.lang.String, kotlin.Unit> r36) {
        /*
            Method dump skipped, instructions count: 1508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ce.j.q(boolean, java.lang.String, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.startshorts.androidplayer.bean.act.ActResource, java.lang.String, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function1):void");
    }

    public final void x(@Nullable ActResource actResource) {
        f3487c = actResource;
    }
}
