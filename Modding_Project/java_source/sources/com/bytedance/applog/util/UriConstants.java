package com.bytedance.applog.util;

import com.bytedance.applog.UriConfig;
/* loaded from: classes3.dex */
public class UriConstants {
    public static final int AMERICA = 2;
    public static final int REGION_DEFAULT = 1;
    public static final int SINGAPORE = 1;
    public static final int SINGAPORE_ALI = 3;

    /* renamed from: a  reason: collision with root package name */
    public static final UriConfig f11844a = new UriConfig.Builder().setRegisterUri("https://toblog.tobsnssdk.com/service/2/device_register/").setActiveUri("https://toblog.tobsnssdk.com/service/2/app_alert_check/").setSendUris(new String[]{"https://toblog.tobsnssdk.com/service/2/app_log/", "https://tobapplog.tobsnssdk.com/service/2/app_log/"}).setProfileUri("https://toblog.tobsnssdk.com/service/2/profile/").setSettingUri("https://toblog.tobsnssdk.com/service/2/log_settings/").setAbUri("https://toblog.tobsnssdk.com/service/2/abtest_config/").setALinkAttributionUri("https://toblog-alink.tobsnssdk.com/service/2/attribution_data").setALinkQueryUri("https://toblog-alink.tobsnssdk.com/service/2/alink_data").build();

    /* renamed from: b  reason: collision with root package name */
    public static final UriConfig f11845b = new UriConfig.Builder().setRegisterUri("https://toblog.itobsnssdk.com/service/2/device_register/").setActiveUri("https://toblog.itobsnssdk.com/service/2/app_alert_check/").setSendUris(new String[]{"https://toblog.itobsnssdk.com/service/2/app_log/", "https://tobapplog.itobsnssdk.com/service/2/app_log/"}).setProfileUri("https://toblog.itobsnssdk.com/service/2/profile/").setSettingUri("https://toblog.itobsnssdk.com/service/2/log_settings/").setAbUri("https://toblog.itobsnssdk.com/service/2/abtest_config/").setALinkAttributionUri("https://toblog-alink.itobsnssdk.com/service/2/attribution_data").setALinkQueryUri("https://toblog-alink.itobsnssdk.com/service/2/alink_data").build();

    public static final UriConfig createUriConfig(int i10) {
        if (1 == i10) {
            return f11844a;
        }
        if (2 == i10) {
            return f11845b;
        }
        return f11844a;
    }
}
