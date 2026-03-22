package ud;

import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.account.ExtraUserInfo;
import com.startshorts.androidplayer.bean.act.ActResourceList;
import com.startshorts.androidplayer.bean.act.ActShowTimeInfo;
import com.startshorts.androidplayer.bean.act.ResourceIndex;
import com.startshorts.androidplayer.bean.ad.AdShowCount;
import com.startshorts.androidplayer.bean.campaign.AttributionSdkResponse;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import com.startshorts.androidplayer.bean.checkin.WatchAdNumber;
import com.startshorts.androidplayer.bean.configure.CMSConfigResult;
import com.startshorts.androidplayer.bean.configure.ServerConfig;
import com.startshorts.androidplayer.bean.discount.DiscountSubscribeInfo;
import com.startshorts.androidplayer.bean.dns.DomainIpInfo;
import com.startshorts.androidplayer.bean.immersion.ImmersionBackRecordListInfo;
import com.startshorts.androidplayer.bean.immersion.ImmersionVideoWatchRecord;
import com.startshorts.androidplayer.bean.purchase.AvailableExpansionSku;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult;
import com.startshorts.androidplayer.bean.push.CustomPush;
import com.startshorts.androidplayer.bean.search.AntiBrushingState;
import com.startshorts.androidplayer.bean.shorts.FloatingWindow;
import com.startshorts.androidplayer.bean.shorts.PlayContinue;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.unlock.QuerySingleUnlockEpisodeMethodsResult;
import com.startshorts.androidplayer.bean.unlock.QuerySubsFirstDiscountResult;
import com.startshorts.androidplayer.bean.unlock.QueryUnlockEpisodeProductListResult;
import com.startshorts.androidplayer.bean.unlock.TimeCount;
import com.startshorts.androidplayer.bean.update.UpdateData;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.TimeUtil;
import dd.c;
import dd.k;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import jk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
/* compiled from: PersistentCacheManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPersistentCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentCacheManager.kt\ncom/startshorts/androidplayer/cache/PersistentCacheManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2042:1\n1#2:2043\n*E\n"})
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f68412a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Object f68413b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static boolean f68414c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static PlayContinue f68415d;

    private b() {
    }

    public final boolean A(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("app_active_logged_" + date, false);
    }

    public final boolean A0() {
        return k.f50341a.getBoolean("first_rating2.18.0", true);
    }

    public final long A1() {
        k kVar = k.f50341a;
        return kVar.getLong("rfm_guide_dialog_last_show_time_" + AccountRepo.f43052a.t0(), 0L);
    }

    public final void A2(@Nullable Boolean bool) {
        k.f50341a.putString("af_result_ad_switch", String.valueOf(bool));
    }

    public final void A3(@Nullable DiscountSubscribeInfo discountSubscribeInfo) {
        k.f50341a.d("discount_subscribe_info", discountSubscribeInfo);
    }

    public final void A4(boolean z10) {
        k.f50341a.putBoolean("push_crashed", z10);
    }

    public final int B() {
        return k.f50341a.getInt("app_badge", 0);
    }

    @Nullable
    public final FloatingWindow B0() {
        return (FloatingWindow) k.f50341a.b("floating_window", FloatingWindow.class, null);
    }

    @Nullable
    public final ResourceIndex B1() {
        return (ResourceIndex) k.f50341a.b("search_banner_index", ResourceIndex.class, null);
    }

    public final void B2(boolean z10) {
        k.f50341a.putBoolean("af_result_ad_switch_queried", z10);
    }

    public final void B3(@NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("discount_subscribe_info_is_show" + date, z10);
    }

    public final void B4(@NotNull String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        k kVar = k.f50341a;
        kVar.putInt("push_showed_count_" + key, i10);
    }

    public final int C() {
        return k.f50341a.getInt("app_open_coldboot_count", 0);
    }

    public final boolean C0() {
        return k.f50341a.getBoolean("fresco_crashed", false);
    }

    @NotNull
    public final List<String> C1() {
        List<String> a10 = k.f50341a.a("search_history_keyword_list", String.class, null);
        if (a10 == null) {
            return CollectionsKt.n();
        }
        return a10;
    }

    public final void C2(boolean z10) {
        k.f50341a.putBoolean("aj_conversion_data_sent", z10);
    }

    public final void C3(@Nullable List<DomainIpInfo> list) {
        k.f50341a.e("domain_ip_info_list", list);
    }

    public final void C4(@Nullable QuerySubsFirstDiscountResult querySubsFirstDiscountResult) {
        k.f50341a.d("queryDiscountSubscribeSkuList", querySubsFirstDiscountResult);
    }

    @Nullable
    public final String D() {
        return k.f50341a.getString("app_language", "");
    }

    public final boolean D0(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("gdpr_showed_in_splash_" + date, false);
    }

    @Nullable
    public final ServerConfig D1() {
        return (ServerConfig) k.f50341a.b("server_config", ServerConfig.class, null);
    }

    public final void D2(boolean z10) {
        k.f50341a.putBoolean("aj_enable", z10);
    }

    public final void D3(@Nullable PlayContinue playContinue) {
        f68415d = playContinue;
    }

    public final void D4(boolean z10) {
        k.f50341a.putBoolean("query_sdk_config", z10);
    }

    public final boolean E() {
        return k.f50341a.getBoolean("app_launched", false);
    }

    @Nullable
    public final String E0() {
        return k.f50341a.getString("gaid", "");
    }

    public final int E1() {
        return k.f50341a.getInt("session_count", 0);
    }

    public final void E2(@Nullable Boolean bool) {
        k.f50341a.putString("aj_result_ad_switch", String.valueOf(bool));
    }

    public final void E3(int i10, int i11) {
        k kVar = k.f50341a;
        kVar.putInt("episode_play_position_" + AccountRepo.f43052a.t0() + '_' + i10, i11);
    }

    public final void E4(@Nullable QuerySingleUnlockEpisodeMethodsResult querySingleUnlockEpisodeMethodsResult) {
        k.f50341a.d("querySingleUnlockEpisodeMethods", querySingleUnlockEpisodeMethodsResult);
    }

    public final int F() {
        return k.f50341a.getInt("notification_permission_denial_count", 0);
    }

    public final boolean F0() {
        return k.f50341a.getBoolean("has_reported_app_open_day_2", false);
    }

    @NotNull
    public final String F1() {
        String string = k.f50341a.getString("for_you_page_info", "1_-1");
        if (string == null) {
            return "1_-1";
        }
        return string;
    }

    public final void F2(boolean z10) {
        k.f50341a.putBoolean("aj_result_ad_switch_queried", z10);
    }

    public final void F3(@Nullable String str, @Nullable SubsSku subsSku) {
        k kVar = k.f50341a;
        kVar.d("expansion_subs_sku_" + str, subsSku);
    }

    public final void F4(@Nullable QueryUnlockEpisodeProductListResult queryUnlockEpisodeProductListResult) {
        k.f50341a.d("queryUnlockEpisodeProductList", queryUnlockEpisodeProductListResult);
    }

    public final int G() {
        return k.f50341a.getInt("app_open_ad_show_count", 0);
    }

    public final boolean G0() {
        k kVar = k.f50341a;
        return kVar.getBoolean("has_reported_play_3_minutes_in_immersion_" + AccountRepo.f43052a.t0(), false);
    }

    public final boolean G1(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("show_home_check_in_dialog_" + date, true);
    }

    public final void G2(@NotNull AntiBrushingState value) {
        Intrinsics.checkNotNullParameter(value, "value");
        k.f50341a.d("anti_brushing_state", value);
    }

    public final void G3(@Nullable ExtraUserInfo extraUserInfo) {
        k kVar = k.f50341a;
        kVar.d("user_extra_info_" + AccountRepo.f43052a.t0(), extraUserInfo);
    }

    public final void G4(@NotNull String scene, int i10) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        k kVar = k.f50341a;
        kVar.putInt("rating_trigger_condition_count_" + scene, i10);
    }

    public final int H() {
        return k.f50341a.getInt("app_open_ad_show_time", 0);
    }

    public final int H0(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        return k.f50341a.getInt("key_retain_discount_dialog_show_count_" + date, 0);
    }

    public final boolean H1(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("show_home_login_guide_dialog_" + date, true);
    }

    public final void H2(int i10) {
        k.f50341a.putInt("api_url_index", i10);
    }

    public final void H3(@Nullable String str) {
        k kVar = k.f50341a;
        kVar.putString("fcm_token_" + AccountRepo.f43052a.t0(), str);
    }

    public final void H4(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        k.f50341a.putString("rc4_secret_key", value);
    }

    public final boolean I() {
        return k.f50341a.getBoolean("attribution_api_fail_af", false);
    }

    @Nullable
    public final ImmersionBackRecordListInfo I0() {
        k kVar = k.f50341a;
        return (ImmersionBackRecordListInfo) kVar.b("immersion_back_record" + AccountRepo.f43052a.t0(), ImmersionBackRecordListInfo.class, null);
    }

    public final boolean I1(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("show_login_guide_dialog_" + date, true);
    }

    public final void I2(@Nullable String str) {
        k.f50341a.putString("api_url_test", str);
    }

    public final void I3(boolean z10) {
        k.f50341a.putBoolean("firebase_configure_has_fetch_succeed", z10);
    }

    public final void I4(boolean z10) {
        k.f50341a.putBoolean("remote_config_await_firebase_enable", z10);
    }

    public final boolean J() {
        return k.f50341a.getBoolean("attribution_api_fail_aj", false);
    }

    @Nullable
    public final String J0() {
        return k.f50341a.getString("immersion_campaign_ad_match_id", "");
    }

    public final boolean J1(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("show_my_list_login_guide_dialog_" + date, true);
    }

    public final void J2(@NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("app_active_foreground_logged_" + date, z10);
    }

    public final void J3(boolean z10) {
        k.f50341a.putBoolean("first_init_firebase_configure", z10);
    }

    public final void J4(boolean z10) {
        k.f50341a.putBoolean("request_notification_permission_on_first_open", z10);
    }

    public final boolean K() {
        return k.f50341a.getBoolean("attribution_api_fail_fb", false);
    }

    @Nullable
    public final List<ImmersionVideoWatchRecord> K0() {
        return k.f50341a.a("immersion_video_watch_record_list", ImmersionVideoWatchRecord.class, null);
    }

    public final int K1(@NotNull String date, int i10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getInt("show_notification_permission_dialog_count_" + date, i10);
    }

    public final void K2(@NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("app_active_logged_" + date, z10);
    }

    public final void K3(long j10) {
        k.f50341a.putLong("first_install_time", j10);
    }

    public final void K4(@Nullable String str, @NotNull List<Integer> taskTypeList) {
        Intrinsics.checkNotNullParameter(taskTypeList, "taskTypeList");
        k kVar = k.f50341a;
        kVar.e("rewards_follow_tasks" + str, taskTypeList);
    }

    @Nullable
    public final List<AttributionSdkResponse> L() {
        List a10 = k.f50341a.a("attributionSdkResponse", AttributionSdkResponse.class, null);
        if (a10 == null) {
            return null;
        }
        return CollectionsKt.g1(a10);
    }

    public final boolean L0() {
        return k.f50341a.getBoolean("install_info_send", false);
    }

    public final boolean L1(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("show_profile_login_guide_dialog_" + date, true);
    }

    public final void L2(int i10) {
        k.f50341a.putInt("app_badge", i10);
    }

    public final void L3(boolean z10) {
        k.f50341a.putBoolean("first_open", z10);
    }

    public final void L4(boolean z10, @NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("rewards_fragment_show_" + date, z10);
    }

    public final boolean M() {
        return k.f50341a.getBoolean("attribution_api_fail_self", false);
    }

    public final long M0() {
        return k.f50341a.getLong("install_time", 0L);
    }

    public final boolean M1() {
        return k.f50341a.getBoolean("show_progress_adjust_tip", true);
    }

    public final void M2(int i10) {
        int i11;
        Integer valueOf = Integer.valueOf(i10);
        if (valueOf.intValue() > 1000000) {
            valueOf = null;
        }
        if (valueOf != null) {
            i11 = valueOf.intValue();
        } else {
            i11 = 1;
        }
        k.f50341a.putInt("app_open_coldboot_count", i11);
    }

    public final void M3(boolean z10) {
        k.f50341a.putBoolean("first_rating2.18.0", z10);
    }

    public final void M4(@NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("rewards_page_first_show_check_in_dialog" + date, z10);
    }

    @Nullable
    public final List<Long> N() {
        return k.f50341a.a("audience_group_ids", Long.TYPE, null);
    }

    public final int N0() {
        return k.f50341a.getInt("last_app_version", 0);
    }

    public final boolean N1() {
        return k.f50341a.getBoolean("show_reward_guide", true);
    }

    public final void N2(@Nullable String str) {
        k.f50341a.putString("app_language", str);
    }

    public final void N3(@Nullable FloatingWindow floatingWindow) {
        k.f50341a.d("floating_window", floatingWindow);
    }

    public final void N4(long j10) {
        k kVar = k.f50341a;
        kVar.putLong("rfm_guide_dialog_last_show_time_" + AccountRepo.f43052a.t0(), j10);
    }

    public final long O() {
        return k.f50341a.getLong("auth_email_otp_succeed_time", 0L);
    }

    public final long O0() {
        return k.f50341a.getLong("last_preload_app_open_time", 0L);
    }

    public final boolean O1() {
        return k.f50341a.getBoolean("show_swipe_to_watch_tip", true);
    }

    public final void O2(boolean z10) {
        k.f50341a.putBoolean("app_launched", z10);
    }

    public final void O3(boolean z10) {
        k.f50341a.putBoolean("fresco_crashed", z10);
    }

    public final void O4(@Nullable ResourceIndex resourceIndex) {
        k.f50341a.d("search_banner_index", resourceIndex);
    }

    public final long P() {
        return k.f50341a.getLong("auth_phone_otp_succeed_time", 0L);
    }

    public final long P0(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        k kVar = k.f50341a;
        return kVar.getLong("last_push_time_" + key, 0L);
    }

    @Nullable
    public final TimeCount P1() {
        return (TimeCount) k.f50341a.b("retain_show_time_count_sku", TimeCount.class, null);
    }

    public final void P2(int i10) {
        k.f50341a.putInt("notification_permission_denial_count", i10);
    }

    public final void P3(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("gdpr_showed_in_splash_" + date, true);
    }

    public final void P4(@NotNull List<String> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        k.f50341a.e("search_history_keyword_list", value);
    }

    @Nullable
    public final AvailableExpansionSku Q(@Nullable String str) {
        k kVar = k.f50341a;
        return (AvailableExpansionSku) kVar.b("available_expansion_sku_" + str, AvailableExpansionSku.class, null);
    }

    public final long Q0() {
        return k.f50341a.getLong("last_report_active_user_time", 0L);
    }

    public final boolean Q1(@NotNull String userId, @NotNull String date) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("subs_bonus_claimed_" + userId + '_' + date, false);
    }

    public final void Q2(int i10) {
        k.f50341a.putInt("app_open_ad_show_count", i10);
    }

    public final void Q3(@Nullable String str) {
        k.f50341a.putString("gaid", str);
    }

    public final void Q4(@Nullable ServerConfig serverConfig) {
        k.f50341a.d("server_config", serverConfig);
    }

    @Nullable
    public final String R() {
        return k.f50341a.getString(MBInterstitialActivity.INTENT_CAMAPIGN, "");
    }

    @NotNull
    public final String R0() {
        String string = k.f50341a.getString("last_report_permission_day", "");
        if (string == null) {
            return "";
        }
        return string;
    }

    public final boolean R1() {
        k kVar = k.f50341a;
        return kVar.getBoolean("subs_pro_expired_" + AccountRepo.f43052a.t0(), false);
    }

    public final void R2(int i10) {
        k.f50341a.putInt("app_open_ad_show_time", i10);
    }

    public final void R3(boolean z10) {
        k.f50341a.putBoolean("has_reported_app_open_day_2", z10);
    }

    public final void R4(int i10) {
        k.f50341a.putInt("session_count", i10);
    }

    public final boolean S() {
        k kVar = k.f50341a;
        return kVar.getBoolean("accumulativea_watch_showed" + AccountRepo.f43052a.t0(), false);
    }

    public final int S0() {
        k kVar = k.f50341a;
        return kVar.getInt("last_subs_pro_type_" + AccountRepo.f43052a.t0(), -1);
    }

    @Nullable
    public final TimeCount S1() {
        return (TimeCount) k.f50341a.b("retain_show_time_count_subs", TimeCount.class, null);
    }

    public final void S2(boolean z10) {
        k.f50341a.putBoolean("attribution_api_fail_af", z10);
    }

    public final void S3(boolean z10) {
        k kVar = k.f50341a;
        kVar.putBoolean("has_reported_play_3_minutes_in_immersion_" + AccountRepo.f43052a.t0(), z10);
    }

    public final void S4(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        k.f50341a.putString("for_you_page_info", value);
    }

    public final boolean T() {
        return k.f50341a.getBoolean("campaign_defined", false);
    }

    @NotNull
    public final String T0() {
        String string = k.f50341a.getString("vip_download_user_id", "");
        if (string == null) {
            return "";
        }
        return string;
    }

    @Nullable
    public final ResourceIndex T1() {
        return (ResourceIndex) k.f50341a.b("task_center_banner_index", ResourceIndex.class, null);
    }

    public final void T2(boolean z10) {
        k.f50341a.putBoolean("attribution_api_fail_aj", z10);
    }

    public final void T3(@NotNull String date, int i10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k.f50341a.putInt("key_retain_discount_dialog_show_count_" + date, i10);
    }

    public final void T4(@NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("show_home_check_in_dialog_" + date, z10);
    }

    @Nullable
    public final String U(@NotNull String campaign) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        k kVar = k.f50341a;
        return kVar.getString("campaign_info_" + campaign, "");
    }

    public final boolean U0(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("local_recommend_push_used_" + date, false);
    }

    public final boolean U1() {
        return k.f50341a.getBoolean("key_tblink_start_follow_task", false);
    }

    public final void U2(boolean z10) {
        k.f50341a.putBoolean("attribution_api_fail_fb", z10);
    }

    public final void U3(@Nullable ImmersionBackRecordListInfo immersionBackRecordListInfo) {
        k kVar = k.f50341a;
        kVar.d("immersion_back_record" + AccountRepo.f43052a.t0(), immersionBackRecordListInfo);
    }

    public final void U4(@NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("show_home_login_guide_dialog_" + date, z10);
    }

    public final boolean V(@NotNull String campaign) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        k kVar = k.f50341a;
        return kVar.getBoolean("campaign_info_handled_" + campaign, false);
    }

    public final boolean V0() {
        return k.f50341a.getBoolean("install_info_sent_v2", false);
    }

    @Nullable
    public final List<AdShowCount> V1() {
        return k.f50341a.a("ad_show_info_list", AdShowCount.class, null);
    }

    public final void V2(@Nullable List<AttributionSdkResponse> list) {
        k.f50341a.e("attributionSdkResponse", list);
    }

    public final void V3(@Nullable String str) {
        k.f50341a.putString("immersion_campaign_ad_match_id", str);
    }

    public final void V4(@NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("show_login_guide_dialog_" + date, z10);
    }

    public final int W() {
        return k.f50341a.getInt("campaign_info_parse_count", 0);
    }

    public final boolean W0() {
        return k.f50341a.getBoolean("lp_info_send_again", false);
    }

    public final boolean W1() {
        k kVar = k.f50341a;
        return kVar.getBoolean("today_report_receive_push_" + TimeUtil.f48175a.f(f.a(new Date())) + '_' + AccountRepo.f43052a.t0(), false);
    }

    public final void W2(boolean z10) {
        k.f50341a.putBoolean("attribution_api_fail_self", z10);
    }

    public final void W3(@Nullable List<ImmersionVideoWatchRecord> list) {
        k.f50341a.e("immersion_video_watch_record_list", list);
    }

    public final void W4(@NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("show_my_list_login_guide_dialog_" + date, z10);
    }

    public final boolean X() {
        return k.f50341a.getBoolean("install_info_handled", false);
    }

    public final int X0() {
        return k.f50341a.getInt("lp_info_send_again_rest_count", 1);
    }

    public final long X1() {
        k kVar = k.f50341a;
        return kVar.getLong("total_play_time_for_accumulated_task" + AccountRepo.f43052a.t0(), 0L);
    }

    public final void X2(@Nullable List<Long> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        k.f50341a.e("audience_group_ids", list);
    }

    public final void X3(boolean z10) {
        k.f50341a.putBoolean("install_info_send", z10);
    }

    public final void X4(@NotNull String date, int i10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putInt("show_notification_permission_dialog_count_" + date, i10);
    }

    public final boolean Y(@NotNull String campaign) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        k kVar = k.f50341a;
        return kVar.getBoolean("campaign_info_queried_" + campaign, false);
    }

    @Nullable
    public final Boolean Y0() {
        String string = k.f50341a.getString("lp_result_ad_switch", null);
        if (string == null || string.length() == 0) {
            return null;
        }
        return Boolean.valueOf(Boolean.parseBoolean(string));
    }

    public final long Y1() {
        k kVar = k.f50341a;
        return kVar.getLong("total_play_time_in_immersion" + AccountRepo.f43052a.t0(), 0L);
    }

    public final void Y2(long j10) {
        k.f50341a.putLong("auth_email_otp_succeed_time", j10);
    }

    public final void Y3(long j10) {
        k.f50341a.putLong("install_time", j10);
    }

    public final void Y4(@NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("show_profile_login_guide_dialog_" + date, z10);
    }

    public final boolean Z() {
        return k.f50341a.getBoolean("campaign_popular_shorts_showed", false);
    }

    public final boolean Z0() {
        return k.f50341a.getBoolean("lp_result_ad_switch_queried", false);
    }

    public final long Z1() {
        k kVar = k.f50341a;
        return kVar.getLong("total_real_play_time" + AccountRepo.f43052a.t0(), 0L);
    }

    public final void Z2(long j10) {
        k.f50341a.putLong("auth_phone_otp_succeed_time", j10);
    }

    public final void Z3(int i10) {
        k.f50341a.putInt("last_app_version", i10);
    }

    public final void Z4(boolean z10) {
        k.f50341a.putBoolean("show_progress_adjust_tip", z10);
    }

    public final void a(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putInt("day_episode_count" + date, kVar.getInt("day_episode_count" + date, 0) + 1);
    }

    public final boolean a0() {
        return k.f50341a.getBoolean("new_user_recommend_shorts_showed", false);
    }

    @Nullable
    public final String a1() {
        return k.f50341a.getString("ad_max_switch", "");
    }

    @Nullable
    public final Account a2() {
        return (Account) k.f50341a.b("tourist_account", Account.class, null);
    }

    public final void a3(@Nullable String str, @Nullable AvailableExpansionSku availableExpansionSku) {
        k kVar = k.f50341a;
        kVar.d("available_expansion_sku_" + str, availableExpansionSku);
    }

    public final void a4(long j10) {
        k.f50341a.putLong("last_preload_app_open_time", j10);
    }

    public final void a5(boolean z10) {
        k.f50341a.putBoolean("show_reward_guide", z10);
    }

    public final boolean b(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        synchronized (f68413b) {
            Set<String> v12 = f68412a.v1();
            if (!v12.add(name)) {
                return false;
            }
            k.f50341a.putString("reported_aj_tracker_names", new JSONArray((Collection) CollectionsKt.d1(v12)).toString());
            return true;
        }
    }

    @Nullable
    public final String b0() {
        return k.f50341a.getString("campaign_shorts_id", "");
    }

    public final boolean b1() {
        return k.f50341a.getBoolean("merge_tourist_on_first_open", true);
    }

    @Nullable
    public final UpdateData b2() {
        return (UpdateData) k.f50341a.b("update_data", UpdateData.class, null);
    }

    public final void b3(@Nullable String str) {
        k.f50341a.putString(MBInterstitialActivity.INTENT_CAMAPIGN, str);
    }

    public final void b4(@NotNull String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        k kVar = k.f50341a;
        kVar.putLong("last_push_time_" + key, j10);
    }

    public final void b5(@NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("show_sku_expansion_dialog_" + date, z10);
    }

    public final void c() {
        l2(null);
        S4("1_-1");
    }

    public final long c0() {
        return k.f50341a.getLong("campaign_time", -1L);
    }

    public final boolean c1() {
        return k.f50341a.getBoolean("meta_install_referrer_sent", false);
    }

    public final boolean c2(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        k kVar = k.f50341a;
        return kVar.getBoolean("video_preloaded_" + key, false);
    }

    public final void c3(boolean z10) {
        k kVar = k.f50341a;
        kVar.putBoolean("accumulativea_watch_showed" + AccountRepo.f43052a.t0(), z10);
    }

    public final void c4(long j10) {
        k.f50341a.putLong("last_report_active_user_time", j10);
    }

    public final void c5(boolean z10) {
        k.f50341a.putBoolean("show_swipe_to_watch_tip", z10);
    }

    public final boolean d() {
        return k.f50341a.getBoolean("accepted_notification_reward", false);
    }

    public final boolean d0(@NotNull String userId, @NotNull String date) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("checked_in_" + userId + '_' + date, false);
    }

    @Nullable
    public final ResourceIndex d1() {
        return (ResourceIndex) k.f50341a.b("my_list_banner_index", ResourceIndex.class, null);
    }

    @Nullable
    public final WatchAdNumber d2(int i10) {
        k kVar = k.f50341a;
        return (WatchAdNumber) kVar.b("ad_watch_number" + AccountRepo.f43052a.t0() + i10, WatchAdNumber.class, null);
    }

    public final void d3(boolean z10) {
        k.f50341a.putBoolean("campaign_defined", z10);
    }

    public final void d4(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        k.f50341a.putString("last_report_permission_day", value);
    }

    public final void d5(@Nullable TimeCount timeCount) {
        k.f50341a.d("retain_show_time_count_sku", timeCount);
    }

    @Nullable
    public final String e() {
        k kVar = k.f50341a;
        return kVar.getString("act_cookie_" + AccountRepo.f43052a.t0(), "");
    }

    @Nullable
    public final String e0() {
        return k.f50341a.getString("user_client_ip", "");
    }

    @Nullable
    public final List<Integer> e1() {
        k kVar = k.f50341a;
        return kVar.a("my_list_red_point_shortid_list_" + AccountRepo.f43052a.t0(), Integer.TYPE, null);
    }

    @Nullable
    public final String e2() {
        return k.f50341a.getString("time_zone", "UTC+0");
    }

    public final void e3(@NotNull String campaign, @Nullable String str) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        k kVar = k.f50341a;
        kVar.putString("campaign_info_" + campaign, str);
    }

    public final void e4(int i10) {
        k kVar = k.f50341a;
        kVar.putInt("last_subs_pro_type_" + AccountRepo.f43052a.t0(), i10);
    }

    public final void e5(boolean z10) {
        k kVar = k.f50341a;
        kVar.putBoolean("subs_pro_expired_" + AccountRepo.f43052a.t0(), z10);
    }

    public final int f(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getInt("act_push_showed_num_" + date, 0);
    }

    @Nullable
    public final CMSConfigResult f0() {
        return (CMSConfigResult) k.f50341a.b("cms_ab_test_config", CMSConfigResult.class, null);
    }

    public final long f1() {
        k kVar = k.f50341a;
        return kVar.getLong("new_user_recommend_time_" + AccountRepo.f43052a.t0(), 0L);
    }

    public final int f2(@NotNull String scene, @NotNull String date) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(date, "date");
        return k.f50341a.getInt("ad_2_pay_dialog_showed_" + scene + '_' + date, -1);
    }

    public final void f3(@NotNull String campaign, boolean z10) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        k kVar = k.f50341a;
        kVar.putBoolean("campaign_info_handled_" + campaign, z10);
    }

    public final void f4(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        k.f50341a.putString("vip_download_user_id", value);
    }

    public final void f5(@Nullable TimeCount timeCount) {
        k.f50341a.d("retain_show_time_count_subs", timeCount);
    }

    @Nullable
    public final ActResourceList g() {
        return (ActResourceList) k.f50341a.b("act_resource_list", ActResourceList.class, null);
    }

    @Nullable
    public final TimeCount g0() {
        return (TimeCount) k.f50341a.b("retain_show_time_count_coin", TimeCount.class, null);
    }

    @Nullable
    public final QueryNormalCoinSkuResult g1(@Nullable String str) {
        return (QueryNormalCoinSkuResult) k.f50341a.b("immersion_normalcoinskuresult" + str, QueryNormalCoinSkuResult.class, null);
    }

    public final boolean g2() {
        return k.f50341a.getBoolean("is_campaign_user", false);
    }

    public final void g3(int i10) {
        k.f50341a.putInt("campaign_info_parse_count", i10);
    }

    public final void g4(@NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("local_recommend_push_used_" + date, z10);
    }

    public final void g5(@Nullable ResourceIndex resourceIndex) {
        k.f50341a.d("task_center_banner_index", resourceIndex);
    }

    @Nullable
    public final List<ActShowTimeInfo> h() {
        return k.f50341a.a("act_show_time_info_list", ActShowTimeInfo.class, null);
    }

    @NotNull
    public final List<Integer> h0() {
        List<Integer> a10 = k.f50341a.a("collect_tips_short_list", Integer.TYPE, null);
        if (a10 == null) {
            return CollectionsKt.n();
        }
        return a10;
    }

    @Nullable
    public final String h1() {
        return k.f50341a.getString("ad_open_switch", "");
    }

    public final boolean h2(int i10, int i11) {
        k kVar = k.f50341a;
        return kVar.getBoolean("app_log_report_status_" + i10 + '_' + i11, false);
    }

    public final void h3(boolean z10) {
        k.f50341a.putBoolean("install_info_handled", z10);
    }

    public final void h4(int i10, int i11, boolean z10) {
        k kVar = k.f50341a;
        kVar.putBoolean("app_log_report_status_" + i10 + '_' + i11, z10);
    }

    public final void h5(boolean z10) {
        k.f50341a.putBoolean("key_tblink_start_follow_task", z10);
    }

    public final int i(@NotNull String scene, @NotNull String date) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(date, "date");
        return k.f50341a.getInt("ad_2_pay_dialog_show_count" + scene + '_' + date, 0);
    }

    @Nullable
    public final String i0() {
        return k.f50341a.getString("currency_code", "");
    }

    public final boolean i1(boolean z10) {
        return k.f50341a.getBoolean("pip_mode", z10);
    }

    public final boolean i2() {
        return k.f50341a.getBoolean("is_old_user", false);
    }

    public final void i3(@NotNull String campaign, boolean z10) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        k kVar = k.f50341a;
        kVar.putBoolean("campaign_info_queried_" + campaign, z10);
    }

    public final void i4(boolean z10) {
        k.f50341a.putBoolean("install_info_sent_v2", z10);
    }

    public final void i5(@Nullable List<AdShowCount> list) {
        k.f50341a.e("ad_show_info_list", list);
    }

    public final int j(@NotNull String scene, @NotNull String date) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(date, "date");
        Integer valueOf = Integer.valueOf(k.f50341a.getInt("ad_2_pay_watch_ad_count" + scene + '_' + date, 0));
        if (valueOf.intValue() <= 0) {
            valueOf = null;
        }
        if (valueOf == null) {
            return 0;
        }
        return valueOf.intValue();
    }

    public final boolean j0() {
        return k.f50341a.getBoolean("custom_device_id_enable", true);
    }

    @Nullable
    public final Account j1() {
        return (Account) k.f50341a.b("primary_account", Account.class, null);
    }

    public final boolean j2(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("discount_subscribe_info_is_show" + date, false);
    }

    public final void j3(boolean z10) {
        k.f50341a.putBoolean("campaign_popular_shorts_showed", z10);
    }

    public final void j4(boolean z10) {
        k.f50341a.putBoolean("lp_info_send_again", z10);
    }

    public final void j5(boolean z10) {
        k kVar = k.f50341a;
        kVar.putBoolean("today_report_receive_push_" + TimeUtil.f48175a.f(f.a(new Date())) + '_' + AccountRepo.f43052a.t0(), z10);
    }

    @Nullable
    public final String k(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        k kVar = k.f50341a;
        return kVar.getString("ad_config_string_" + key, null);
    }

    @Nullable
    public final List<CustomPush> k0() {
        return k.f50341a.a("custom_push_list", CustomPush.class, null);
    }

    public final int k1(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getInt("process_launch_count_" + date, 0);
    }

    public final void k2(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        synchronized (f68413b) {
            try {
                Set<String> v12 = f68412a.v1();
                if (v12.remove(name)) {
                    k.f50341a.putString("reported_aj_tracker_names", new JSONArray((Collection) CollectionsKt.d1(v12)).toString());
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void k3(boolean z10) {
        k.f50341a.putBoolean("new_user_recommend_shorts_showed", z10);
    }

    public final void k4(int i10) {
        k.f50341a.putInt("lp_info_send_again_rest_count", i10);
    }

    public final void k5(long j10) {
        k kVar = k.f50341a;
        kVar.putLong("total_play_time_for_accumulated_task" + AccountRepo.f43052a.t0(), j10);
    }

    public final boolean l() {
        return k.f50341a.getBoolean("ad_consumer_is_ready", false);
    }

    @Nullable
    public final NewbieWatchTask l0() {
        k kVar = k.f50341a;
        return (NewbieWatchTask) kVar.b("daily_watch_task" + AccountRepo.f43052a.t0(), NewbieWatchTask.class, null);
    }

    @Nullable
    public final ResourceIndex l1() {
        return (ResourceIndex) k.f50341a.b("profile_banner_index", ResourceIndex.class, null);
    }

    public final void l2(@Nullable PlayContinue playContinue) {
        f68415d = playContinue;
        k kVar = k.f50341a;
        kVar.d("episode_play_continue_" + AccountRepo.f43052a.t0(), playContinue);
    }

    public final void l3(@Nullable String str) {
        k.f50341a.putString("campaign_shorts_id", str);
    }

    public final void l4(@Nullable Boolean bool) {
        k.f50341a.putString("lp_result_ad_switch", String.valueOf(bool));
    }

    public final void l5(long j10) {
        k kVar = k.f50341a;
        kVar.putLong("total_play_time_in_immersion" + AccountRepo.f43052a.t0(), j10);
    }

    @Nullable
    public final String m() {
        return k.f50341a.getString("ad_adUnitId_switch", "");
    }

    @Nullable
    public final String m0() {
        return k.f50341a.getString("db_secret", "");
    }

    public final boolean m1() {
        return k.f50341a.getBoolean("push_crashed", false);
    }

    public final void m2(boolean z10) {
        k.f50341a.putBoolean("accepted_notification_reward", z10);
    }

    public final void m3(long j10) {
        k.f50341a.putLong("campaign_time", j10);
    }

    public final void m4(boolean z10) {
        k.f50341a.putBoolean("lp_result_ad_switch_queried", z10);
    }

    public final void m5(long j10) {
        k kVar = k.f50341a;
        kVar.putLong("total_real_play_time" + AccountRepo.f43052a.t0(), j10);
    }

    @Nullable
    public final String n() {
        return c.f50337a.getString("adjust_adid", "");
    }

    public final boolean n0() {
        return k.f50341a.getBoolean("firebase_ddl_info_sent", false);
    }

    public final int n1(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        k kVar = k.f50341a;
        return kVar.getInt("push_showed_count_" + key, 0);
    }

    public final void n2(@Nullable String str) {
        k kVar = k.f50341a;
        kVar.putString("act_cookie_" + AccountRepo.f43052a.t0(), str);
    }

    public final void n3(boolean z10) {
        k.f50341a.putBoolean("is_campaign_user", z10);
    }

    public final void n4(@Nullable String str) {
        k.f50341a.putString("ad_max_switch", str);
    }

    public final void n5(@Nullable Account account) {
        k.f50341a.d("tourist_account", account);
    }

    public final boolean o() {
        return k.f50341a.getBoolean("af_conversion_data_sent", false);
    }

    public final int o0() {
        return k.f50341a.getInt("deny_notification_permission_count", 0);
    }

    @Nullable
    public final QuerySubsFirstDiscountResult o1() {
        return (QuerySubsFirstDiscountResult) k.f50341a.b("queryDiscountSubscribeSkuList", QuerySubsFirstDiscountResult.class, null);
    }

    public final void o2(@NotNull String date, int i10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putInt("act_push_showed_num_" + date, i10);
    }

    public final void o3(@NotNull String userId, @NotNull String date, boolean z10) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putBoolean("checked_in_" + userId + '_' + date, z10);
    }

    public final void o4(boolean z10) {
        k.f50341a.putBoolean("merge_tourist_on_first_open", z10);
    }

    public final void o5(@Nullable UpdateData updateData) {
        k.f50341a.d("update_data", updateData);
    }

    public final boolean p() {
        return k.f50341a.getBoolean("af_enable", false);
    }

    @Nullable
    public final DiscountSubscribeInfo p0() {
        return (DiscountSubscribeInfo) k.f50341a.b("discount_subscribe_info", DiscountSubscribeInfo.class, null);
    }

    public final boolean p1() {
        return k.f50341a.getBoolean("query_sdk_config", true);
    }

    public final void p2(@Nullable ActResourceList actResourceList) {
        k.f50341a.d("act_resource_list", actResourceList);
    }

    public final void p3(@Nullable String str) {
        k.f50341a.putString("user_client_ip", str);
    }

    public final void p4(boolean z10) {
        k.f50341a.putBoolean("meta_install_referrer_sent", z10);
    }

    public final void p5(@NotNull String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        k kVar = k.f50341a;
        kVar.putBoolean("video_preloaded_" + key, z10);
    }

    @Nullable
    public final Boolean q() {
        String string = k.f50341a.getString("af_result_ad_switch", null);
        if (string == null || string.length() == 0) {
            return null;
        }
        return Boolean.valueOf(Boolean.parseBoolean(string));
    }

    @Nullable
    public final List<DomainIpInfo> q0() {
        return k.f50341a.a("domain_ip_info_list", DomainIpInfo.class, null);
    }

    @Nullable
    public final QuerySingleUnlockEpisodeMethodsResult q1() {
        return (QuerySingleUnlockEpisodeMethodsResult) k.f50341a.b("querySingleUnlockEpisodeMethods", QuerySingleUnlockEpisodeMethodsResult.class, null);
    }

    public final void q2(@Nullable List<ActShowTimeInfo> list) {
        k.f50341a.e("act_show_time_info_list", list);
    }

    public final void q3(@Nullable CMSConfigResult cMSConfigResult) {
        k.f50341a.d("cms_ab_test_config", cMSConfigResult);
    }

    public final void q4(@Nullable ResourceIndex resourceIndex) {
        k.f50341a.d("my_list_banner_index", resourceIndex);
    }

    public final void q5(int i10, @Nullable WatchAdNumber watchAdNumber) {
        k kVar = k.f50341a;
        kVar.d("ad_watch_number" + AccountRepo.f43052a.t0() + i10, watchAdNumber);
    }

    public final boolean r() {
        return k.f50341a.getBoolean("af_result_ad_switch_queried", false);
    }

    @Nullable
    public final PlayContinue r0() {
        if (f68415d == null && !f68414c) {
            f68414c = true;
            k kVar = k.f50341a;
            PlayContinue playContinue = (PlayContinue) kVar.b("episode_play_continue_" + AccountRepo.f43052a.t0(), PlayContinue.class, null);
            f68415d = playContinue;
            if (playContinue != null) {
                playContinue.setShowType(1);
            }
        }
        return f68415d;
    }

    @Nullable
    public final QueryUnlockEpisodeProductListResult r1() {
        return (QueryUnlockEpisodeProductListResult) k.f50341a.b("queryUnlockEpisodeProductList", QueryUnlockEpisodeProductListResult.class, null);
    }

    public final void r2(@NotNull String scene, @NotNull String date, int i10) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(date, "date");
        k.f50341a.putInt("ad_2_pay_dialog_show_count" + scene + '_' + date, i10);
    }

    public final void r3(@Nullable TimeCount timeCount) {
        k.f50341a.d("retain_show_time_count_coin", timeCount);
    }

    public final void r4(@Nullable List<Integer> list) {
        k kVar = k.f50341a;
        kVar.e("my_list_red_point_shortid_list_" + AccountRepo.f43052a.t0(), list);
    }

    public final void r5(@Nullable String str) {
        k.f50341a.putString("time_zone", str);
    }

    public final boolean s() {
        return k.f50341a.getBoolean("aj_conversion_data_sent", false);
    }

    public final int s0(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getInt("day_episode_count" + date, 0);
    }

    public final int s1(@NotNull String scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        k kVar = k.f50341a;
        return kVar.getInt("rating_trigger_condition_count_" + scene, 0);
    }

    public final void s2(@NotNull String scene, @NotNull String date, int i10) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(date, "date");
        k.f50341a.putInt("ad_2_pay_dialog_showed_" + scene + '_' + date, i10);
    }

    public final void s3(@NotNull List<Integer> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        k.f50341a.e("collect_tips_short_list", value);
    }

    public final void s4(long j10) {
        k kVar = k.f50341a;
        kVar.putLong("new_user_recommend_time_" + AccountRepo.f43052a.t0(), j10);
    }

    public final boolean t() {
        return k.f50341a.getBoolean("aj_enable", false);
    }

    public final int t0(int i10) {
        k kVar = k.f50341a;
        return kVar.getInt("episode_play_position_" + AccountRepo.f43052a.t0() + '_' + i10, 0);
    }

    @NotNull
    public final String t1() {
        String string = k.f50341a.getString("rc4_secret_key", "");
        if (string == null) {
            return "";
        }
        return string;
    }

    public final void t2(@NotNull String scene, @NotNull String date, int i10) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(date, "date");
        k.f50341a.putInt("ad_2_pay_watch_ad_count" + scene + '_' + date, i10);
    }

    public final void t3(@Nullable String str) {
        k.f50341a.putString("currency_code", str);
    }

    public final void t4(@Nullable String str, @Nullable QueryNormalCoinSkuResult queryNormalCoinSkuResult) {
        boolean z10;
        String str2 = "immersion_normalcoinskuresult" + str;
        if (queryNormalCoinSkuResult == null) {
            return;
        }
        List<CoinSku> skuInfoResponses = queryNormalCoinSkuResult.getSkuInfoResponses();
        boolean z11 = false;
        if (skuInfoResponses != null) {
            z10 = !skuInfoResponses.isEmpty();
        } else {
            z10 = false;
        }
        List<SubsSku> subscribeSkuResponses = queryNormalCoinSkuResult.getSubscribeSkuResponses();
        if (subscribeSkuResponses != null) {
            z11 = !subscribeSkuResponses.isEmpty();
        }
        if (!z10 && !z11) {
            return;
        }
        k.f50341a.d(str2, queryNormalCoinSkuResult);
    }

    @Nullable
    public final Boolean u() {
        String string = k.f50341a.getString("aj_result_ad_switch", null);
        if (string == null || string.length() == 0) {
            return null;
        }
        return Boolean.valueOf(Boolean.parseBoolean(string));
    }

    @Nullable
    public final SubsSku u0(@Nullable String str) {
        k kVar = k.f50341a;
        return (SubsSku) kVar.b("expansion_subs_sku_" + str, SubsSku.class, null);
    }

    public final boolean u1() {
        return k.f50341a.getBoolean("remote_config_await_firebase_enable", true);
    }

    public final void u2(@NotNull String key, @NotNull String ecpm) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(ecpm, "ecpm");
        k kVar = k.f50341a;
        kVar.putString("ad_config_string_" + key, ecpm);
    }

    public final void u3(boolean z10) {
        k.f50341a.putBoolean("custom_device_id_enable", z10);
    }

    public final void u4(boolean z10) {
        k.f50341a.putBoolean("is_old_user", z10);
    }

    public final boolean v() {
        return k.f50341a.getBoolean("aj_result_ad_switch_queried", false);
    }

    @Nullable
    public final ExtraUserInfo v0() {
        k kVar = k.f50341a;
        return (ExtraUserInfo) kVar.b("user_extra_info_" + AccountRepo.f43052a.t0(), ExtraUserInfo.class, null);
    }

    @NotNull
    public final Set<String> v1() {
        String string = k.f50341a.getString("reported_aj_tracker_names", null);
        if (string != null && string.length() != 0) {
            try {
                JSONArray jSONArray = new JSONArray(string);
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                int length = jSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    String string2 = jSONArray.getString(i10);
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                    linkedHashSet.add(string2);
                }
                return linkedHashSet;
            } catch (Exception unused) {
                return new LinkedHashSet();
            }
        }
        return new LinkedHashSet();
    }

    public final void v2(boolean z10) {
        k.f50341a.putBoolean("ad_consumer_is_ready", z10);
    }

    public final void v3(@Nullable List<CustomPush> list) {
        k.f50341a.e("custom_push_list", list);
    }

    public final void v4(@Nullable String str) {
        k.f50341a.putString("ad_open_switch", str);
    }

    @NotNull
    public final AntiBrushingState w() {
        AntiBrushingState antiBrushingState = (AntiBrushingState) k.f50341a.b("anti_brushing_state", AntiBrushingState.class, null);
        if (antiBrushingState == null) {
            return new AntiBrushingState(null, 1, null);
        }
        return antiBrushingState;
    }

    @Nullable
    public final String w0() {
        k kVar = k.f50341a;
        return kVar.getString("fcm_token_" + AccountRepo.f43052a.t0(), "");
    }

    public final boolean w1() {
        return k.f50341a.getBoolean("request_notification_permission_on_first_open", true);
    }

    public final void w2(@Nullable String str) {
        k.f50341a.putString("ad_adUnitId_switch", str);
    }

    public final void w3(@Nullable NewbieWatchTask newbieWatchTask) {
        k kVar = k.f50341a;
        kVar.d("daily_watch_task" + AccountRepo.f43052a.t0(), newbieWatchTask);
    }

    public final void w4(boolean z10) {
        k.f50341a.putBoolean("pip_mode", z10);
    }

    public final int x() {
        return k.f50341a.getInt("api_url_index", 0);
    }

    public final boolean x0() {
        return k.f50341a.getBoolean("first_init_firebase_configure", true);
    }

    @Nullable
    public final List<Integer> x1(@Nullable String str) {
        k kVar = k.f50341a;
        return kVar.a("rewards_follow_tasks" + str, Integer.TYPE, null);
    }

    public final void x2(@Nullable String str) {
        c.f50337a.putString("adjust_adid", str);
    }

    public final void x3(@Nullable String str) {
        k.f50341a.putString("db_secret", str);
    }

    public final void x4(@Nullable Account account) {
        k.f50341a.d("primary_account", account);
    }

    @Nullable
    public final String y() {
        return k.f50341a.getString("api_url_test", "");
    }

    public final long y0() {
        return k.f50341a.getLong("first_install_time", 0L);
    }

    public final boolean y1(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("rewards_fragment_show_" + date, false);
    }

    public final void y2(boolean z10) {
        k.f50341a.putBoolean("af_conversion_data_sent", z10);
    }

    public final void y3(boolean z10) {
        k.f50341a.putBoolean("firebase_ddl_info_sent", z10);
    }

    public final void y4(@NotNull String date, int i10) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        kVar.putInt("process_launch_count_" + date, i10);
    }

    public final boolean z(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("app_active_foreground_logged_" + date, false);
    }

    public final boolean z0() {
        return k.f50341a.getBoolean("first_open", true);
    }

    public final boolean z1(@NotNull String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        k kVar = k.f50341a;
        return kVar.getBoolean("rewards_page_first_show_check_in_dialog" + date, false);
    }

    public final void z2(boolean z10) {
        k.f50341a.putBoolean("af_enable", z10);
    }

    public final void z3(int i10) {
        k.f50341a.putInt("deny_notification_permission_count", i10);
    }

    public final void z4(@Nullable ResourceIndex resourceIndex) {
        k.f50341a.d("profile_banner_index", resourceIndex);
    }
}
