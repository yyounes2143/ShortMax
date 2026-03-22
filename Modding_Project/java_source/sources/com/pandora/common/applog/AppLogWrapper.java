package com.pandora.common.applog;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.IAppLogInstance;
import com.bytedance.applog.IDataObserver;
import com.bytedance.applog.ILogger;
import com.bytedance.applog.InitConfig;
import com.bytedance.vodsetting.Module;
import com.pandora.vod.VodSDK;
import com.ss.ttvideoengine.AppInfo;
import java.util.ArrayList;
import java.util.HashMap;
import lc.a;
import mc.b;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class AppLogWrapper {
    private static final String BYTE_PLUS_LIVE_APPID = "500808";
    private static final String SECOND_APP_ID_KEY = "second_appid";
    private static final String SECOND_APP_NAME_KEY = "second_appname";
    private static final String SECOND_APP_PREFIX = "second_app_";
    private static final String SECOND_APP_PRODUCT_TYPE_KEY = "product_type";
    private static final String SECOND_APP_SPECIAL_KEY = "params_for_special";
    private static final String SECOND_APP_VALUE = "second_app";
    private static final String TAG = "AppLogWrapper";
    private static final String TTSDK_TOB_CUSTOM = "ttsdk_tob_custom";

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f36666a = 0;
    private static Object iDataObserver;
    private static IAppLogInstance mBytePlusAppLogInstance;
    private static IAppLogInstance sAppLogInstance;
    private static final HashMap<String, Object> mLogObject = new HashMap<>();
    private static Object mCustomLogLock = new Object();
    private static JSONObject mCustomLogJsonObject = new JSONObject();

    private static JSONObject addCustomLog(JSONObject jSONObject) {
        JSONObject jSONObject2 = mCustomLogJsonObject;
        if (jSONObject2 != null && jSONObject2.length() > 0 && jSONObject != null) {
            try {
                jSONObject.put(TTSDK_TOB_CUSTOM, mCustomLogJsonObject.toString());
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return jSONObject;
    }

    private static void addEventCache(String str, JSONObject jSONObject) {
        HashMap<String, Object> hashMap = mLogObject;
        synchronized (hashMap) {
            try {
                ArrayList arrayList = (ArrayList) hashMap.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(jSONObject);
                hashMap.put(str, arrayList);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void addVersionInfo() {
        IAppLogInstance iAppLogInstance = sAppLogInstance;
        if (iAppLogInstance != null) {
            iAppLogInstance.setHeaderInfo("ttsdk_version", "1.42.3.107");
            a g10 = kc.a.g();
            if (g10 != null && TextUtils.equals(g10.d(), AppInfo.APP_REGION_MYA)) {
                sAppLogInstance.setHeaderInfo("log_from_region", "volc-overseas");
            }
        }
        IAppLogInstance iAppLogInstance2 = mBytePlusAppLogInstance;
        if (iAppLogInstance2 != null) {
            iAppLogInstance2.setHeaderInfo("ttsdk_version", "1.42.3.107");
        }
        b.a(TAG, "ttsdk_version 1.42.3.107");
    }

    public static IAppLogInstance createAppLogInstance(Context context, String str, String str2, String str3, boolean z10, boolean z11) {
        InitConfig initConfig = new InitConfig(str, str3);
        initConfig.setUriConfig(AppLogParams.getUriConfig(str2));
        initConfig.setAutoStart(z10);
        initConfig.setMacEnable(false);
        initConfig.setGaidEnabled(false);
        if (z11) {
            b.a(TAG, "init security deviceId");
            initConfig.setImeiEnable(false);
            initConfig.setAndroidIdEnabled(false);
            initConfig.setOaidEnabled(false);
            initConfig.setIccIdEnabled(false);
            initConfig.setSerialNumberEnable(false);
        }
        initConfig.setLogger(new ILogger() { // from class: com.pandora.common.applog.AppLogWrapper.2
            @Override // com.bytedance.applog.ILogger
            public void log(String str4, Throwable th2) {
                b.a(AppLogWrapper.TAG, "AppLogWrapper,AppLog------->:" + str4);
                if (th2 != null) {
                    b.b(th2);
                }
            }
        });
        IAppLogInstance newInstance = AppLog.newInstance();
        newInstance.addDataObserver((IDataObserver) dataObserverInstance());
        if (z11) {
            newInstance.setClipboardEnabled(false);
        }
        newInstance.init(context, initConfig);
        if (z11) {
            newInstance.setForbidReportPhoneDetailInfo(true);
        }
        return newInstance;
    }

    private static synchronized Object dataObserverInstance() {
        Object obj;
        synchronized (AppLogWrapper.class) {
            try {
                if (iDataObserver == null) {
                    iDataObserver = new IDataObserver() { // from class: com.pandora.common.applog.AppLogWrapper.1
                        @Override // com.bytedance.applog.IDataObserver
                        public void onIdLoaded(String str, String str2, String str3) {
                            b.a(AppLogWrapper.TAG, "onIdLoaded");
                            AppLogWrapper.updateDeviceID(AppLogWrapper.getDid());
                        }

                        @Override // com.bytedance.applog.IDataObserver
                        public void onRemoteIdGet(boolean z10, String str, String str2, String str3, String str4, String str5, String str6) {
                            b.a(AppLogWrapper.TAG, "onRemoteIdGet");
                            AppLogWrapper.updateDeviceID(AppLogWrapper.getDid());
                        }

                        @Override // com.bytedance.applog.IDataObserver
                        public void onAbVidsChange(String str, String str2) {
                        }

                        @Override // com.bytedance.applog.IDataObserver
                        public void onRemoteAbConfigGet(boolean z10, JSONObject jSONObject) {
                        }

                        @Override // com.bytedance.applog.IDataObserver
                        public void onRemoteConfigGet(boolean z10, JSONObject jSONObject) {
                        }
                    };
                }
                obj = iDataObserver;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return obj;
    }

    public static IAppLogInstance getAppLogInstance() {
        return sAppLogInstance;
    }

    public static String getDid() {
        IAppLogInstance iAppLogInstance = sAppLogInstance;
        if (iAppLogInstance == null) {
            return "";
        }
        return iAppLogInstance.getDid();
    }

    public static String getUserUniqueID() {
        IAppLogInstance iAppLogInstance = sAppLogInstance;
        if (iAppLogInstance == null) {
            return "";
        }
        return iAppLogInstance.getUserUniqueID();
    }

    public static void init(Context context, String str, String str2, String str3, boolean z10, boolean z11) {
        if (sAppLogInstance != null) {
            b.a(TAG, "already init");
            return;
        }
        sAppLogInstance = createAppLogInstance(context, str, str2, str3, z11, z10);
        addVersionInfo();
        uploadCacheLog();
    }

    public static boolean onBDUploaderEventV3(String str, JSONObject jSONObject) {
        if (sAppLogInstance == null) {
            b.c(TAG, "onBDUploaderEventV3 but not init");
            return false;
        }
        b.a(TAG, "onBDUploaderEventV3 " + str + " " + jSONObject);
        sAppLogInstance.onEventV3(str, jSONObject);
        return true;
    }

    public static boolean onEventV3(String str, JSONObject jSONObject) {
        if (sAppLogInstance == null) {
            addEventCache(str, jSONObject);
            b.c(TAG, "onEventV3 but not init");
            return false;
        }
        b.a(Module.UPLOAD, "onEventV3 " + str + " " + jSONObject);
        onInternalEventV3(str, jSONObject, "159973", "159973", str);
        return true;
    }

    public static void onInternalEventV3(String str, JSONObject jSONObject, String str2, String str3, String str4) {
        JSONObject addCustomLog;
        if (sAppLogInstance == null) {
            return;
        }
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            b.c(TAG, "both second appid and second app name is empty");
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str5 = SECOND_APP_PREFIX + str;
        synchronized (mCustomLogLock) {
            addCustomLog = addCustomLog(jSONObject);
        }
        try {
            addCustomLog.put(SECOND_APP_SPECIAL_KEY, SECOND_APP_VALUE);
            addCustomLog.put(SECOND_APP_ID_KEY, str2);
            addCustomLog.put(SECOND_APP_NAME_KEY, str3);
            addCustomLog.put(SECOND_APP_PRODUCT_TYPE_KEY, str4);
        } catch (JSONException e10) {
            e10.printStackTrace();
            b.c(TAG, e10.toString());
        }
        sAppLogInstance.onEventV3(str5, addCustomLog);
        b.a(TAG, "onEventV3：" + str5 + "，" + addCustomLog);
    }

    public static void setAppLogCustomData(JSONObject jSONObject) {
        synchronized (mCustomLogLock) {
            mCustomLogJsonObject = jSONObject;
        }
    }

    public static void setAppLogInstance(IAppLogInstance iAppLogInstance) {
        b.a(TAG, "setAppLogInstance " + iAppLogInstance);
        sAppLogInstance = iAppLogInstance;
        if (iAppLogInstance != null && TextUtils.isEmpty(iAppLogInstance.getAppId())) {
            sAppLogInstance.addDataObserver((IDataObserver) dataObserverInstance());
        }
        addVersionInfo();
        uploadCacheLog();
    }

    public static void start() {
        IAppLogInstance iAppLogInstance = sAppLogInstance;
        if (iAppLogInstance == null) {
            b.c(TAG, "sAppLogInstance is null, call init first!");
        } else {
            iAppLogInstance.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateDeviceID(String str) {
        b.a(TAG, "updateDeviceID:" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            VodSDK.class.getMethod("updateDeviceID", String.class).invoke(VodSDK.class, str);
        } catch (Exception e10) {
            b.a(TAG, "updateDeviceID " + e10);
            e10.printStackTrace();
        }
    }

    public static boolean upload(String str, JSONObject jSONObject) {
        IAppLogInstance iAppLogInstance = sAppLogInstance;
        if (iAppLogInstance == null) {
            addEventCache(str, jSONObject);
            b.c(TAG, "upload but not init");
            return false;
        }
        iAppLogInstance.onMiscEvent(str, jSONObject);
        return true;
    }

    private static void uploadCacheLog() {
        if (sAppLogInstance == null) {
            return;
        }
        HashMap<String, Object> hashMap = mLogObject;
        synchronized (hashMap) {
            try {
                for (String str : hashMap.keySet()) {
                    ArrayList arrayList = (ArrayList) mLogObject.get(str);
                    for (int i10 = 0; i10 < arrayList.size(); i10++) {
                        upload(str, (JSONObject) arrayList.get(i10));
                    }
                }
                mLogObject.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
