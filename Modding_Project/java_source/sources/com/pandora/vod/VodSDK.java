package com.pandora.vod;

import android.content.Context;
import android.text.TextUtils;
import b7.q;
import com.bytedance.vcloud.cacheModule.utils.CmLog;
import com.bytedance.vodsetting.SettingsListener;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.pandora.ttlicense2.LicenseManager;
import com.ss.mediakit.medialoader.AVMDLLog;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.EngineAdapter;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import lc.c;
/* loaded from: classes6.dex */
public class VodSDK {
    private static final String TAG = "VodSDK";

    /* loaded from: classes6.dex */
    static class a implements EngineAdapter.DeviceIdListener {
        a() {
        }

        @Override // com.ss.ttvideoengine.EngineAdapter.DeviceIdListener
        public void onDeviceIdUpdate(String str) {
            com.pandora.vod.a.b();
        }
    }

    /* loaded from: classes6.dex */
    static class b implements SettingsListener {
        b() {
        }

        @Override // com.bytedance.vodsetting.SettingsListener
        public void onNotify(String str, int i10) {
            if (TextUtils.equals("vod", str)) {
                com.pandora.vod.a.b();
            }
        }
    }

    public static void init(lc.a aVar) {
        EngineAdapter.setsDeviceIdListener(new a());
        HashMap hashMap = new HashMap();
        hashMap.put("appname", aVar.c());
        hashMap.put("appid", aVar.b());
        hashMap.put("appchannel", aVar.a());
        hashMap.put(TtmlNode.TAG_REGION, aVar.d());
        hashMap.put("appversion", aVar.e());
        TTVideoEngine.setAppInfo(aVar.f(), hashMap);
        initMDL(aVar);
        com.pandora.vod.a.b();
    }

    public static void initLog(Context context, String str) {
        com.pandora.vod.a.d(context.getApplicationContext());
        SettingsHelper.helper().addListener(new b());
        com.pandora.vod.a.b();
    }

    private static void initMDL(lc.a aVar) {
        Context f10 = aVar.f();
        c j10 = aVar.j();
        int c10 = j10.c();
        String a10 = j10.a();
        int b10 = j10.b();
        TTVideoEngine.setStringValue(0, a10);
        TTVideoEngine.setIntValue(1, c10);
        TTVideoEngine.setIntValue(DataLoaderHelper.DATALOADER_KEY_INT_ENABLE_HLS, 1);
        TTVideoEngine.setIntValue(5, b10);
        try {
            TTVideoEngine.startDataLoader(f10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void openAllVodLog() {
        mc.b.e(1, 1);
        TTVideoEngineLog.turnOn(1, 1);
        TTVideoEngine.setPlayerOutputLog(1);
        AVMDLLog.turnOn(1, 1);
        try {
            LicenseManager.turnOnLogcat(true);
        } catch (Exception e10) {
            TTVideoEngineLog.d(TAG, "open LicenseLog e:" + e10);
        }
        try {
            CmLog.turnLogLevel(CmLog.LogLevel.V, true);
        } catch (Exception e11) {
            TTVideoEngineLog.d(TAG, "open CacheModule e:" + e11);
        }
        try {
            q.setLogcatOutPut(true);
        } catch (Throwable th2) {
            TTVideoEngineLog.d(TAG, "open exo log e:" + th2);
        }
    }

    public static void updateDeviceID(String str) {
        EngineAdapter.updateDeviceId();
        com.pandora.vod.a.b();
    }
}
