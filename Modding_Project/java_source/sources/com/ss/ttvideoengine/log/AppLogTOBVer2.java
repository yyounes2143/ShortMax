package com.ss.ttvideoengine.log;

import com.bytedance.applog.AppLog;
import com.bytedance.applog.IAppLogInstance;
import com.bytedance.vodsetting.Module;
import com.pandora.common.applog.AppLogWrapper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.reflect.Method;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class AppLogTOBVer2 implements IVideoEventUploader {
    public static final String APPLOGWRAPPE_CLASS_NAME = "com.pandora.common.applog.AppLogWrapper";
    public static final String APPLOG_CLASS_NAME = "com.bytedance.applog.AppLog";
    private static final String TAG = "AppLogTOBVer2";
    private static Class<?> sAppLogClass;
    private static Class<?> sAppLogWrapperClass;
    private static AppLogTOBVer2 sInstance;

    private AppLogTOBVer2() {
    }

    private static Class<?> getAppLogClass() throws ClassNotFoundException {
        Class<?> cls;
        synchronized (AppLogTOBVer2.class) {
            try {
                if (sAppLogClass == null) {
                    IAppLogInstance iAppLogInstance = AppLog.f11741a;
                    sAppLogClass = AppLog.class;
                }
                cls = sAppLogClass;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cls;
    }

    private static Class<?> getAppLogWrapperClass() throws ClassNotFoundException {
        Class<?> cls;
        synchronized (AppLogTOBVer2.class) {
            try {
                if (sAppLogWrapperClass == null) {
                    int i10 = AppLogWrapper.f36666a;
                    sAppLogWrapperClass = AppLogWrapper.class;
                }
                cls = sAppLogWrapperClass;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cls;
    }

    public static String getDeviceID() {
        try {
            Class<?> appLogWrapperClass = getAppLogWrapperClass();
            Method declaredMethod = appLogWrapperClass.getDeclaredMethod("getDid", new Class[0]);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(appLogWrapperClass, new Object[0]);
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static synchronized AppLogTOBVer2 instance() {
        AppLogTOBVer2 appLogTOBVer2;
        synchronized (AppLogTOBVer2.class) {
            try {
                if (sInstance == null) {
                    sInstance = new AppLogTOBVer2();
                }
                appLogTOBVer2 = sInstance;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return appLogTOBVer2;
    }

    public static boolean isAppLogVer2Exist() {
        try {
            if (getAppLogClass() == null) {
                return false;
            }
            if (getAppLogWrapperClass() == null) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventUploader
    public void onUplaod(String str, JSONObject jSONObject) {
        try {
            Class<?> appLogWrapperClass = getAppLogWrapperClass();
            Method declaredMethod = appLogWrapperClass.getDeclaredMethod(Module.UPLOAD, String.class, JSONObject.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(appLogWrapperClass, str, jSONObject);
            TTVideoEngineLog.d(TAG, "onUpload " + str + " " + jSONObject);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
