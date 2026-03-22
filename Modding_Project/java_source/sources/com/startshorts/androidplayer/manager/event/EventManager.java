package com.startshorts.androidplayer.manager.event;

import af.e;
import af.h;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.autofill.HintConstants;
import com.adjust.sdk.Constants;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventTypes;
import com.appsflyer.AdRevenueScheme;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.jiuzhou.cdn.repo.CdnRepo;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ActResourceExtraInfo;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.api.ApiErrorExtra;
import com.startshorts.androidplayer.bean.configure.CMSConfigResult;
import com.startshorts.androidplayer.bean.configure.RemoteConfigValue;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.event.EventAdjustTime;
import com.startshorts.androidplayer.bean.event.EventInfo;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.bean.purchase.BatchUnlockEpisodeSku;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import jk.b;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import qt.a;
import qt.d;
/* compiled from: EventManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1804:1\n1#2:1805\n216#3,2:1806\n*S KotlinDebug\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager\n*L\n1483#1:1806,2\n*E\n"})
/* loaded from: classes6.dex */
public final class EventManager {
    @NotNull

    /* renamed from: a */
    public static final EventManager f42463a = new EventManager();
    @NotNull

    /* renamed from: b */
    private static final List<h> f42464b = CollectionsKt.t(new e(), new SupersetEventLogger());
    @NotNull

