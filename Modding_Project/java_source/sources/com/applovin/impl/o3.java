package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.z4;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class o3 extends v4 {
    public static final v4 A7;
    public static final v4 B7;
    public static final v4 C7;
    public static final v4 D7;
    public static final v4 E7;
    public static final v4 F7;
    public static final v4 G7;
    public static final v4 H7;
    public static final v4 I7;
    public static final v4 J7;
    public static final v4 K7;
    public static final v4 L7;
    public static final v4 M7;
    public static final v4 N7;
    public static final v4 O7;
    public static final v4 P7;
    public static final v4 Q7;
    public static final v4 R7;
    public static final v4 S7;
    public static final v4 T7;
    public static final v4 U7;
    public static final v4 V7;
    public static final v4 W7;
    public static final v4 X7;
    public static final v4 Y7;
    public static final v4 Z7;

    /* renamed from: a8  reason: collision with root package name */
    public static final v4 f9108a8;

    /* renamed from: b8  reason: collision with root package name */
    public static final v4 f9109b8;

    /* renamed from: c8  reason: collision with root package name */
    public static final v4 f9110c8;

    /* renamed from: d7  reason: collision with root package name */
    public static final v4 f9111d7 = v4.a("afi", "");

    /* renamed from: d8  reason: collision with root package name */
    public static final v4 f9112d8;

    /* renamed from: e7  reason: collision with root package name */
    public static final v4 f9113e7;

    /* renamed from: e8  reason: collision with root package name */
    public static final v4 f9114e8;

    /* renamed from: f7  reason: collision with root package name */
    public static final v4 f9115f7;

    /* renamed from: f8  reason: collision with root package name */
    public static final v4 f9116f8;

    /* renamed from: g7  reason: collision with root package name */
    public static final v4 f9117g7;

    /* renamed from: g8  reason: collision with root package name */
    public static final v4 f9118g8;

    /* renamed from: h7  reason: collision with root package name */
    public static final v4 f9119h7;

    /* renamed from: h8  reason: collision with root package name */
    public static final v4 f9120h8;

    /* renamed from: i7  reason: collision with root package name */
    public static final v4 f9121i7;

    /* renamed from: i8  reason: collision with root package name */
    public static final v4 f9122i8;

    /* renamed from: j7  reason: collision with root package name */
    public static final v4 f9123j7;

    /* renamed from: j8  reason: collision with root package name */
    public static final v4 f9124j8;

    /* renamed from: k7  reason: collision with root package name */
    public static final v4 f9125k7;

    /* renamed from: k8  reason: collision with root package name */
    public static final v4 f9126k8;

    /* renamed from: l7  reason: collision with root package name */
    public static final v4 f9127l7;

    /* renamed from: l8  reason: collision with root package name */
    public static final v4 f9128l8;

    /* renamed from: m7  reason: collision with root package name */
    public static final v4 f9129m7;

    /* renamed from: m8  reason: collision with root package name */
    public static final v4 f9130m8;

    /* renamed from: n7  reason: collision with root package name */
    public static final v4 f9131n7;

    /* renamed from: n8  reason: collision with root package name */
    public static final v4 f9132n8;

    /* renamed from: o7  reason: collision with root package name */
    public static final v4 f9133o7;

    /* renamed from: o8  reason: collision with root package name */
    public static final v4 f9134o8;

    /* renamed from: p7  reason: collision with root package name */
    public static final v4 f9135p7;

    /* renamed from: p8  reason: collision with root package name */
    public static final v4 f9136p8;

    /* renamed from: q7  reason: collision with root package name */
    public static final v4 f9137q7;

    /* renamed from: q8  reason: collision with root package name */
    public static final v4 f9138q8;

    /* renamed from: r7  reason: collision with root package name */
    public static final v4 f9139r7;

    /* renamed from: r8  reason: collision with root package name */
    public static final v4 f9140r8;

    /* renamed from: s7  reason: collision with root package name */
    public static final v4 f9141s7;

    /* renamed from: s8  reason: collision with root package name */
    public static final v4 f9142s8;

    /* renamed from: t7  reason: collision with root package name */
    public static final v4 f9143t7;

    /* renamed from: u7  reason: collision with root package name */
    public static final v4 f9144u7;

    /* renamed from: v7  reason: collision with root package name */
    public static final v4 f9145v7;

    /* renamed from: w7  reason: collision with root package name */
    public static final v4 f9146w7;

    /* renamed from: x7  reason: collision with root package name */
    public static final v4 f9147x7;

    /* renamed from: y7  reason: collision with root package name */
    public static final v4 f9148y7;

    /* renamed from: z7  reason: collision with root package name */
    public static final v4 f9149z7;

    static {
        Boolean bool = Boolean.FALSE;
        f9113e7 = v4.a("iafiwaa", bool);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f9115f7 = v4.a("afi_ms", Long.valueOf(timeUnit.toMillis(5L)));
        f9117g7 = v4.a("mediation_endpoint", "https://ms.applovin.com/");
        f9119h7 = v4.a("mediation_backup_endpoint", "https://ms.applvn.com/");
        f9121i7 = v4.a("fetch_next_ad_retry_delay_ms", Long.valueOf(timeUnit.toMillis(2L)));
        f9123j7 = v4.a("fetch_next_ad_timeout_ms", Long.valueOf(timeUnit.toMillis(30L)));
        f9125k7 = v4.a("fetch_mediation_debugger_info_timeout_ms", Long.valueOf(timeUnit.toMillis(7L)));
        Boolean bool2 = Boolean.TRUE;
        f9127l7 = v4.a("auto_init_mediation_debugger", bool2);
        f9129m7 = v4.a("postback_macros", "{\"{MCODE}\":\"mcode\",\"{BCODE}\":\"bcode\",\"{ICODE}\":\"icode\",\"{SCODE}\":\"scode\"}");
        f9131n7 = v4.a("max_signal_provider_latency_ms", Long.valueOf(timeUnit.toMillis(30L)));
        f9133o7 = v4.a("default_adapter_timeout_ms", Long.valueOf(timeUnit.toMillis(10L)));
        f9135p7 = v4.a("ad_refresh_ms", Long.valueOf(timeUnit.toMillis(30L)));
        f9137q7 = v4.a("ad_load_failure_refresh_ms", Long.valueOf(timeUnit.toMillis(30L)));
        f9139r7 = v4.a("ad_load_failure_refresh_ignore_error_codes", "204");
        f9141s7 = v4.a("refresh_ad_on_app_resume_elapsed_threshold_ms", 0L);
        f9143t7 = v4.a("refresh_ad_view_timer_responds_to_background", bool2);
        f9144u7 = v4.a("refresh_ad_view_timer_responds_to_store_kit", bool2);
        f9145v7 = v4.a("refresh_ad_view_timer_responds_to_window_visibility_changed", bool);
        f9146w7 = v4.a("avrsponse", bool);
        f9147x7 = v4.a("allow_pause_auto_refresh_immediately", bool);
        f9148y7 = v4.a("ad_view_race_condition_fix_enabled", bool);
        f9149z7 = v4.a("always_destroy_ad_view_on_ui_thread", bool);
        A7 = v4.a("fullscreen_display_delay_ms", 0L);
        B7 = v4.a("susaode", bool);
        C7 = v4.a("ahdm", 500L);
        D7 = v4.a("ad_view_refresh_precache_request_viewability_undesired_flags", 246L);
        E7 = v4.a("ad_view_refresh_precache_request_enabled", bool2);
        F7 = v4.a("famttl_ms", 0L);
        G7 = v4.a("signal_expiration_ms", -1L);
        H7 = v4.a("signal_cache_level", Integer.valueOf(z4.b.AD_FORMAT.ordinal()));
        TimeUnit timeUnit2 = TimeUnit.HOURS;
        I7 = v4.a("ad_expiration_ms", Long.valueOf(timeUnit2.toMillis(4L)));
        J7 = v4.a("native_ad_expiration_ms", Long.valueOf(timeUnit2.toMillis(4L)));
        K7 = v4.a("rena", bool2);
        L7 = v4.a("fullscreen_ad_displayed_timeout_ms", -1L);
        M7 = v4.a("freast_ms", -1L);
        N7 = v4.a("ad_hidden_timeout_ms", -1L);
        O7 = v4.a("schedule_ad_hidden_on_ad_dismiss", bool);
        P7 = v4.a("schedule_ad_hidden_on_single_task_app_relaunch", bool);
        Q7 = v4.a("ad_hidden_on_ad_dismiss_callback_delay_ms", Long.valueOf(timeUnit.toMillis(1L)));
        R7 = v4.a("proe", bool);
        S7 = v4.a("mute_state", 2);
        T7 = v4.a("saf", "");
        U7 = v4.a("saui", "");
        V7 = v4.a("malm_v2_e", bool);
        W7 = v4.a("mspc", 1);
        X7 = v4.a("mra", -1);
        Y7 = v4.a("mra_af", "INTER,REWARDED,BANNER,LEADER,MREC");
        Z7 = v4.a("fadiafase", bool2);
        f9108a8 = v4.a("fadwvcv", bool2);
        f9109b8 = v4.a("bfarud", bool);
        f9110c8 = v4.a("inacc", Boolean.valueOf(k7.b(Arrays.asList("com.textmeinc.textme", "com.textmeinc.freetone", "com.textmeinc.textme3", "com.jaumo", "com.jaumo.casual", "com.pinkapp", "com.jaumo.mature", "com.jaumo.prime", "com.jaumo.gay", "com.jaumo.lesbian"))));
        f9112d8 = v4.a("adiets_sec", Long.valueOf(TimeUnit.MINUTES.toSeconds(1L)));
        f9114e8 = v4.a("faomq", bool);
        f9116f8 = v4.a("rahcnct_sec", -1);
        f9118g8 = v4.a("paslbaf", JsonUtils.EMPTY_JSON);
        f9120h8 = v4.a("msbl", "{\"ad\":[\"ttdasi_ms\"]}");
        f9122i8 = v4.a("siarni", bool);
        f9124j8 = v4.a("spims", bool);
        f9126k8 = v4.a("uabta", bool);
        f9128l8 = v4.a("use_initialization_spec_during_init", bool);
        f9130m8 = v4.a("report_cimp_after_ierr", bool);
        f9132n8 = v4.a("fail_collection_for_empty_signal", bool);
        f9134o8 = v4.a("fetch_mediated_ad_gzip", bool2);
        f9136p8 = v4.a("max_postback_gzip", bool2);
        f9138q8 = v4.a("md_endpoint", "https://md.applovin.com/");
        f9140r8 = v4.a("md_backup_endpoint", "https://md.applvn.com/");
        f9142s8 = v4.a("md_v2", bool);
    }
}
