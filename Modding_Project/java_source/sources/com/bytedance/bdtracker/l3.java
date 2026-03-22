package com.bytedance.bdtracker;

import com.appsflyer.AppsFlyerProperties;
import com.bytedance.applog.profile.UserProfileCallback;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class l3 {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f12198a = {TTVideoEngineInterface.PLAY_API_KEY_APPID, TtmlNode.TAG_REGION, "os", "package", "app_version", "sdk_version", TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, "device_model", "resolution", MediaFormat.KEY_LANGUAGE, "timezone", "access", "display_name", AppsFlyerProperties.CHANNEL, "carrier", "app_language", "app_region", "tz_name", "tz_offset", "install_id", "openudid", "mcc_mnc", "rom", "manifest_version_code", "device_manufacturer", "clientudid", "sig_hash", "display_density", "os_api", TTVideoEngineInterface.PLAY_API_KEY_UPDATEVERSIONCODE, "density_dpi", TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, "sim_serial_number", "release_build", "udid", "cpu_abi", "google_aid"};

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f12199b = {"setOnce", "synchronize"};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f12200c = {-1, -1};

    /* renamed from: d  reason: collision with root package name */
    public static final long[] f12201d = {-1, -1};

    /* loaded from: classes3.dex */
    public static class a implements UserProfileCallback {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ int f12202a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ JSONObject f12203b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ UserProfileCallback f12204c;

        public a(int i10, JSONObject jSONObject, UserProfileCallback userProfileCallback) {
            this.f12202a = i10;
            this.f12203b = jSONObject;
            this.f12204c = userProfileCallback;
        }

        @Override // com.bytedance.applog.profile.UserProfileCallback
        public void onFail(int i10) {
            this.f12204c.onFail(i10);
        }

        @Override // com.bytedance.applog.profile.UserProfileCallback
        public void onSuccess() {
            l3.f12200c[this.f12202a] = this.f12203b.toString().hashCode();
            l3.f12201d[this.f12202a] = System.currentTimeMillis();
            this.f12204c.onSuccess();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0117 A[Catch: JSONException -> 0x00fb, TryCatch #0 {JSONException -> 0x00fb, blocks: (B:41:0x0106, B:43:0x0110, B:45:0x0117, B:46:0x012c, B:36:0x00f0, B:40:0x0101), top: B:62:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0156  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.bytedance.bdtracker.e0 r25, int r26, org.json.JSONObject r27, com.bytedance.applog.profile.UserProfileCallback r28, android.os.Handler r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.l3.a(com.bytedance.bdtracker.e0, int, org.json.JSONObject, com.bytedance.applog.profile.UserProfileCallback, android.os.Handler, boolean):void");
    }
}
