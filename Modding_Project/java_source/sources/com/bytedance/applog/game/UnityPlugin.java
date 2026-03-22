package com.bytedance.applog.game;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.ILogger;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.UriConfig;
import com.bytedance.applog.log.LoggerImpl;
import com.unity3d.services.core.properties.MadeWithUnityDetector;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class UnityPlugin {

    /* renamed from: a  reason: collision with root package name */
    public Activity f11836a;

    /* loaded from: classes3.dex */
    public class a implements ILogger {
        public a(UnityPlugin unityPlugin) {
        }

        @Override // com.bytedance.applog.ILogger
        public void log(@NonNull String str, @Nullable Throwable th2) {
            Log.d("AppLog", str, th2);
        }
    }

    public void flush() {
        AppLog.flush();
    }

    public String getAbConfig(String str, String str2) {
        return (String) AppLog.getAbConfig(str, str2);
    }

    public String getAbSdkVersion() {
        return AppLog.getAbSdkVersion();
    }

    public String getAid() {
        return AppLog.getAid();
    }

    public String getAllAbTestConfigs() {
        return AppLog.getAllAbTestConfigs().toString();
    }

    public String getDeviceId() {
        return AppLog.getDid();
    }

    public String getIid() {
        return AppLog.getIid();
    }

    public String getSsid() {
        return AppLog.getSsid();
    }

    public String getUserUniqueID() {
        return AppLog.getUserUniqueID();
    }

    public void init(String str, String str2, boolean z10, boolean z11, boolean z12, String str3) {
        InitConfig initConfig = new InitConfig(str, str2);
        initConfig.setAbEnable(z10);
        AppLog.setEncryptAndCompress(z11);
        if (z12) {
            initConfig.setLogger(new a(this));
        }
        if (!TextUtils.isEmpty(str3)) {
            initConfig.setUriConfig(UriConfig.createByDomain(str3, null));
        }
        if (this.f11836a == null) {
            try {
                Class<?> cls = Class.forName(MadeWithUnityDetector.UNITY_PLAYER_CLASS_NAME);
                this.f11836a = (Activity) cls.getDeclaredField("currentActivity").get(cls);
            } catch (Exception unused) {
            }
        }
        AppLog.init(this.f11836a, initConfig);
    }

    public void onEventV3(String str, String str2) {
        try {
            AppLog.onEventV3(str, new JSONObject(str2));
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("UnityPlugin"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public void profileAppend(String str) {
        try {
            AppLog.profileAppend(new JSONObject(str));
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("UnityPlugin"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public void profileIncrement(String str) {
        try {
            AppLog.profileIncrement(new JSONObject(str));
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("UnityPlugin"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public void profileSet(String str) {
        try {
            AppLog.profileSet(new JSONObject(str));
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("UnityPlugin"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public void profileSetOnce(String str) {
        try {
            AppLog.profileSetOnce(new JSONObject(str));
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("UnityPlugin"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public void profileUnset(String str) {
        AppLog.profileUnset(str);
    }

    public void removeCustomHeaderInfo(String str) {
        AppLog.removeHeaderInfo(str);
    }

    public void setCustomHeaderInfo(String str, String str2) {
        AppLog.setHeaderInfo(str, str2);
    }

    public void setExternalAbVersion(String str) {
        AppLog.setExternalAbVersion(str);
    }

    public void setUserUniqueID(String str) {
        AppLog.setUserUniqueID(str);
    }
}
