package com.bykv.vk.openvk.preload.geckox.model;

import android.os.Build;
import com.bykv.vk.openvk.preload.a.a.b;
import com.huawei.hms.support.feature.result.CommonConstant;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* loaded from: classes3.dex */
public class Common {
    @b(a = "ac")

    /* renamed from: ac  reason: collision with root package name */
    public String f11428ac;
    @b(a = TTVideoEngineInterface.PLAY_API_KEY_APPID)
    public long aid;
    @b(a = TTVideoEngineInterface.PLAY_API_KEY_APPNAME)
    public String appName;
    @b(a = "app_version")
    public String appVersion;
    @b(a = "device_id")
    public String deviceId;
    @b(a = "device_model")
    public String deviceModel;
    @b(a = TTVideoEngineInterface.PLAY_API_KEY_DEVICEPLATFORM)
    public String devicePlatform;
    @b(a = "os")

    /* renamed from: os  reason: collision with root package name */
    public int f11429os = 0;
    @b(a = TTVideoEngineInterface.PLAY_API_KEY_OSVERSION)
    public String osVersion;
    @b(a = TtmlNode.TAG_REGION)
    public String region;
    @b(a = "sdk_version")
    public String sdkVersion;
    @b(a = CommonConstant.KEY_UID)
    public String uid;

    public Common(long j10, String str, String str2, String str3, String str4) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Build.VERSION.SDK_INT);
        this.osVersion = sb2.toString();
        this.deviceModel = Build.MODEL;
        this.devicePlatform = "android";
        this.sdkVersion = "2.0.3-rc.9-pangle";
        this.aid = j10;
        this.appVersion = str;
        this.deviceId = str2;
        this.appName = str3;
        this.f11428ac = str4;
    }

    public Common(long j10, String str, String str2, String str3, String str4, String str5, String str6) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Build.VERSION.SDK_INT);
        this.osVersion = sb2.toString();
        this.deviceModel = Build.MODEL;
        this.devicePlatform = "android";
        this.sdkVersion = "2.0.3-rc.9-pangle";
        this.aid = j10;
        this.appVersion = str;
        this.deviceId = str2;
        this.appName = str3;
        this.f11428ac = str4;
        this.uid = str5;
        this.region = str6;
    }
}
