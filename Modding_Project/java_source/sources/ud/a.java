package ud;

import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.ad.AdNewConfig;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import dd.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MemoryCacheManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f68411a = new a();

    private a() {
    }

    public final boolean A() {
        return c.f50337a.getBoolean("shorts_fragment_created", false);
    }

    public final void A0(@NotNull String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        Logger logger = Logger.f41511a;
        logger.e("PushManager", "setPushFailed -> key(" + key + ") failed(" + z10 + ')');
        c cVar = c.f50337a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("push_failed_");
        sb2.append(key);
        cVar.putBoolean(sb2.toString(), z10);
    }

    @Nullable
    public final List<SubsSku> B() {
        return c.f50337a.i("sub_detail_list", null);
    }

    public final void B0(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        c.f50337a.putString("query_short_id_trace", value);
    }

    public final int C() {
        return c.f50337a.getInt("system_bars_bottom", 0);
    }

    public final void C0(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        c.f50337a.putString("query_slide_v3_trace", value);
    }

    public final int D() {
        return c.f50337a.getInt("system_bars_top", 0);
    }

    public final void D0(boolean z10) {
        c.f50337a.putBoolean("is_refresh_rewards_module", z10);
    }

    @Nullable
    public final String E() {
        return c.f50337a.getString("system_language", "");
    }

    public final void E0(boolean z10) {
        c.f50337a.putBoolean("rewards_daily_task_expand_fold", z10);
    }

    @Nullable
    public final String F() {
        return c.f50337a.getString("system_version", "");
    }

    public final void F0(boolean z10) {
        c.f50337a.putBoolean("rewards_one_time_task_expand_fold", z10);
    }

    @Nullable
    public final String G() {
        return c.f50337a.getString("timezone", "");
    }

    public final void G0(@Nullable String str) {
        c.f50337a.putString("rooted", str);
    }

    public final int H() {
        return c.f50337a.getInt("today_rewards_bonus_num", 0);
    }

    public final void H0(int i10) {
        c.f50337a.putInt("screen_height_px", i10);
    }

    public final boolean I() {
        return c.f50337a.getBoolean("use_vpn", false);
    }

    public final void I0(int i10) {
        c.f50337a.putInt("screen_width_px", i10);
    }

    public final boolean J() {
        return c.f50337a.getBoolean("is_auto_play", false);
    }

    public final void J0(boolean z10) {
        c.f50337a.putBoolean("shorts_fragment_created", z10);
    }

    public final boolean K() {
        return c.f50337a.getBoolean("is_consumed_cps_check", false);
    }

    public final void K0(boolean z10) {
        c.f50337a.putBoolean("reward_is_show_pendant", z10);
    }

    @Nullable
    public final String L() {
        return c.f50337a.getString("dev_mode", null);
    }

    public final void L0(boolean z10) {
        c.f50337a.putBoolean("is_show_sale_immersion_page", z10);
    }

    @Nullable
    public final String M() {
        return c.f50337a.getString("emulator", null);
    }

    public final void M0(@Nullable List<? extends SubsSku> list) {
        c.f50337a.e("sub_detail_list", list);
    }

    public final boolean N() {
        return c.f50337a.getBoolean("is_first_fetch_discover_tab", true);
    }

    public final void N0(int i10) {
        c.f50337a.putInt("system_bars_bottom", i10);
    }

    public final boolean O() {
        return c.f50337a.getBoolean("is_goto_ttppment", false);
    }

    public final void O0(int i10) {
        c.f50337a.putInt("system_bars_top", i10);
    }

    public final boolean P() {
        return c.f50337a.getBoolean("install_first_open", false);
    }

    public final void P0(@Nullable String str) {
        c.f50337a.putString("system_language", str);
    }

    public final boolean Q() {
        return c.f50337a.getBoolean("jump_immersion_this_active", false);
    }

    public final void Q0(@Nullable String str) {
        c.f50337a.putString("system_version", str);
    }

    public final boolean R() {
        return c.f50337a.getBoolean("is_refresh_rewards_module", false);
    }

    public final void R0(@Nullable String str) {
        c.f50337a.putString("timezone", str);
    }

    public final boolean S() {
        return c.f50337a.getBoolean("rewards_daily_task_expand_fold", false);
    }

    public final void S0(int i10) {
        c.f50337a.putInt("today_rewards_bonus_num", i10);
    }

    public final boolean T() {
        return c.f50337a.getBoolean("rewards_one_time_task_expand_fold", false);
    }

    public final void T0(boolean z10) {
        c.f50337a.putBoolean("use_vpn", z10);
    }

    @Nullable
    public final String U() {
        return c.f50337a.getString("rooted", null);
    }

    public final boolean V() {
        return c.f50337a.getBoolean("reward_is_show_pendant", false);
    }

    public final boolean W() {
        return c.f50337a.getBoolean("is_show_sale_immersion_page", true);
    }

    public final void X(@Nullable AdNewConfig adNewConfig) {
        c.f50337a.d("ad_config", adNewConfig);
    }

    public final void Y(@Nullable String str) {
        c.f50337a.putString("app_language", str);
    }

    public final void Z(@Nullable String str) {
        c.f50337a.putString("app_launch_from", str);
    }

    @Nullable
    public final AdNewConfig a() {
        Object h10 = c.f50337a.h("ad_config", null);
        if (!(h10 instanceof AdNewConfig)) {
            return null;
        }
        return (AdNewConfig) h10;
    }

    public final void a0(long j10) {
        c.f50337a.putLong("app_launch_time", j10);
    }

    @Nullable
    public final String b() {
        return c.f50337a.getString("app_language", "");
    }

    public final void b0(boolean z10) {
        c.f50337a.putBoolean("is_auto_play", z10);
    }

    @Nullable
    public final String c() {
        return c.f50337a.getString("app_launch_from", "icon");
    }

    public final void c0(boolean z10) {
        c.f50337a.putBoolean("cold_boot", z10);
    }

    public final long d() {
        return c.f50337a.getLong("app_launch_time", 0L);
    }

    public final void d0(boolean z10) {
        c.f50337a.putBoolean("is_consumed_cps_check", z10);
    }

    public final boolean e() {
        return c.f50337a.getBoolean("cold_boot", true);
    }

    public final void e0(@Nullable String str) {
        c.f50337a.putString("currency_code", str);
    }

    @Nullable
    public final String f() {
        return c.f50337a.getString("currency_code", "");
    }

    public final void f0(@Nullable String str) {
        c.f50337a.putString("dev_mode", str);
    }

    public final boolean g() {
        return c.f50337a.getBoolean("discover_data_loaded", false);
    }

    public final void g0(boolean z10) {
        c.f50337a.putBoolean("discover_data_loaded", z10);
    }

    public final boolean h() {
        return c.f50337a.getBoolean("discover_low_sku_template_notification_closed", false);
    }

    public final void h0(boolean z10) {
        c.f50337a.putBoolean("discover_low_sku_template_notification_closed", z10);
    }

    public final boolean i() {
        return c.f50337a.getBoolean("discover_show_low_sku_template_notification", false);
    }

    public final void i0(boolean z10) {
        c.f50337a.putBoolean("discover_show_low_sku_template_notification", z10);
    }

    public final int j(int i10) {
        c cVar = c.f50337a;
        return cVar.getInt("episode_play_position_" + i10, 0);
    }

    public final void j0(@Nullable String str) {
        c.f50337a.putString("emulator", str);
    }

    public final int k() {
        return c.f50337a.getInt("existsOtherSubscription", -1);
    }

    public final void k0(int i10, int i11) {
        c cVar = c.f50337a;
        cVar.putInt("episode_play_position_" + i10, i11);
    }

    public final boolean l() {
        return c.f50337a.getBoolean("fake_on_background", false);
    }

    public final void l0(int i10) {
        c.f50337a.putInt("existsOtherSubscription", i10);
    }

    @NotNull
    public final String m() {
        String string = c.f50337a.getString("gaid", "");
        if (string == null) {
            return "";
        }
        return string;
    }

    public final void m0(boolean z10) {
        c.f50337a.putBoolean("fake_on_background", z10);
    }

    public final boolean n() {
        return c.f50337a.getBoolean("goto_system_setting_open_alert_window", false);
    }

    public final void n0(boolean z10) {
        c.f50337a.putBoolean("is_first_fetch_discover_tab", z10);
    }

    public final boolean o() {
        return c.f50337a.getBoolean("has_wait_get_unity_bonus", false);
    }

    public final void o0(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        c.f50337a.putString("gaid", value);
    }

    @Nullable
    public final ActResource p() {
        Object h10 = c.f50337a.h("immersion_act_resource", null);
        if (!(h10 instanceof ActResource)) {
            return null;
        }
        return (ActResource) h10;
    }

    public final void p0(boolean z10) {
        c.f50337a.putBoolean("is_goto_ttppment", z10);
    }

    @Nullable
    public final String q() {
        return c.f50337a.getString("immersion_activity_from", "");
    }

    public final void q0(boolean z10) {
        c.f50337a.putBoolean("goto_system_setting_open_alert_window", z10);
    }

    @Nullable
    public final String r() {
        return c.f50337a.getString("local_country", null);
    }

    public final void r0(boolean z10) {
        c.f50337a.putBoolean("has_wait_get_unity_bonus", z10);
    }

    @Nullable
    public final String s() {
        return c.f50337a.getString("network_operator", "");
    }

    public final void s0(@Nullable ActResource actResource) {
        c.f50337a.d("immersion_act_resource", actResource);
    }

    public final boolean t() {
        return c.f50337a.getBoolean("on_foreground", false);
    }

    public final void t0(@Nullable String str) {
        c.f50337a.putString("immersion_activity_from", str);
    }

    @Nullable
    public final String u() {
        return c.f50337a.getString("phone_model", "");
    }

    public final void u0(boolean z10) {
        c.f50337a.putBoolean("install_first_open", z10);
    }

    public final boolean v(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        c cVar = c.f50337a;
        return cVar.getBoolean("push_failed_" + key, false);
    }

    public final void v0(boolean z10) {
        c.f50337a.putBoolean("jump_immersion_this_active", z10);
    }

    @NotNull
    public final String w() {
        String string = c.f50337a.getString("query_short_id_trace", "");
        if (string == null) {
            return "";
        }
        return string;
    }

    public final void w0(@Nullable String str) {
        c.f50337a.putString("local_country", str);
    }

    @NotNull
    public final String x() {
        String string = c.f50337a.getString("query_slide_v3_trace", "");
        if (string == null) {
            return "";
        }
        return string;
    }

    public final void x0(@Nullable String str) {
        c.f50337a.putString("network_operator", str);
    }

    public final int y() {
        return c.f50337a.getInt("screen_height_px", 0);
    }

    public final void y0(boolean z10) {
        c.f50337a.putBoolean("on_foreground", z10);
    }

    public final int z() {
        return c.f50337a.getInt("screen_width_px", 0);
    }

    public final void z0(@Nullable String str) {
        c.f50337a.putString("phone_model", str);
    }
}
