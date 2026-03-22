package af;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: EventName.kt */
@Metadata
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f628a = new d();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f629b = {"app_start", "app_launch", "active_user", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, "interactive", "app_active_background", "interactive_by_push", "app_close", "app_usage_duration", "app_open_day2", "session"};
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f630c = {"recharge_show", "order_show", "order_create", "order_create_fail", "order_create_cancel", "pay_success", "exchange_coins_success", "exchange_coins_failed", "exchange_premium_success", "exchange_premium_failed", "restore_click", "restore_result", "purchased_sku_null", "purchased_sku_parse", "shorttv_purchase"};
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f631d = {"ad_request", "ad_fill", "ad_impressions", "ad_real_impressions", "ad_impressions_duration", "ad_revenue", "ad_clicks", "watch_ad_click", "ad_placement_show", "ecpm_below_20", "ecpm_above_20", "ecpm_above_40"};
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f632e = {"enter_reel_play", "reel_cut"};
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f633f = {"reel_play", "enter_reel_play", "reel_cut"};
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f634g = {"episode_unlock_ad_success", "episode_unlock_success"};
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final String[] f635h = {"push_send", "push_open"};

    private d() {
    }

    @NotNull
    public final String[] a() {
        return f629b;
    }

    @NotNull
    public final String[] b() {
        return f631d;
    }

    @NotNull
    public final String[] c() {
        return f633f;
    }

    @NotNull
    public final String[] d() {
        return f632e;
    }

    @NotNull
    public final String[] e() {
        return f630c;
    }

    @NotNull
    public final String[] f() {
        return f635h;
    }

    @NotNull
    public final String[] g() {
        return f634g;
    }
}