    /* renamed from: c */
    private static final i f42465c = c.b(new Function0() { // from class: af.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap j12;
            j12 = EventManager.j1();
            return j12;
        }
    });
    @NotNull

    /* renamed from: d */
    private static final Object f42466d = new Object();
    @NotNull

    /* renamed from: e */
    private static final EventAdjustTime f42467e = new EventAdjustTime(-1);
    @NotNull

    /* renamed from: f */
    private static String f42468f = "";
    @Nullable

    /* renamed from: g */
    private static String f42469g = "";
    @NotNull

    /* renamed from: h */
    private static final a f42470h = d.b(false, 1, null);
    @NotNull

    /* renamed from: i */
    private static final List<String> f42471i = CollectionsKt.t("ad_placement_show", "recharge_show", "recharge_show_end", "ad_impressions", "ad_real_impressions", "ad_impressions_duration", "watch_ad_click", "task_click", "order_show", "order_create", "pay_success", "order_create_fail", "order_create_cancel", "subscribe_thing_show", "app_start", "push_send", "push_open", "reel_show", "reel_request", "initial_loading_time", "reward_show", "not_permission_success", "enter_reel_play", "favorite_click", "share", "favorite_hint_show", "check_in_click", "task_finish", "batch_thing_show", "noti_popup_show", "noti_popup_click", "noti_select_popup_show", "noti_select_popup_click", "reward_click", "ad_retention_show", "ad_retention_click", "ad_retention_close", "reel_play", "reel_cut", "playback_progress_track", "play_time_real", "play_time_schedule", "app_launch", "active_user", "interactive", "ad_request", "ad_fill", "abtest_value_change", "clarity", "clarity_click", "speed_click", "short_menu_click", "multi_task_finish", "multi_task_fail", "unlock_with_subscribe_sku_show", "unlock_now_click", "watch_ads_to_unlock_click", "unlock_pay_click", "rentention_dialog_show", "rentention_dialog_close", "return_other_payment", "buttonpay_click", "button_show", "button_click", "setting_page_show", "setting_button_click", "immersion_back_show", "immersion_back_click", "immersion_back_close", "immersion_back_play", "discover_module_show", "discover_module_click");
    @NotNull

    /* renamed from: j */
    private static final List<String> f42472j = CollectionsKt.t("app_start", "active_user", "recharge_show", "order_show", "order_click", "payment_choose", "buttonpay_click", "order_create", "pay_success", "order_create_fail", "order_create_cancel", "unlocked_page_show", "unlocked_ep_button_click", "watch_ad_click", "episode_unlock_ad_success", "rentention_dialog_show", "rentention_dialog_close");
    @NotNull

    /* renamed from: k */
    private static final List<String> f42473k = CollectionsKt.t("order_create", "pay_success", "order_create_fail", "order_create_cancel");
    @NotNull

    /* renamed from: l */
    private static final List<String> f42474l = CollectionsKt.t("recharge_show", "recharge_show_end", "order_show", "order_click", "buttonpay_click", "order_create", "pay_success", "order_create_fail", "order_create_cancel");
    @NotNull

    /* renamed from: m */
    private static final ConcurrentHashMap<String, Boolean> f42475m = new ConcurrentHashMap<>();

    /* renamed from: n */
    private static boolean f42476n;

    private EventManager() {
    }

    public static /* synthetic */ void B0(EventManager eventManager, String str, CoinSku coinSku, BaseEpisode baseEpisode, ActResource actResource, Integer num, Integer num2, String str2, String str3, String str4, int i10, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        Integer num3;
        Integer num4;
        String str5;
        String str6;
        String str7;
        if ((i10 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 8) != 0) {
            actResource2 = ud.a.f68411a.p();
        } else {
            actResource2 = actResource;
        }
        if ((i10 & 16) != 0) {
            num3 = null;
        } else {
            num3 = num;
        }
        if ((i10 & 32) != 0) {
            num4 = null;
        } else {
            num4 = num2;
        }
        if ((i10 & 64) != 0) {
            str5 = null;
        } else {
            str5 = str2;
        }
        if ((i10 & 128) != 0) {
            str6 = "other";
        } else {
            str6 = str3;
        }
        if ((i10 & 256) != 0) {
            str7 = null;
        } else {
            str7 = str4;
        }
        eventManager.z0(str, coinSku, baseEpisode2, actResource2, num3, num4, str5, str6, str7);
    }

    public static /* synthetic */ void C0(EventManager eventManager, String str, SubsSku subsSku, BaseEpisode baseEpisode, ActResource actResource, int i10, Integer num, Integer num2, String str2, String str3, String str4, int i11, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        int i12;
        Integer num3;
        Integer num4;
        String str5;
        String str6;
        String str7;
        if ((i11 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i11 & 8) != 0) {
            actResource2 = ud.a.f68411a.p();
        } else {
            actResource2 = actResource;
        }
        if ((i11 & 16) != 0) {
            i12 = 2;
        } else {
            i12 = i10;
        }
        if ((i11 & 32) != 0) {
            num3 = null;
        } else {
            num3 = num;
        }
        if ((i11 & 64) != 0) {
            num4 = null;
        } else {
            num4 = num2;
        }
        if ((i11 & 128) != 0) {
            str5 = null;
        } else {
            str5 = str2;
        }
        if ((i11 & 256) != 0) {
            str6 = "other";
        } else {
            str6 = str3;
        }
        if ((i11 & 512) != 0) {
            str7 = null;
        } else {
            str7 = str4;
        }
        eventManager.A0(str, subsSku, baseEpisode2, actResource2, i12, num3, num4, str5, str6, str7);
    }

    private final String F() {
        return (String) ng.e.f62912a.i("eventReportBlackList", "");
    }

    public static /* synthetic */ void F0(EventManager eventManager, String str, CoinSku coinSku, BaseEpisode baseEpisode, ActResource actResource, Integer num, Integer num2, String str2, String str3, String str4, String str5, int i10, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        Integer num3;
        Integer num4;
        String str6;
        String str7;
        String str8;
        String str9;
        if ((i10 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 8) != 0) {
            actResource2 = ud.a.f68411a.p();
        } else {
            actResource2 = actResource;
        }
        if ((i10 & 16) != 0) {
            num3 = null;
        } else {
            num3 = num;
        }
        if ((i10 & 32) != 0) {
            num4 = null;
        } else {
            num4 = num2;
        }
        if ((i10 & 64) != 0) {
            str6 = null;
        } else {
            str6 = str2;
        }
        if ((i10 & 128) != 0) {
            str7 = null;
        } else {
            str7 = str3;
        }
        if ((i10 & 256) != 0) {
            str8 = "other";
        } else {
            str8 = str4;
        }
        if ((i10 & 512) != 0) {
            str9 = null;
        } else {
            str9 = str5;
        }
        eventManager.D0(str, coinSku, baseEpisode2, actResource2, num3, num4, str6, str7, str8, str9);
    }

    private final ConcurrentHashMap<Long, Pair<String, Bundle>> G() {
        return (ConcurrentHashMap) f42465c.getValue();
    }

    public static /* synthetic */ void G0(EventManager eventManager, String str, SubsSku subsSku, BaseEpisode baseEpisode, ActResource actResource, int i10, Integer num, Integer num2, String str2, String str3, String str4, String str5, int i11, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        int i12;
        Integer num3;
        Integer num4;
        String str6;
        String str7;
        String str8;
        String str9;
        if ((i11 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i11 & 8) != 0) {
            actResource2 = ud.a.f68411a.p();
        } else {
            actResource2 = actResource;
        }
        if ((i11 & 16) != 0) {
            i12 = 2;
        } else {
            i12 = i10;
        }
        if ((i11 & 32) != 0) {
            num3 = null;
        } else {
            num3 = num;
        }
        if ((i11 & 64) != 0) {
            num4 = null;
        } else {
            num4 = num2;
        }
        if ((i11 & 128) != 0) {
            str6 = null;
        } else {
            str6 = str2;
        }
        if ((i11 & 256) != 0) {
            str7 = null;
        } else {
            str7 = str3;
        }
        if ((i11 & 512) != 0) {
            str8 = "other";
        } else {
            str8 = str4;
        }
        if ((i11 & 1024) != 0) {
            str9 = null;
        } else {
            str9 = str5;
        }
        eventManager.E0(str, subsSku, baseEpisode2, actResource2, i12, num3, num4, str6, str7, str8, str9);
    }

    private final Bundle I(CoinSku coinSku) {
        String str;
        if (coinSku != null) {
            Bundle bundle = new Bundle();
            int skuType = coinSku.getSkuType();
            String str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            if (skuType == 0) {
                str = "1";
            } else {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            }
            bundle.putString("is_main", str);
            if (!AccountRepo.f43052a.y0()) {
                str2 = "1";
            }
            bundle.putString("is_first", str2);
            return bundle;
        }
        return new Bundle();
    }

    private final Bundle J(SubsSku subsSku) {
        String str;
        if (subsSku != null) {
            Bundle bundle = new Bundle();
            if (AccountRepo.f43052a.y0()) {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            } else {
                str = "1";
            }
            bundle.putString("is_first", str);
            return bundle;
        }
        return new Bundle();
    }

    public static /* synthetic */ void K0(EventManager eventManager, String str, CoinSku coinSku, BaseEpisode baseEpisode, ActResource actResource, String str2, String str3, int i10, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        if ((i10 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 8) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        eventManager.H0(str, coinSku, baseEpisode2, actResource2, str2, str3);
    }

    public static /* synthetic */ void L0(EventManager eventManager, String str, SubsSku subsSku, BaseEpisode baseEpisode, ActResource actResource, int i10, String str2, String str3, int i11, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        int i12;
        if ((i11 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i11 & 8) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        if ((i11 & 16) != 0) {
            i12 = 2;
        } else {
            i12 = i10;
        }
        eventManager.I0(str, subsSku, baseEpisode2, actResource2, i12, str2, str3);
    }

    public final Bundle N() {
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(f42468f)) {
            bundle.putString("trace_id", f42468f);
        }
        return bundle;
    }

    public static /* synthetic */ void O0(EventManager eventManager, String str, CoinSku coinSku, BaseEpisode baseEpisode, ActResource actResource, String str2, String str3, String str4, int i10, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        String str5;
        String str6;
        String str7;
        if ((i10 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 8) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        if ((i10 & 16) != 0) {
            str5 = "other";
        } else {
            str5 = str2;
        }
        if ((i10 & 32) != 0) {
            str6 = null;
        } else {
            str6 = str3;
        }
        if ((i10 & 64) != 0) {
            str7 = null;
        } else {
            str7 = str4;
        }
        eventManager.M0(str, coinSku, baseEpisode2, actResource2, str5, str6, str7);
    }

    public static /* synthetic */ void P0(EventManager eventManager, String str, SubsSku subsSku, BaseEpisode baseEpisode, ActResource actResource, String str2, String str3, String str4, int i10, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        String str5;
        String str6;
        String str7;
        if ((i10 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 8) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        if ((i10 & 16) != 0) {
            str5 = "other";
        } else {
            str5 = str2;
        }
        if ((i10 & 32) != 0) {
            str6 = null;
        } else {
            str6 = str3;
        }
        if ((i10 & 64) != 0) {
            str7 = null;
        } else {
            str7 = str4;
        }
        eventManager.N0(str, subsSku, baseEpisode2, actResource2, str5, str6, str7);
    }

    public static /* synthetic */ void T0(EventManager eventManager, String str, CoinSku coinSku, GPayPriceInfo gPayPriceInfo, String str2, BaseEpisode baseEpisode, ActResource actResource, Boolean bool, Integer num, Integer num2, int i10, Object obj) {
        GPayPriceInfo gPayPriceInfo2;
        String str3;
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        Boolean bool2;
        Integer num3;
        Integer num4;
        if ((i10 & 4) != 0) {
            gPayPriceInfo2 = null;
        } else {
            gPayPriceInfo2 = gPayPriceInfo;
        }
        if ((i10 & 8) != 0) {
            str3 = null;
        } else {
            str3 = str2;
        }
        if ((i10 & 16) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 32) != 0) {
            actResource2 = ud.a.f68411a.p();
        } else {
            actResource2 = actResource;
        }
        if ((i10 & 64) != 0) {
            bool2 = Boolean.FALSE;
        } else {
            bool2 = bool;
        }
        if ((i10 & 128) != 0) {
            num3 = null;
        } else {
            num3 = num;
        }
        if ((i10 & 256) != 0) {
            num4 = null;
        } else {
            num4 = num2;
        }
        eventManager.R0(str, coinSku, gPayPriceInfo2, str3, baseEpisode2, actResource2, bool2, num3, num4);
    }

    public static /* synthetic */ void U0(EventManager eventManager, String str, SubsSku subsSku, GPayPriceInfo gPayPriceInfo, String str2, BaseEpisode baseEpisode, ActResource actResource, Boolean bool, Integer num, Integer num2, Integer num3, int i10, Object obj) {
        GPayPriceInfo gPayPriceInfo2;
        String str3;
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        Boolean bool2;
        Integer num4;
        Integer num5;
        Integer num6;
        if ((i10 & 4) != 0) {
            gPayPriceInfo2 = null;
        } else {
            gPayPriceInfo2 = gPayPriceInfo;
        }
        if ((i10 & 8) != 0) {
            str3 = null;
        } else {
            str3 = str2;
        }
        if ((i10 & 16) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 32) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        if ((i10 & 64) != 0) {
            bool2 = Boolean.FALSE;
        } else {
            bool2 = bool;
        }
        if ((i10 & 128) != 0) {
            num4 = null;
        } else {
            num4 = num;
        }
        if ((i10 & 256) != 0) {
            num5 = null;
        } else {
            num5 = num2;
        }
        if ((i10 & 512) != 0) {
            num6 = null;
        } else {
            num6 = num3;
        }
        eventManager.S0(str, subsSku, gPayPriceInfo2, str3, baseEpisode2, actResource2, bool2, num4, num5, num6);
    }

    public static /* synthetic */ void W0(EventManager eventManager, String str, String str2, BaseEpisode baseEpisode, ActResource actResource, String str3, String str4, int i10, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        String str5;
        String str6;
        if ((i10 & 2) != 0) {
            str2 = "other";
        }
        String str7 = str2;
        if ((i10 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 8) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        if ((i10 & 16) != 0) {
            str5 = null;
        } else {
            str5 = str3;
        }
        if ((i10 & 32) != 0) {
            str6 = null;
        } else {
            str6 = str4;
        }
        eventManager.V0(str, str7, baseEpisode2, actResource2, str5, str6);
    }

    public static /* synthetic */ void Y0(EventManager eventManager, String str, String str2, BaseEpisode baseEpisode, boolean z10, ActResource actResource, int i10, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        if ((i10 & 2) != 0) {
            str2 = "other";
        }
        String str3 = str2;
        if ((i10 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        boolean z11 = z10;
        if ((i10 & 16) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        eventManager.X0(str, str3, baseEpisode2, z11, actResource2);
    }

    public static /* synthetic */ void b1(EventManager eventManager, String str, CoinSku coinSku, BaseEpisode baseEpisode, ActResource actResource, boolean z10, String str2, int i10, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        String str3;
        if ((i10 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 8) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        if ((i10 & 32) != 0) {
            str3 = null;
        } else {
            str3 = str2;
        }
        eventManager.Z0(str, coinSku, baseEpisode2, actResource2, z10, str3);
    }

    public static /* synthetic */ void e0(EventManager eventManager, String str, String str2, BaseEpisode baseEpisode, String str3, String str4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        if ((i10 & 4) != 0) {
            baseEpisode = null;
        }
        if ((i10 & 8) != 0) {
            str3 = null;
        }
        if ((i10 & 16) != 0) {
            str4 = null;
        }
        eventManager.d0(str, str2, baseEpisode, str3, str4);
    }

    public static /* synthetic */ void e1(EventManager eventManager, String str, SubsSku subsSku, BaseEpisode baseEpisode, ActResource actResource, boolean z10, Integer num, String str2, int i10, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        Integer num2;
        String str3;
        if ((i10 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 8) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        if ((i10 & 32) != 0) {
            num2 = null;
        } else {
            num2 = num;
        }
        if ((i10 & 64) != 0) {
            str3 = null;
        } else {
            str3 = str2;
        }
        eventManager.d1(str, subsSku, baseEpisode2, actResource2, z10, num2, str3);
    }

    public static /* synthetic */ void h0(EventManager eventManager, int i10, CoinSku coinSku, BaseEpisode baseEpisode, ActResource actResource, Integer num, String str, String str2, String str3, int i11, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        Integer num2;
        String str4;
        String str5;
        String str6;
        if ((i11 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i11 & 8) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        if ((i11 & 16) != 0) {
            num2 = null;
        } else {
            num2 = num;
        }
        if ((i11 & 32) != 0) {
            str4 = null;
        } else {
            str4 = str;
        }
        if ((i11 & 64) != 0) {
            str5 = "other";
        } else {
            str5 = str2;
        }
        if ((i11 & 128) != 0) {
            str6 = null;
        } else {
            str6 = str3;
        }
        eventManager.f0(i10, coinSku, baseEpisode2, actResource2, num2, str4, str5, str6);
    }

    public static /* synthetic */ void i0(EventManager eventManager, int i10, SubsSku subsSku, BaseEpisode baseEpisode, ActResource actResource, int i11, Integer num, String str, String str2, String str3, int i12, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        int i13;
        Integer num2;
        String str4;
        String str5;
        String str6;
        if ((i12 & 4) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i12 & 8) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        if ((i12 & 16) != 0) {
            i13 = 2;
        } else {
            i13 = i11;
        }
        if ((i12 & 32) != 0) {
            num2 = null;
        } else {
            num2 = num;
        }
        if ((i12 & 64) != 0) {
            str4 = null;
        } else {
            str4 = str;
        }
        if ((i12 & 128) != 0) {
            str5 = "other";
        } else {
            str5 = str2;
        }
        if ((i12 & 256) != 0) {
            str6 = null;
        } else {
            str6 = str3;
        }
        eventManager.g0(i10, subsSku, baseEpisode2, actResource2, i13, num2, str4, str5, str6);
    }

    public static /* synthetic */ void i1(EventManager eventManager, String str, String str2, Integer num, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        if ((i11 & 4) != 0) {
            num = null;
        }
        eventManager.h1(str, str2, num, i10);
    }

    public static final ConcurrentHashMap j1() {
        return new ConcurrentHashMap();
    }

    public static /* synthetic */ void k0(EventManager eventManager, String str, String str2, BaseEpisode baseEpisode, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        if ((i10 & 4) != 0) {
            baseEpisode = null;
        }
        if ((i10 & 8) != 0) {
            str3 = null;
        }
        eventManager.j0(str, str2, baseEpisode, str3);
    }

    private final boolean p(String str) {
        if (Intrinsics.areEqual(str, "push_send")) {
            PushRepo.f44374a.E();
        }
        if (F().length() <= 0 || str.length() <= 0 || !StringsKt.b0(F(), str, false, 2, null)) {
            return false;
        }
        return true;
    }

    public static /* synthetic */ void s(EventManager eventManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        eventManager.r(z10);
    }

    public static /* synthetic */ void s0(EventManager eventManager, String str, Bundle bundle, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bundle = null;
        }
        if ((i10 & 4) != 0) {
            j10 = -1;
        }
        eventManager.q0(str, bundle, j10);
    }

    public static /* synthetic */ void t0(EventManager eventManager, String str, Bundle bundle, int[] iArr, long j10, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bundle = null;
        }
        Bundle bundle2 = bundle;
        if ((i10 & 8) != 0) {
            j10 = -1;
        }
        long j11 = j10;
        Function0 function02 = function0;
        if ((i10 & 16) != 0) {
            function02 = new Function0() { // from class: af.c
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Map u02;
                    u02 = EventManager.u0();
                    return u02;
                }
            };
        }
        eventManager.r0(str, bundle2, iArr, j11, function02);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Bundle u(EventManager eventManager, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function0 = new Function0() { // from class: af.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Map v10;
                    v10 = EventManager.v();
                    return v10;
                }
            };
        }
        return eventManager.t(function0);
    }

    public static final Map u0() {
        return RemoteConfigRepo.f43788a.p();
    }

    public static final Map v() {
        return RemoteConfigRepo.f43788a.p();
    }

    public static /* synthetic */ Bundle x(EventManager eventManager, ActResource actResource, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return eventManager.w(actResource, z10);
    }

    public final Bundle y() {
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(f42469g)) {
            bundle.putString(TextureRenderKeys.KEY_IS_ACTION, f42469g);
        }
        return bundle;
    }

    public final Bundle z() {
        Bundle bundle = new Bundle();
        bundle.putString("audience_group_ids", AccountRepo.f43052a.d0());
        return bundle;
    }

    @NotNull
    public final Bundle A(@Nullable DiscoverRanking discoverRanking) {
        int intValue;
        if (discoverRanking != null) {
            Bundle bundle = new Bundle();
            Integer id2 = discoverRanking.getId();
            if (id2 != null && (intValue = id2.intValue()) > 0) {
                bundle.putString("ranking_list_child_id", String.valueOf(intValue));
            }
            String name = discoverRanking.getName();
            if (name != null && name.length() != 0) {
                bundle.putString("ranking_list_child_name", discoverRanking.getName());
                return bundle;
            }
            return bundle;
        }
        return new Bundle();
    }

    public final void A0(@NotNull String scene, @Nullable SubsSku subsSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, int i10, @Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        int i11 = 0;
        Bundle a10 = b.a(b.a(b.a(L(subsSku), C(baseEpisode)), x(this, actResource, false, 2, null)), M(i10));
        a10.putString("scene", scene);
        if (str != null) {
            a10.putString("from", str);
        }
        a10.putString("style_id", ve.h.f68906a.m());
        if (num != null) {
            a10.putInt("payment_method", num.intValue());
        }
        if (num2 != null) {
            i11 = num2.intValue();
        }
        a10.putInt("password_free", i11);
        a10.putString(TextureRenderKeys.KEY_IS_ACTION, str2);
        if (str3 != null) {
            a10.putString("second_from", str3);
        }
        Unit unit = Unit.f60915a;
        s0(this, "order_click", a10, 0L, 4, null);
    }

    @NotNull
    public final Bundle B(@Nullable DiscoverTab discoverTab) {
        int intValue;
        if (discoverTab != null) {
            Bundle bundle = new Bundle();
            Integer tabId = discoverTab.getTabId();
            if (tabId != null && (intValue = tabId.intValue()) > 0) {
                bundle.putString("tab_id", String.valueOf(intValue));
            }
            String tabDisplayName = discoverTab.getTabDisplayName();
            if (tabDisplayName != null && tabDisplayName.length() != 0) {
                String tabDisplayName2 = discoverTab.getTabDisplayName();
                if (tabDisplayName2 == null) {
                    tabDisplayName2 = "";
                }
                bundle.putString("tab_name", tabDisplayName2);
                return bundle;
            }
            return bundle;
        }
        return new Bundle();
    }

    @NotNull
    public final Bundle C(@Nullable BaseEpisode baseEpisode) {
        if (baseEpisode != null) {
            if (!f42476n && baseEpisode.isTrailer() && baseEpisode.getId() > 10000) {
                f42476n = true;
                Bundle bundle = new Bundle();
                bundle.putString("reel_id", baseEpisode.getShortPlayCode());
                bundle.putInt("episode", baseEpisode.getEpisodeNum());
                bundle.putInt("episode_id", baseEpisode.getId());
                Unit unit = Unit.f60915a;
                s0(this, "video_type_error", bundle, 0L, 4, null);
                Logger.m(Logger.f41511a, null, 1, null);
            }
            Bundle bundle2 = new Bundle();
            if (baseEpisode.isTrailer()) {
                bundle2.putString("type", "trailer");
                bundle2.putString("reel_id", String.valueOf(baseEpisode.getShortPlayId()));
            } else {
                bundle2.putString("type", "positive");
                bundle2.putString("reel_id", baseEpisode.getShortPlayCode());
            }
            if (!TextUtils.isEmpty(baseEpisode.getUpack())) {
                bundle2.putString("upack", baseEpisode.getUpack());
            }
            bundle2.putInt("episode_id", baseEpisode.getId());
            bundle2.putString("episode", String.valueOf(baseEpisode.getEpisodeNum()));
            bundle2.putString("customShortsName", baseEpisode.getShortPlayName());
            if (baseEpisode.getLockBegin() > 0) {
                bundle2.putInt("lock_begin", baseEpisode.getLockBegin());
            }
            bundle2.putBoolean("encrypted", baseEpisode.getNeedDecrypt());
            bundle2.putLong("episode_time", baseEpisode.getVideoDuration());
            return bundle2;
        }
        return new Bundle();
    }

    @NotNull
    public final Bundle D(@NotNull ResponseException throwable) {
        String valueOf;
        String message;
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        Bundle bundle = new Bundle();
        ApiErrorExtra errorExtra = throwable.getErrorExtra();
        if (errorExtra == null || (valueOf = Integer.valueOf(errorExtra.getRealCode()).toString()) == null) {
            valueOf = String.valueOf(throwable.getCode());
        }
        bundle.putString("err_code", valueOf);
        ApiErrorExtra errorExtra2 = throwable.getErrorExtra();
        if (errorExtra2 == null || (message = errorExtra2.getRealMessage()) == null) {
            message = throwable.getMessage();
        }
        bundle.putString("err_msg", message);
        return bundle;
    }

    public final void D0(@NotNull String scene, @Nullable CoinSku coinSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, @Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        f42468f = UUID.randomUUID().toString();
        int i10 = 0;
        Bundle a10 = b.a(b.a(K(coinSku), C(baseEpisode)), x(this, actResource, false, 2, null));
        a10.putString("scene", scene);
        if (coinSku instanceof BatchUnlockEpisodeSku) {
            a10.putInt("unlock_in_batch", ((BatchUnlockEpisodeSku) coinSku).getUnlockingEpisodes());
        }
        if (str != null) {
            a10.putString("second_from", str);
        }
        a10.putString("style_id", ve.h.f68906a.m());
        if (num != null) {
            a10.putInt("payment_method", num.intValue());
        }
        if (num2 != null) {
            i10 = num2.intValue();
        }
        a10.putInt("password_free", i10);
        a10.putString(TextureRenderKeys.KEY_IS_ACTION, str3);
        if (str4 != null) {
            a10.putString("adpurchase_scene", str4);
        }
        if (str2 != null) {
            a10.putString("from", str2);
        }
        Unit unit = Unit.f60915a;
        s0(this, "order_create", a10, 0L, 4, null);
    }

    @NotNull
    public final EventAdjustTime E() {
        return f42467e;
    }

    public final void E0(@NotNull String scene, @Nullable SubsSku subsSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, int i10, @Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        f42468f = UUID.randomUUID().toString();
        int i11 = 0;
        Bundle a10 = b.a(b.a(b.a(L(subsSku), C(baseEpisode)), x(this, actResource, false, 2, null)), M(i10));
        if (baseEpisode != null) {
            a10.putString("customShortsName", baseEpisode.getShortPlayName());
        }
        a10.putString("scene", scene);
        if (str != null) {
            a10.putString("second_from", str);
        }
        a10.putString("style_id", ve.h.f68906a.m());
        if (num != null) {
            a10.putInt("payment_method", num.intValue());
        }
        if (num2 != null) {
            i11 = num2.intValue();
        }
        a10.putInt("password_free", i11);
        a10.putString(TextureRenderKeys.KEY_IS_ACTION, str3);
        if (str4 != null) {
            a10.putString("adpurchase_scene", str4);
        }
        if (str2 != null) {
            a10.putString("from", str2);
        }
        Unit unit = Unit.f60915a;
        s0(this, "order_create", a10, 0L, 4, null);
    }

    @NotNull
    public final Bundle H(@Nullable ModuleInfo moduleInfo) {
        DiscoverTab discoverTab;
        int i10;
        DiscoverRanking discoverRanking = null;
        if (moduleInfo != null) {
            discoverTab = moduleInfo.getTab();
        } else {
            discoverTab = null;
        }
        Bundle B = B(discoverTab);
        if (moduleInfo != null) {
            discoverRanking = moduleInfo.getRanking();
        }
        Bundle a10 = b.a(B, A(discoverRanking));
        if (moduleInfo != null) {
            String moduleId = moduleInfo.getModuleId();
            if (moduleId != null && moduleId.length() != 0) {
                a10.putString("module_id", moduleInfo.getModuleId());
            }
            if (moduleInfo.getModuleType().length() > 0) {
                a10.putString("module_type", moduleInfo.getModuleType());
            }
            if (moduleInfo.getModuleName().length() > 0) {
                a10.putString("module_name", moduleInfo.getModuleName());
            }
            if (moduleInfo.getPositionId() > 0) {
                a10.putInt("position_id", moduleInfo.getPositionId());
            }
            if (moduleInfo.getRecommendId() != null && moduleInfo.getRecommendId().intValue() > 0) {
                a10.putInt(CallAppDataKey.KEY_AUDIENCE_RECOMMEND_ID, moduleInfo.getRecommendId().intValue());
            }
            DiscoverTab tab = moduleInfo.getTab();
            if (tab != null) {
                Integer tabId = tab.getTabId();
                if (tabId != null) {
                    i10 = tabId.intValue();
                } else {
                    i10 = 0;
                }
                a10.putInt("tab_id", i10);
            }
        }
        return a10;
    }

    public final void H0(@NotNull String scene, @Nullable CoinSku coinSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, @NotNull String errType, @NotNull String errMsg) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(errType, "errType");
        Intrinsics.checkNotNullParameter(errMsg, "errMsg");
        Bundle a10 = b.a(b.a(K(coinSku), C(baseEpisode)), x(this, actResource, false, 2, null));
        a10.putString("scene", scene);
        a10.putString("platform", qf.e.f65327a.b());
        a10.putString("sort", "inapp");
        a10.putString("type", errType);
        a10.putString("err_msg", errMsg);
        Unit unit = Unit.f60915a;
        s0(this, "order_create_fail", a10, 0L, 4, null);
    }

    public final void I0(@NotNull String scene, @Nullable SubsSku subsSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, int i10, @NotNull String errType, @NotNull String errMsg) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(errType, "errType");
        Intrinsics.checkNotNullParameter(errMsg, "errMsg");
        Bundle a10 = b.a(b.a(b.a(L(subsSku), C(baseEpisode)), x(this, actResource, false, 2, null)), M(i10));
        a10.putString("scene", scene);
        a10.putString("platform", qf.e.f65327a.b());
        a10.putString("sort", "subscription");
        a10.putString("type", errType);
        a10.putString("err_msg", errMsg);
        Unit unit = Unit.f60915a;
        s0(this, "order_create_fail", a10, 0L, 4, null);
    }

    public final void J0(@NotNull String scene, @NotNull String sort, int i10, @NotNull String errType, @NotNull String errMsg, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(sort, "sort");
        Intrinsics.checkNotNullParameter(errType, "errType");
        Intrinsics.checkNotNullParameter(errMsg, "errMsg");
        Bundle bundle2 = new Bundle();
        bundle2.putString("scene", scene);
        qf.e eVar = qf.e.f65327a;
        bundle2.putString("platform", eVar.b());
        bundle2.putString("sort", sort);
        bundle2.putInt("payment_method", eVar.a());
        bundle2.putString("type", errType);
        bundle2.putString("err_msg", errMsg);
        if (bundle != null) {
            b.a(bundle2, bundle);
        }
        if (Intrinsics.areEqual(sort, "subscription")) {
            b.a(bundle2, f42463a.M(i10));
        }
        Unit unit = Unit.f60915a;
        s0(this, "order_create_fail", bundle2, 0L, 4, null);
    }

    @NotNull
    public final Bundle K(@Nullable CoinSku coinSku) {
        int a10;
        Integer productGiveCoins;
        Integer payType;
        if (coinSku != null) {
            Bundle bundle = new Bundle();
            bundle.putString(AppLovinEventParameters.PRODUCT_IDENTIFIER, coinSku.getGpSkuId());
            if (coinSku.getSkuType() == 8) {
                bundle.putFloat("amount", coinSku.getActivityPrice());
            } else {
                bundle.putFloat("amount", coinSku.getRecharge());
            }
            bundle.putString("product_id", coinSku.getSkuProductId());
            String activityName = coinSku.getActivityName();
            if (activityName != null && activityName.length() != 0) {
                bundle.putString("template_id", coinSku.getActivitySkuConfigId());
            } else {
                bundle.putString("template_id", coinSku.getSkuModelConfigId());
            }
            String activityId = coinSku.getActivityId();
            if (activityId != null && activityId.length() != 0) {
                bundle.putString("activity_id", coinSku.getActivityId());
            }
            String activityName2 = coinSku.getActivityName();
            if (activityName2 != null && activityName2.length() != 0) {
                bundle.putString("activity_name", coinSku.getActivityName());
            }
            if (!TextUtils.isEmpty(coinSku.getSkuModelId())) {
                bundle.putString("in_purchase_id", coinSku.getSkuModelId());
            }
            if (TextUtils.isEmpty(coinSku.getCampaignTemplateId())) {
                if (!TextUtils.isEmpty(coinSku.getSkuModelId())) {
                    bundle.putString("inapp_template_id", coinSku.getSkuModelId());
                }
            } else {
                bundle.putString("campaign_template_id", coinSku.getCampaignTemplateId());
            }
            SkuPaymentMethod payment = coinSku.getPayment();
            if (payment != null && (payType = payment.getPayType()) != null) {
                a10 = payType.intValue();
            } else {
                a10 = qf.e.f65327a.a();
            }
            bundle.putInt("payment_method", a10);
            bundle.putString("platform", qf.e.f65327a.b());
            bundle.putString("sort", "inapp");
            bundle.putString("coins", String.valueOf(coinSku.getCoins()));
            String str = null;
            if (coinSku.getSkuType() != 7 ? (productGiveCoins = coinSku.getProductGiveCoins()) != null : (productGiveCoins = coinSku.getKeepGiveCoins()) != null) {
                str = productGiveCoins.toString();
            }
            bundle.putString("tickets", str);
            return bundle;
        }
        return new Bundle();
    }

    @NotNull
    public final Bundle L(@Nullable SubsSku subsSku) {
        int a10;
        String str;
        Integer payType;
        if (subsSku != null) {
            Bundle bundle = new Bundle();
            bundle.putString(AppLovinEventParameters.PRODUCT_IDENTIFIER, subsSku.getSkuId());
            if (subsSku.enableDiscount()) {
                bundle.putFloat("amount", subsSku.getFirstAmount());
            } else {
                bundle.putFloat("amount", subsSku.getPayAmount());
            }
            String activityId = subsSku.getActivityId();
            if (activityId != null && activityId.length() != 0) {
                bundle.putString("activity_id", subsSku.getActivityId());
            }
            String activityName = subsSku.getActivityName();
            if (activityName != null && activityName.length() != 0) {
                bundle.putString("activity_name", subsSku.getActivityName());
            }
            if (subsSku.getSubscriptionId() > 0) {
                bundle.putString("subscribe_product_list_id", String.valueOf(subsSku.getSubscriptionId()));
            }
            bundle.putString("product_id", subsSku.getProductId());
            SkuPaymentMethod payment = subsSku.getPayment();
            if (payment != null && (payType = payment.getPayType()) != null) {
                a10 = payType.intValue();
            } else {
                a10 = qf.e.f65327a.a();
            }
            bundle.putInt("payment_method", a10);
            if (TextUtils.isEmpty(subsSku.getCampaignTemplateId())) {
                if (!TextUtils.isEmpty(subsSku.getSubTemplateId())) {
                    bundle.putString("sub_template_id", subsSku.getSubTemplateId());
                }
            } else {
                bundle.putString("campaign_template_id", subsSku.getCampaignTemplateId());
            }
            bundle.putString("platform", qf.e.f65327a.b());
            bundle.putString("sort", "subscription");
            bundle.putString("coins", String.valueOf(subsSku.getCoins()));
            Integer bonus = subsSku.getBonus();
            if (bonus != null) {
                str = bonus.toString();
            } else {
                str = null;
            }
            bundle.putString("tickets", str);
            return bundle;
        }
        return new Bundle();
    }

    @NotNull
    public final Bundle M(int i10) {
        Bundle bundle = new Bundle();
        if (i10 != 0) {
            if (i10 != 1) {
                bundle.putString("replacement_method", DevicePublicKeyStringDef.NONE);
            } else {
                bundle.putString("replacement_method", "upgrade");
            }
        } else {
            bundle.putString("replacement_method", GearStrategyConsts.EV_DOWNGRADE_TYPE);
        }
        return bundle;
    }

    public final void M0(@NotNull String scene, @Nullable CoinSku coinSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Bundle a10 = b.a(b.a(K(coinSku), C(baseEpisode)), x(this, actResource, false, 2, null));
        a10.putString("scene", scene);
        a10.putString(TextureRenderKeys.KEY_IS_ACTION, str);
        if (coinSku instanceof BatchUnlockEpisodeSku) {
            a10.putInt("unlock_in_batch", ((BatchUnlockEpisodeSku) coinSku).getUnlockingEpisodes());
        }
        a10.putString("style_id", ve.h.f68906a.m());
        if (str2 != null) {
            a10.putString("from", str2);
        }
        if (str3 != null) {
            a10.putString("second_from", str3);
        }
        Unit unit = Unit.f60915a;
        s0(this, "order_show", a10, 0L, 4, null);
    }

    public final void N0(@NotNull String scene, @Nullable SubsSku subsSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Bundle a10 = b.a(b.a(L(subsSku), C(baseEpisode)), x(this, actResource, false, 2, null));
        a10.putString("scene", scene);
        a10.putString(TextureRenderKeys.KEY_IS_ACTION, str);
        a10.putString("style_id", ve.h.f68906a.m());
        if (str2 != null) {
            a10.putString("from", str2);
        }
        if (str3 != null) {
            a10.putString("second_from", str3);
        }
        Unit unit = Unit.f60915a;
        s0(this, "order_show", a10, 0L, 4, null);
    }

    public final void O(@NotNull String from, @NotNull String action) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(action, "action");
        Bundle bundle = new Bundle();
        bundle.putString("from", from);
        bundle.putString(TextureRenderKeys.KEY_IS_ACTION, action);
        Unit unit = Unit.f60915a;
        s0(this, "account_recovery_click", bundle, 0L, 4, null);
    }

    public final void P(@NotNull String from) {
        Intrinsics.checkNotNullParameter(from, "from");
        Bundle bundle = new Bundle();
        bundle.putString("from", from);
        Unit unit = Unit.f60915a;
        s0(this, "account_recovery_close", bundle, 0L, 4, null);
    }

    public final void Q(@NotNull String from) {
        Intrinsics.checkNotNullParameter(from, "from");
        Bundle bundle = new Bundle();
        bundle.putString("from", from);
        Unit unit = Unit.f60915a;
        s0(this, "account_recovery_show", bundle, 0L, 4, null);
    }

    public final void Q0() {
        s0(this, "setting_page_show", null, 0L, 6, null);
    }

    public final void R(@NotNull String button_name) {
        Intrinsics.checkNotNullParameter(button_name, "button_name");
        Bundle bundle = new Bundle();
        bundle.putString("button_name", button_name);
        Unit unit = Unit.f60915a;
        s0(this, "account_switch_click", bundle, 0L, 4, null);
    }

    public final void R0(@NotNull String scene, @Nullable CoinSku coinSku, @Nullable GPayPriceInfo gPayPriceInfo, @Nullable String str, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2) {
        float f10;
        Intrinsics.checkNotNullParameter(scene, "scene");
        int i10 = 0;
        Bundle a10 = b.a(b.a(b.a(K(coinSku), I(coinSku)), x(this, actResource, false, 2, null)), C(baseEpisode));
        a10.putString("scene", scene);
        if (gPayPriceInfo != null) {
            a10.putString(AppsFlyerProperties.CURRENCY_CODE, gPayPriceInfo.getGpCurrencyCode());
            Float s10 = StringsKt.s(gPayPriceInfo.getGpPrice());
            if (s10 != null) {
                f10 = s10.floatValue();
            } else {
                f10 = 0.0f;
            }
            a10.putFloat("price", f10);
        }
        a10.putString("order_no", str);
        if (coinSku instanceof BatchUnlockEpisodeSku) {
            a10.putInt("unlock_in_batch", ((BatchUnlockEpisodeSku) coinSku).getUnlockingEpisodes());
        }
        a10.putString("gp_delay_callback", String.valueOf(bool));
        if (baseEpisode != null) {
            a10.putString("customShortsName", baseEpisode.getShortPlayName());
        }
        Account a02 = AccountRepo.f43052a.a0();
        if (a02 != null && a02.isUnlockTypeIaspUser()) {
            a10.putString("Put_on_type", "IASP");
        }
        a10.putString("style_id", ve.h.f68906a.m());
        if (num != null) {
            a10.putInt("payment_method", num.intValue());
        }
        if (num2 != null) {
            i10 = num2.intValue();
        }
        a10.putInt("password_free", i10);
        Unit unit = Unit.f60915a;
        s0(this, "pay_success", a10, 0L, 4, null);
    }

    public final void S(@NotNull String scene, @NotNull ActResource resource) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(resource, "resource");
        Bundle x10 = x(this, resource, false, 2, null);
        x10.putString("scene", scene);
        Unit unit = Unit.f60915a;
        s0(this, "bf_act_entry_click_all", x10, 0L, 4, null);
    }

    public final void S0(@NotNull String scene, @Nullable SubsSku subsSku, @Nullable GPayPriceInfo gPayPriceInfo, @Nullable String str, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        float f10;
        Intrinsics.checkNotNullParameter(scene, "scene");
        int i10 = 0;
        int i11 = 2;
        Bundle a10 = b.a(b.a(L(subsSku), J(subsSku)), x(this, actResource, false, 2, null));
        if (num != null) {
            i11 = num.intValue();
        }
        Bundle a11 = b.a(b.a(a10, M(i11)), C(baseEpisode));
        a11.putString("scene", scene);
        if (gPayPriceInfo != null) {
            a11.putString(AppsFlyerProperties.CURRENCY_CODE, gPayPriceInfo.getGpCurrencyCode());
            Float s10 = StringsKt.s(gPayPriceInfo.getGpPrice());
            if (s10 != null) {
                f10 = s10.floatValue();
            } else {
                f10 = 0.0f;
            }
            a11.putFloat("price", f10);
        }
        a11.putString("order_no", str);
        a11.putString("gp_delay_callback", String.valueOf(bool));
        if (baseEpisode != null) {
            a11.putString("customShortsName", baseEpisode.getShortPlayName());
        }
        Account a02 = AccountRepo.f43052a.a0();
        if (a02 != null && a02.isUnlockTypeIaspUser()) {
            a11.putString("Put_on_type", "IASP");
        }
        if (num2 != null) {
            a11.putInt("payment_method", num2.intValue());
        }
        if (num3 != null) {
            i10 = num3.intValue();
        }
        a11.putInt("password_free", i10);
        Unit unit = Unit.f60915a;
        s0(this, "pay_success", a11, 0L, 4, null);
    }

    public final void T(@NotNull String scene, @NotNull ActResource resource) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(resource, "resource");
        Bundle x10 = x(this, resource, false, 2, null);
        x10.putString("scene", scene);
        Unit unit = Unit.f60915a;
        s0(this, "bf_act_entry_show_all", x10, 0L, 4, null);
    }

    @NotNull
    public final r U() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "logActiveUser", false, new EventManager$logActiveUser$1(null), 2, null);
    }

    public final void V(@NotNull String popupName, @NotNull String from, @Nullable BaseEpisode baseEpisode, @Nullable String str, @NotNull String adPurchaseScene) {
        Intrinsics.checkNotNullParameter(popupName, "popupName");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(adPurchaseScene, "adPurchaseScene");
        EventManager eventManager = f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("from", from);
        C.putString("popup_name", popupName);
        C.putString("sku_id", str);
        C.putString("adpurchase_scene", adPurchaseScene);
        C.putString("popup_type", "modal");
        C.putString("click_target", "confirm_btn");
        Unit unit = Unit.f60915a;
        s0(eventManager, "popup_click", C, 0L, 4, null);
    }

    public final void V0(@NotNull String scene, @NotNull String action, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(action, "action");
        Bundle C = C(baseEpisode);
        f42469g = action;
        Bundle a10 = b.a(C, x(this, actResource, false, 2, null));
        a10.putString("scene", scene);
        a10.putString(TextureRenderKeys.KEY_IS_ACTION, action);
        a10.putString("style_id", ve.h.f68906a.m());
        if (str != null) {
            a10.putString("from", str);
        }
        if (str2 != null) {
            a10.putString("second_from", str2);
        }
        Unit unit = Unit.f60915a;
        s0(this, "recharge_show", a10, 0L, 4, null);
    }

    public final void W(@NotNull String popupName, @NotNull String from, @Nullable BaseEpisode baseEpisode, @Nullable String str, @NotNull String adPurchaseScene) {
        Intrinsics.checkNotNullParameter(popupName, "popupName");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(adPurchaseScene, "adPurchaseScene");
        EventManager eventManager = f42463a;
        Bundle C = C(baseEpisode);
        C.putString("from", from);
        C.putString("popup_name", popupName);
        C.putString("sku_id", str);
        C.putString("adpurchase_scene", adPurchaseScene);
        C.putString("popup_type", "modal");
        Unit unit = Unit.f60915a;
        s0(eventManager, "popup_close", C, 0L, 4, null);
    }

    public final void X(@NotNull String popupName, @NotNull String from, @Nullable BaseEpisode baseEpisode, @Nullable String str, @NotNull String adPurchaseScene) {
        Intrinsics.checkNotNullParameter(popupName, "popupName");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(adPurchaseScene, "adPurchaseScene");
        Bundle C = C(baseEpisode);
        C.putString("from", from);
        C.putString("popup_name", popupName);
        C.putString("sku_id", str);
        C.putString("adpurchase_scene", adPurchaseScene);
        C.putString("popup_type", "modal");
        Unit unit = Unit.f60915a;
        s0(this, "popup_show", C, 0L, 4, null);
    }

    public final void X0(@NotNull String scene, @Nullable String str, @Nullable BaseEpisode baseEpisode, boolean z10, @Nullable ActResource actResource) {
        String str2;
        Intrinsics.checkNotNullParameter(scene, "scene");
        Bundle C = C(baseEpisode);
        f42469g = str;
        if (z10) {
            str2 = "1";
        } else {
            str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        Bundle a10 = b.a(C, x(this, actResource, false, 2, null));
        a10.putString("scene", scene);
        a10.putString(TextureRenderKeys.KEY_IS_ACTION, str);
        a10.putString("is_third_payment", str2);
        a10.putString("style_id", ve.h.f68906a.m());
        Unit unit = Unit.f60915a;
        s0(this, "recharge_show_end", a10, 0L, 4, null);
    }

    @NotNull
    public final r Y() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "logAppActive", false, new EventManager$logAppActive$1(null), 2, null);
    }

    @NotNull
    public final r Z(@Nullable String str) {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "logAppActiveForeground", false, new EventManager$logAppActiveForeground$1(str, null), 2, null);
    }

    public final void Z0(@NotNull String scene, @Nullable CoinSku coinSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, boolean z10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Bundle a10 = b.a(b.a(K(coinSku), C(baseEpisode)), x(this, actResource, false, 2, null));
        a10.putString("scene", scene);
        if (coinSku instanceof BatchUnlockEpisodeSku) {
            a10.putInt("unlock_in_batch", ((BatchUnlockEpisodeSku) coinSku).getUnlockingEpisodes());
        }
        if (z10) {
            a10.putString("task", "task_center");
        } else {
            a10.putString("style_id", ve.h.f68906a.m());
        }
        if (str != null && str.length() != 0) {
            a10.putString("third_sku_id", str);
        }
        Unit unit = Unit.f60915a;
        s0(this, "rentention_dialog_close", a10, 0L, 4, null);
    }

    @NotNull
    public final r a0(@Nullable String str) {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "logAppActiveForegroundAgain", false, new EventManager$logAppActiveForegroundAgain$1(str, null), 2, null);
    }

    public final void a1(@NotNull String scene, @Nullable SubsSku subsSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, boolean z10) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Bundle a10 = b.a(b.a(L(subsSku), C(baseEpisode)), x(this, actResource, false, 2, null));
        a10.putString("scene", scene);
        if (z10) {
            a10.putString("task", "task_center");
        } else {
            a10.putString("style_id", ve.h.f68906a.m());
        }
        Unit unit = Unit.f60915a;
        s0(this, "rentention_dialog_close", a10, 0L, 4, null);
    }

    public final void b0(@NotNull String from, @NotNull String isFirstLaunch) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(isFirstLaunch, "isFirstLaunch");
        Bundle bundle = new Bundle();
        bundle.putString("from", from);
        bundle.putString("is_first", isFirstLaunch);
        Account a02 = AccountRepo.f43052a.a0();
        if (a02 != null && a02.getType() == 2) {
            bundle.putString("is_login", "1");
            Integer firebaseSource = a02.getFirebaseSource();
            if (firebaseSource != null && firebaseSource.intValue() == 10) {
                bundle.putString("type", "google");
            } else {
                Integer firebaseSource2 = a02.getFirebaseSource();
                if (firebaseSource2 != null && firebaseSource2.intValue() == 20) {
                    bundle.putString("type", "facebook");
                } else {
                    Integer tripartiteCode = a02.getTripartiteCode();
                    if (tripartiteCode != null && tripartiteCode.intValue() == 60) {
                        bundle.putString("type", HintConstants.AUTOFILL_HINT_PHONE);
                    }
                }
            }
        } else {
            bundle.putString("is_login", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
        Unit unit = Unit.f60915a;
        s0(this, "app_launch", bundle, 0L, 4, null);
    }

    public final void c0(@NotNull String from) {
        Intrinsics.checkNotNullParameter(from, "from");
        Account a02 = AccountRepo.f43052a.a0();
        if (a02 != null) {
            Bundle bundle = new Bundle();
            bundle.putString("from", from);
            bundle.putString(AdRevenueScheme.COUNTRY, DeviceUtil.f48146a.k());
            if (a02.getType() == 2) {
                bundle.putString("is_login", "1");
                Integer firebaseSource = a02.getFirebaseSource();
                if (firebaseSource != null && firebaseSource.intValue() == 10) {
                    bundle.putString("type", "google");
                } else {
                    Integer firebaseSource2 = a02.getFirebaseSource();
                    if (firebaseSource2 != null && firebaseSource2.intValue() == 20) {
                        bundle.putString("type", "facebook");
                    } else {
                        Integer tripartiteCode = a02.getTripartiteCode();
                        if (tripartiteCode != null && tripartiteCode.intValue() == 60) {
                            bundle.putString("type", HintConstants.AUTOFILL_HINT_PHONE);
                        }
                    }
                }
            } else {
                bundle.putString("is_login", MBridgeConstans.ENDCARD_URL_TYPE_PL);
            }
            bundle.putInt("red_click", ud.b.f68412a.B());
            Unit unit = Unit.f60915a;
            s0(this, "app_start", bundle, 0L, 4, null);
            return;
        }
        ConcurrentHashMap<Long, Pair<String, Bundle>> G = G();
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        Long valueOf = Long.valueOf(deviceUtil.K());
        Bundle bundle2 = new Bundle();
        bundle2.putString("from", from);
        bundle2.putString(AdRevenueScheme.COUNTRY, deviceUtil.k());
        bundle2.putString("is_login", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        bundle2.putInt("red_click", ud.b.f68412a.B());
        G.put(valueOf, new Pair<>("app_start", bundle2));
    }

    public final void c1(@NotNull String scene, @Nullable CoinSku coinSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, boolean z10) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Bundle a10 = b.a(b.a(K(coinSku), C(baseEpisode)), x(this, actResource, false, 2, null));
        a10.putString("scene", scene);
        if (coinSku instanceof BatchUnlockEpisodeSku) {
            a10.putInt("unlock_in_batch", ((BatchUnlockEpisodeSku) coinSku).getUnlockingEpisodes());
        }
        if (z10) {
            a10.putString("task", "task_center");
        } else {
            a10.putString("style_id", ve.h.f68906a.m());
        }
        Unit unit = Unit.f60915a;
        s0(this, "rentention_dialog_show", a10, 0L, 4, null);
    }

    public final void d0(@Nullable String str, @Nullable String str2, @Nullable BaseEpisode baseEpisode, @Nullable String str3, @Nullable String str4) {
        Bundle bundle = new Bundle();
        bundle.putString("page", str);
        bundle.putString("button_name", str2);
        if (baseEpisode != null) {
            if (baseEpisode.isTrailer()) {
                bundle.putString("reel_id", String.valueOf(baseEpisode.getShortPlayId()));
            } else {
                bundle.putString("reel_id", baseEpisode.getShortPlayCode());
            }
            bundle.putString("episode", String.valueOf(baseEpisode.getEpisodeNum()));
        }
        if (str3 != null) {
            bundle.putString("status", str3);
        }
        if (str4 != null) {
            bundle.putString("sku_id", str4);
        }
        Unit unit = Unit.f60915a;
        s0(this, "button_click", bundle, 0L, 4, null);
    }

    public final void d1(@NotNull String scene, @Nullable SubsSku subsSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, boolean z10, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Bundle a10 = b.a(b.a(L(subsSku), C(baseEpisode)), x(this, actResource, false, 2, null));
        a10.putString("scene", scene);
        if (z10) {
            a10.putString("task", "task_center");
        } else {
            a10.putString("style_id", ve.h.f68906a.m());
        }
        if (num != null) {
            a10.putInt("is_third_payment", num.intValue());
        }
        if (str != null && str.length() != 0) {
            a10.putString("third_sku_id", str);
        }
        Unit unit = Unit.f60915a;
        s0(this, "rentention_dialog_show", a10, 0L, 4, null);
    }

    public final void f0(int i10, @Nullable CoinSku coinSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, @Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        Bundle a10 = b.a(b.a(K(coinSku), C(baseEpisode)), x(this, actResource, false, 2, null));
        if (str != null) {
            a10.putString("from", str);
        }
        if (num != null) {
            a10.putInt("payment_method", num.intValue());
        }
        a10.putString("style_id", ve.h.f68906a.m());
        a10.putString(TextureRenderKeys.KEY_IS_ACTION, str2);
        a10.putInt("button_type", i10);
        if (str3 != null) {
            a10.putString("second_from", str3);
        }
        Unit unit = Unit.f60915a;
        s0(this, "buttonpay_click", a10, 0L, 4, null);
    }

    public final void f1(@NotNull String button_name) {
        Intrinsics.checkNotNullParameter(button_name, "button_name");
        Bundle bundle = new Bundle();
        bundle.putString("button_name", button_name);
        Unit unit = Unit.f60915a;
        s0(this, "setting_button_click", bundle, 0L, 4, null);
    }

    public final void g0(int i10, @Nullable SubsSku subsSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, int i11, @Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        Bundle a10 = b.a(b.a(b.a(L(subsSku), C(baseEpisode)), x(this, actResource, false, 2, null)), M(i11));
        if (str != null) {
            a10.putString("from", str);
        }
        if (num != null) {
            a10.putInt("payment_method", num.intValue());
        }
        a10.putString("style_id", ve.h.f68906a.m());
        a10.putString(TextureRenderKeys.KEY_IS_ACTION, str2);
        a10.putInt("button_type", i10);
        if (str3 != null) {
            a10.putString("second_from", str3);
        }
        Unit unit = Unit.f60915a;
        s0(this, "buttonpay_click", a10, 0L, 4, null);
    }

    public final void g1(@NotNull String scene, @NotNull SubsSku sku) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Bundle bundle = new Bundle();
        if (sku.enableDiscount()) {
            bundle.putFloat("amount", sku.getFirstAmount());
        } else {
            bundle.putFloat("amount", sku.getPayAmount());
        }
        bundle.putString("product_id", sku.getProductId());
        bundle.putString("scene", scene);
        Unit unit = Unit.f60915a;
        s0(this, "subscribe_thing_show", bundle, 0L, 4, null);
    }

    public final void h1(@Nullable String str, @NotNull String payResult, @Nullable Integer num, int i10) {
        int a10;
        Intrinsics.checkNotNullParameter(payResult, "payResult");
        Bundle bundle = new Bundle();
        bundle.putString("payment_result", payResult);
        if (num != null) {
            a10 = num.intValue();
        } else {
            a10 = qf.e.f65327a.a();
        }
        bundle.putInt("payment_method", a10);
        bundle.putInt("password_free", i10);
        bundle.putString("sku_id", str);
        Unit unit = Unit.f60915a;
        s0(this, "return_other_payment", bundle, 0L, 4, null);
    }

    public final void j0(@Nullable String str, @Nullable String str2, @Nullable BaseEpisode baseEpisode, @Nullable String str3) {
        Bundle bundle = new Bundle();
        bundle.putString("page", str);
        bundle.putString("button_name", str2);
        if (baseEpisode != null) {
            if (baseEpisode.isTrailer()) {
                bundle.putString("reel_id", String.valueOf(baseEpisode.getShortPlayId()));
            } else {
                bundle.putString("reel_id", baseEpisode.getShortPlayCode());
            }
            bundle.putString("episode", String.valueOf(baseEpisode.getEpisodeNum()));
        }
        if (str3 != null) {
            bundle.putString("sku_id", str3);
        }
        Unit unit = Unit.f60915a;
        s0(this, "button_show", bundle, 0L, 4, null);
    }

    @NotNull
    public final String k1(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return "";
                }
                return "3";
            }
            return "2";
        }
        return "1";
    }

    public final void l0(@Nullable String str, @NotNull ResponseException throwable) {
        String valueOf;
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        if (Intrinsics.areEqual(str, Constants.DEEPLINK)) {
            Bundle D = D(throwable);
            if (throwable.isNetworkError()) {
                D.putString("type", "net_error");
            } else {
                ApiErrorExtra errorExtra = throwable.getErrorExtra();
                if (errorExtra == null || (valueOf = Integer.valueOf(errorExtra.getRealCode()).toString()) == null) {
                    valueOf = String.valueOf(throwable.getCode());
                }
                D.putString("type", valueOf);
            }
            Unit unit = Unit.f60915a;
            s0(this, "drama_cannot_played", D, 0L, 4, null);
        }
    }

    public final void l1(long j10) {
        f42467e.setDiffTimeLong(j10);
        CdnRepo.f25579a.g(j10);
    }

    public final void m0(@NotNull ResponseException throwable, @NotNull String from) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        Intrinsics.checkNotNullParameter(from, "from");
        if (!throwable.isNetworkError()) {
            Bundle D = D(throwable);
            D.putString("from", from);
            Unit unit = Unit.f60915a;
            s0(this, "unable_connect_server", D, 0L, 4, null);
        }
    }

    public final void n0(@NotNull String from, @NotNull String popup_name, @NotNull String discount, @Nullable String str, @NotNull String sku_id, @NotNull String clickTarget) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(popup_name, "popup_name");
        Intrinsics.checkNotNullParameter(discount, "discount");
        Intrinsics.checkNotNullParameter(sku_id, "sku_id");
        Intrinsics.checkNotNullParameter(clickTarget, "clickTarget");
        Bundle bundle = new Bundle();
        bundle.putString("from", from);
        bundle.putString("popup_name", popup_name);
        bundle.putString("discount", discount);
        bundle.putString("reel_id", str);
        bundle.putString("sku_id", sku_id);
        bundle.putString("popup_type", "modal");
        bundle.putString("click_target", clickTarget);
        Unit unit = Unit.f60915a;
        s0(this, "popup_click", bundle, 0L, 4, null);
    }

    public final void o() {
        synchronized (f42466d) {
            try {
                Logger logger = Logger.f41511a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("find pending AppStartEvent size -> ");
                EventManager eventManager = f42463a;
                sb2.append(eventManager.G().size());
                logger.h("EventManager", sb2.toString());
                for (Map.Entry<Long, Pair<String, Bundle>> entry : eventManager.G().entrySet()) {
                    f42463a.q0(entry.getValue().e(), entry.getValue().f(), entry.getKey().longValue());
                }
                f42463a.G().clear();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void o0(@NotNull String from, @NotNull String popup_name, @NotNull String discount, @Nullable String str, @NotNull String sku_id) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(popup_name, "popup_name");
        Intrinsics.checkNotNullParameter(discount, "discount");
        Intrinsics.checkNotNullParameter(sku_id, "sku_id");
        Bundle bundle = new Bundle();
        bundle.putString("from", from);
        bundle.putString("popup_name", popup_name);
        bundle.putString("discount", discount);
        bundle.putString("reel_id", str);
        bundle.putString("sku_id", sku_id);
        bundle.putString("popup_type", "modal");
        Unit unit = Unit.f60915a;
        s0(this, "popup_close", bundle, 0L, 4, null);
    }

    public final void p0(@NotNull String from, @NotNull String popup_name, @NotNull String discount, @Nullable String str, @NotNull String sku_id) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(popup_name, "popup_name");
        Intrinsics.checkNotNullParameter(discount, "discount");
        Intrinsics.checkNotNullParameter(sku_id, "sku_id");
        Bundle bundle = new Bundle();
        bundle.putString("from", from);
        bundle.putString("popup_name", popup_name);
        bundle.putString("discount", discount);
        bundle.putString("reel_id", str);
        bundle.putString("sku_id", sku_id);
        bundle.putString("popup_type", "modal");
        Unit unit = Unit.f60915a;
        s0(this, "popup_show", bundle, 0L, 4, null);
    }

    public final void q(int i10, @Nullable Function1<? super Integer, Unit> function1, @Nullable Function0<Unit> function0) {
        for (h hVar : f42464b) {
            hVar.e(i10, function1, function0);
        }
    }

    public final void q0(@NotNull String eventName, @Nullable Bundle bundle, long j10) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        t0(this, eventName, bundle, new int[]{2, 1}, j10, null, 16, null);
    }

    public final void r(boolean z10) {
        for (h hVar : f42464b) {
            hVar.b(z10);
        }
    }

    public final void r0(@NotNull String eventName, @Nullable Bundle bundle, @NotNull int[] loggerTypes, long j10, @NotNull Function0<? extends Map<String, RemoteConfigValue>> getRemoteConfigs) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(loggerTypes, "loggerTypes");
        Intrinsics.checkNotNullParameter(getRemoteConfigs, "getRemoteConfigs");
        if (loggerTypes.length == 0) {
            Logger.f41511a.e("EventManager", "logEvent failed -> loggerTypes is empty");
        } else if (p(eventName)) {
            Logger logger = Logger.f41511a;
            logger.h("EventManager", "logEvent eventName:" + eventName + " in blacklist:" + F() + ", not report}");
        } else {
            CoroutineUtil.f48072a.j("logEvent", true, new EventManager$logEvent$2(bundle, eventName, getRemoteConfigs, loggerTypes, j10, null));
        }
    }

    @Nullable
    public final Bundle t(@NotNull Function0<? extends Map<String, RemoteConfigValue>> getRemoteConfigs) {
        String aBTestIds;
        Intrinsics.checkNotNullParameter(getRemoteConfigs, "getRemoteConfigs");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry<String, RemoteConfigValue> entry : getRemoteConfigs.invoke().entrySet()) {
            String key = entry.getKey();
            RemoteConfigValue value = entry.getValue();
            if (value.getValue().length() != 0 && StringsKt.V(key, "and_", false, 2, null) && StringsKt.b0(key, "_test", false, 2, null)) {
                String P = StringsKt.P(key, "and_", "", false, 4, null);
                if (!arrayList.contains(P)) {
                    Boolean bool = f42475m.get(P);
                    if (bool == null) {
                        bool = Boolean.TRUE;
                        try {
                            new JSONObject(value.getValue());
                            Logger logger = Logger.f41511a;
                            logger.h("EventManager", "key(" + P + ") value(" + value.getValue() + ") is JsonValue");
                        } catch (Exception unused) {
                            bool = Boolean.FALSE;
                            Logger logger2 = Logger.f41511a;
                            logger2.e("EventManager", "key(" + P + ") value(" + value.getValue() + ") not JsonValue");
                        }
                        f42475m.put(P, bool);
                    }
                    if (bool.booleanValue()) {
                        try {
                            String optString = new JSONObject(value.getValue()).optString("test_code");
                            if (optString != null && optString.length() != 0) {
                                arrayList.add(P);
                                arrayList2.add(optString);
                            }
                        } catch (Exception unused2) {
                        }
                    } else {
                        arrayList.add(P);
                        arrayList2.add(value.getValue());
                    }
                }
            }
        }
        if (arrayList.isEmpty() || arrayList2.isEmpty()) {
            return null;
        }
        String A0 = CollectionsKt.A0(arrayList, ",", null, null, 0, null, null, 62, null);
        String A02 = CollectionsKt.A0(arrayList2, ",", null, null, 0, null, null, 62, null);
        Bundle bundle = new Bundle();
        bundle.putString("level_type", A0);
        bundle.putString(AppLovinEventTypes.USER_COMPLETED_LEVEL, A02);
        CMSConfigResult f02 = ud.b.f68412a.f0();
        if (f02 != null && (aBTestIds = f02.getABTestIds()) != null && aBTestIds.length() > 0) {
            bundle.putString("ab_test_id", aBTestIds);
        }
        return bundle;
    }

    public final void v0(@NotNull List<EventInfo> events) {
        Intrinsics.checkNotNullParameter(events, "events");
        w0(events, 2, 1);
    }

    @NotNull
    public final Bundle w(@Nullable ActResource actResource, boolean z10) {
        String str;
        String str2;
        if (actResource == null) {
            return new Bundle();
        }
        Bundle bundle = new Bundle();
        if (actResource.getRecommendId() > 0) {
            bundle.putInt(CallAppDataKey.KEY_AUDIENCE_RECOMMEND_ID, actResource.getRecommendId());
        }
        if (actResource.getId() != -1) {
            bundle.putInt(CallAppDataKey.KEY_RESOURCE_ID, actResource.getId());
        }
        if (!TextUtils.isEmpty(actResource.getUpack())) {
            bundle.putString("upack", actResource.getUpack());
        }
        if (actResource.getSkipTypeForEvent().length() > 0) {
            bundle.putString("skip_type", actResource.getSkipTypeForEvent());
        }
        if (actResource.isShorts() && z10) {
            bundle.putString("reel_id", actResource.getSkipValue());
        }
        if (!TextUtils.isEmpty(actResource.getResourceType())) {
            bundle.putString("resource_bit_name", actResource.getResourceType());
        }
        ActResourceExtraInfo extendInfo = actResource.getExtendInfo();
        String str3 = null;
        if (extendInfo != null) {
            str = extendInfo.getCampaignId();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            bundle.putString("activity_id", actResource.getExtendInfo().getCampaignId());
            bundle.putString("new_activity_id", actResource.getExtendInfo().getCampaignId());
        }
        ActResourceExtraInfo extendInfo2 = actResource.getExtendInfo();
        if (extendInfo2 != null) {
            str2 = extendInfo2.getCampaignName();
        } else {
            str2 = null;
        }
        if (str2 != null && str2.length() != 0) {
            bundle.putString("activity_name", actResource.getExtendInfo().getCampaignName());
            bundle.putString("new_activity_name", actResource.getExtendInfo().getCampaignName());
        }
        ActResourceExtraInfo extendInfo3 = actResource.getExtendInfo();
        if (extendInfo3 != null) {
            str3 = extendInfo3.getCampaignType();
        }
        if (str3 != null && str3.length() != 0) {
            bundle.putString("activity_type", actResource.getExtendInfo().getCampaignType());
        }
        String moduleId = actResource.getModuleId();
        if (moduleId != null && moduleId.length() != 0) {
            bundle.putString("module_id", actResource.getModuleId());
        }
        String moduleName = actResource.getModuleName();
        if (moduleName != null && moduleName.length() != 0) {
            bundle.putString("module_name", actResource.getModuleName());
        }
        if (actResource.getPosition() >= 0) {
            bundle.putInt("position_id", actResource.getPosition());
        }
        return bundle;
    }

    public final void w0(@NotNull List<EventInfo> events, @NotNull int... loggerTypes) {
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(loggerTypes, "loggerTypes");
        if (events.isEmpty()) {
            return;
        }
        CoroutineUtil.f48072a.j("logEvents", true, new EventManager$logEvents$1(loggerTypes, events, null));
    }

    public final void x0(@NotNull String taskName, int i10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        Bundle bundle = new Bundle();
        bundle.putString("from", str);
        bundle.putString("type", "newbie_task");
        bundle.putString("task_name", taskName);
        bundle.putInt("tickets", i10);
        Unit unit = Unit.f60915a;
        s0(this, "task_click", bundle, 0L, 4, null);
    }

    public final void y0(@NotNull String taskName, int i10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        EventManager eventManager = f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("from", str);
        bundle.putString("type", "newbie_task");
        bundle.putString("task_name", taskName);
        bundle.putInt("tickets", i10);
        Unit unit = Unit.f60915a;
        s0(eventManager, "task_finish", bundle, 0L, 4, null);
    }

    public final void z0(@NotNull String scene, @Nullable CoinSku coinSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, @Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        int i10 = 0;
        Bundle a10 = b.a(b.a(K(coinSku), C(baseEpisode)), x(this, actResource, false, 2, null));
        a10.putString("scene", scene);
        if (coinSku instanceof BatchUnlockEpisodeSku) {
            a10.putInt("unlock_in_batch", ((BatchUnlockEpisodeSku) coinSku).getUnlockingEpisodes());
        }
        a10.putString("style_id", ve.h.f68906a.m());
        if (str != null) {
            a10.putString("from", str);
        }
        if (num != null) {
            a10.putInt("payment_method", num.intValue());
        }
        if (num2 != null) {
            i10 = num2.intValue();
        }
        a10.putInt("password_free", i10);
        a10.putString(TextureRenderKeys.KEY_IS_ACTION, str2);
        if (str3 != null) {
            a10.putString("second_from", str3);
        }
        Unit unit = Unit.f60915a;
        s0(this, "order_click", a10, 0L, 4, null);
    }
}
