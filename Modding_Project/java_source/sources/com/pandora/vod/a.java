package com.pandora.vod;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.vcloud.cacheModule.utils.CmLog;
import com.bytertc.volcbaselog.VolcBaseLogConfig;
import com.bytertc.volcbaselog.VolcBaseLogNative;
import com.pandora.common.applog.AppLogWrapper;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineLogListener;
import com.unity3d.services.UnityAdsConstants;
import java.io.File;
import org.json.JSONObject;
/* compiled from: VodALog.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Class<?> f36678a = null;

    /* renamed from: b  reason: collision with root package name */
    private static long f36679b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f36680c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f36681d;

    /* renamed from: e  reason: collision with root package name */
    private static int f36682e;

    /* renamed from: f  reason: collision with root package name */
    private static int f36683f;

    /* renamed from: g  reason: collision with root package name */
    private static int f36684g;

    /* renamed from: h  reason: collision with root package name */
    private static int f36685h;

    /* renamed from: i  reason: collision with root package name */
    private static String f36686i;

    /* renamed from: j  reason: collision with root package name */
    private static Context f36687j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VodALog.java */
    /* renamed from: com.pandora.vod.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0601a implements TTVideoEngineLogListener {
        C0601a() {
        }

        @Override // com.ss.ttvideoengine.utils.TTVideoEngineLogListener
        public void consoleLog(String str) {
            VolcBaseLogNative.writeLogContent(a.f36679b, 1, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VodALog.java */
    /* loaded from: classes6.dex */
    public static class b implements CmLog.AlogCallback {
        b() {
        }

        @Override // com.bytedance.vcloud.cacheModule.utils.CmLog.AlogCallback
        public void onLogCallback(CmLog.LogLevel logLevel, String str, String str2) {
            String str3 = "cacheModule: tag = " + str + ";  logLevel = " + logLevel + ";  " + str2;
            if (TTVideoEngineLog.d()) {
                TTVideoEngineLog.d(str, str2);
            }
            VolcBaseLogNative.writeLogContent(a.f36679b, 1, str3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void b() {
        synchronized (a.class) {
            Context context = f36687j;
            if (!c()) {
                mc.b.a("VodALog", "init alog not exist");
            } else if (context == null) {
            } else {
                if (f36679b != -1) {
                    return;
                }
                String did = AppLogWrapper.getDid();
                mc.b.a("VodALog", "init deviceID:" + did);
                if (TextUtils.isEmpty(did)) {
                    return;
                }
                e();
                if (!f36680c) {
                    mc.b.a("VodALog", "init settings disable alog");
                    return;
                }
                VolcBaseLogConfig volcBaseLogConfig = new VolcBaseLogConfig();
                volcBaseLogConfig.logPath = context.getFilesDir().getAbsolutePath() + File.separator + "VolcVodLog";
                volcBaseLogConfig.enableStdout = false;
                volcBaseLogConfig.logLevel = 1;
                volcBaseLogConfig.enableLogFile = f36680c;
                volcBaseLogConfig.enableThreadLoop = f36681d;
                volcBaseLogConfig.query_url = f36686i;
                volcBaseLogConfig.interval = f36682e;
                volcBaseLogConfig.maxLogSize = f36683f;
                volcBaseLogConfig.singleLogSize = f36684g;
                volcBaseLogConfig.logExpireTime = f36685h;
                f36679b = VolcBaseLogNative.init(volcBaseLogConfig, 20, did);
                mc.b.a("VodALog", "init handler:" + f36679b + ", deviceID:" + did);
                TTVideoEngineLog.setListener(new C0601a());
                CmLog.setAlogCallback(new b());
            }
        }
    }

    private static synchronized boolean c() {
        synchronized (a.class) {
            if (f36678a != null) {
                return true;
            }
            try {
                int i10 = VolcBaseLogNative.f13437a;
                f36678a = VolcBaseLogNative.class;
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(Context context) {
        if (context == null) {
            return;
        }
        f36687j = context;
    }

    private static void e() {
        boolean z10;
        JSONObject vodJsonObject = SettingsHelper.helper().getVodJsonObject("alog_config");
        if (vodJsonObject == null) {
            return;
        }
        boolean z11 = false;
        if (vodJsonObject.optInt("enable_log_file", 0) > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        f36680c = z10;
        if (vodJsonObject.optInt("enable_query", 0) > 0) {
            z11 = true;
        }
        f36681d = z11;
        f36682e = vodJsonObject.optInt("query_interval", UnityAdsConstants.RequestPolicy.RETRY_MAX_DURATION);
        f36683f = vodJsonObject.optInt("max_log_size", 100);
        f36684g = vodJsonObject.optInt("single_log_file_size", 2);
        f36685h = vodJsonObject.optInt("log_expire_time", 604800);
        f36686i = vodJsonObject.optString("query_url", "");
    }
}
