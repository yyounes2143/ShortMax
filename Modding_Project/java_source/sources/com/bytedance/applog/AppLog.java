package com.bytedance.applog;

import android.accounts.Account;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.applog.alink.IALinkListener;
import com.bytedance.applog.event.EventBuilder;
import com.bytedance.applog.event.IEventHandler;
import com.bytedance.applog.exposure.ViewExposureManager;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.applog.network.INetworkClient;
import com.bytedance.applog.oneid.IDBindCallback;
import com.bytedance.applog.profile.UserProfileCallback;
import com.bytedance.bdtracker.d;
import com.bytedance.bdtracker.f;
import com.bytedance.bdtracker.l0;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class AppLog {

    /* renamed from: a  reason: collision with root package name */
    public static final IAppLogInstance f11741a = newInstance();

    /* renamed from: b  reason: collision with root package name */
    public static volatile boolean f11742b = false;

    public static void activateALink(Uri uri) {
        f11741a.activateALink(uri);
    }

    public static void addDataObserver(IDataObserver iDataObserver) {
        f11741a.addDataObserver(iDataObserver);
    }

    public static void addEventObserver(IEventObserver iEventObserver) {
        f11741a.addEventObserver(iEventObserver);
    }

    public static String addNetCommonParams(Context context, String str, boolean z10, Level level) {
        return f11741a.addNetCommonParams(context, str, z10, level);
    }

    public static void addSessionHook(ISessionObserver iSessionObserver) {
        f11741a.addSessionHook(iSessionObserver);
    }

    public static void bind(Map<String, String> map, IDBindCallback iDBindCallback) {
        f11741a.bind(map, iDBindCallback);
    }

    public static void clearDb() {
        f11741a.clearDb();
    }

    public static void flush() {
        f11741a.flush();
    }

    @Nullable
    public static <T> T getAbConfig(String str, T t10) {
        return (T) f11741a.getAbConfig(str, t10);
    }

    @NonNull
    public static String getAbSdkVersion() {
        return f11741a.getAbSdkVersion();
    }

    @Nullable
    public static IActiveCustomParamsCallback getActiveCustomParams() {
        return f11741a.getActiveCustomParams();
    }

    @Deprecated
    public static String getAid() {
        return f11741a.getAid();
    }

    @NonNull
    public static JSONObject getAllAbTestConfigs() {
        return f11741a.getAllAbTestConfigs();
    }

    @Nullable
    public static f getAppContext() {
        return f11741a.getAppContext();
    }

    @NonNull
    public static String getAppId() {
        return f11741a.getAppId();
    }

    @NonNull
    public static String getClientUdid() {
        return f11741a.getClientUdid();
    }

    public static Context getContext() {
        return f11741a.getContext();
    }

    @NonNull
    public static String getDid() {
        return f11741a.getDid();
    }

    public static boolean getEncryptAndCompress() {
        return f11741a.getEncryptAndCompress();
    }

    @Nullable
    public static JSONObject getHeader() {
        return f11741a.getHeader();
    }

    public static IHeaderCustomTimelyCallback getHeaderCustomCallback() {
        return f11741a.getHeaderCustomCallback();
    }

    public static <T> T getHeaderValue(String str, T t10, Class<T> cls) {
        return (T) f11741a.getHeaderValue(str, t10, cls);
    }

    @NonNull
    public static String getIid() {
        return f11741a.getIid();
    }

    @Nullable
    public static InitConfig getInitConfig() {
        return f11741a.getInitConfig();
    }

    public static IAppLogInstance getInstance() {
        return f11741a;
    }

    @NonNull
    public static INetworkClient getNetClient() {
        return f11741a.getNetClient();
    }

    @NonNull
    public static String getOpenUdid() {
        return f11741a.getOpenUdid();
    }

    public static Map<String, String> getRequestHeader() {
        return f11741a.getRequestHeader();
    }

    @NonNull
    public static String getSdkVersion() {
        return f11741a.getSdkVersion();
    }

    @NonNull
    public static String getSessionId() {
        return f11741a.getSessionId();
    }

    @NonNull
    public static String getSsid() {
        return f11741a.getSsid();
    }

    public static void getSsidGroup(Map<String, String> map) {
        f11741a.getSsidGroup(map);
    }

    @NonNull
    public static String getUdid() {
        return f11741a.getUdid();
    }

    @Nullable
    public static UriConfig getUriRuntime() {
        return f11741a.getUriRuntime();
    }

    @NonNull
    public static String getUserID() {
        return f11741a.getUserID();
    }

    @NonNull
    public static String getUserUniqueID() {
        return f11741a.getUserUniqueID();
    }

    public static ViewExposureManager getViewExposureManager() {
        return f11741a.getViewExposureManager();
    }

    public static JSONObject getViewProperties(View view) {
        return f11741a.getViewProperties(view);
    }

    public static boolean hasStarted() {
        return f11741a.hasStarted();
    }

    public static void ignoreAutoTrackClick(View view) {
        f11741a.ignoreAutoTrackClick(view);
    }

    public static void ignoreAutoTrackClickByViewType(Class<?>... clsArr) {
        f11741a.ignoreAutoTrackClickByViewType(clsArr);
    }

    public static void ignoreAutoTrackPage(Class<?>... clsArr) {
        f11741a.ignoreAutoTrackPage(clsArr);
    }

    public static void init(@NonNull Context context, @NonNull InitConfig initConfig) {
        synchronized (AppLog.class) {
            try {
                if (l0.b.a(f11742b, "Default AppLog is initialized, please create another instance by `AppLog.newInstance()`")) {
                    return;
                }
                f11742b = true;
                if (TextUtils.isEmpty(initConfig.getSpName())) {
                    initConfig.setSpName("applog_stats");
                }
                f11741a.init(context, initConfig);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void initH5Bridge(@NonNull View view, @NonNull String str) {
        f11741a.initH5Bridge(view, str);
    }

    public static void initWebViewBridge(@NonNull View view, @NonNull String str) {
        f11741a.initWebViewBridge(view, str);
    }

    public static boolean isAutoTrackClickIgnored(View view) {
        return f11741a.isAutoTrackClickIgnored(view);
    }

    public static boolean isAutoTrackPageIgnored(Class<?> cls) {
        return f11741a.isAutoTrackPageIgnored(cls);
    }

    public static boolean isH5BridgeEnable() {
        return f11741a.isH5BridgeEnable();
    }

    public static boolean isH5CollectEnable() {
        return f11741a.isH5CollectEnable();
    }

    public static boolean isNewUser() {
        return f11741a.isNewUser();
    }

    public static boolean isPrivacyMode() {
        return f11741a.isPrivacyMode();
    }

    public static boolean manualActivate() {
        return f11741a.manualActivate();
    }

    public static EventBuilder newEvent(@NonNull String str) {
        return f11741a.newEvent(str);
    }

    public static IAppLogInstance newInstance() {
        return new d();
    }

    public static void onActivityPause() {
        f11741a.onActivityPause();
    }

    public static void onActivityResumed(@NonNull Activity activity, int i10) {
        f11741a.onActivityResumed(activity, i10);
    }

    public static void onEventV3(@NonNull String str) {
        f11741a.onEventV3(str);
    }

    public static void onMiscEvent(@NonNull String str, @Nullable JSONObject jSONObject) {
        f11741a.onMiscEvent(str, jSONObject);
    }

    public static void onPause(@NonNull Context context) {
        f11741a.onPause(context);
    }

    public static void onResume(@NonNull Context context) {
        f11741a.onResume(context);
    }

    public static void pauseDurationEvent(String str) {
        f11741a.pauseDurationEvent(str);
    }

    public static void profileAppend(JSONObject jSONObject) {
        f11741a.profileAppend(jSONObject);
    }

    public static void profileIncrement(JSONObject jSONObject) {
        f11741a.profileIncrement(jSONObject);
    }

    public static void profileSet(JSONObject jSONObject) {
        f11741a.profileSet(jSONObject);
    }

    public static void profileSetOnce(JSONObject jSONObject) {
        f11741a.profileSetOnce(jSONObject);
    }

    public static void profileUnset(String str) {
        f11741a.profileUnset(str);
    }

    public static void pullAbTestConfigs() {
        f11741a.pullAbTestConfigs();
    }

    public static void putCommonParams(Context context, Map<String, String> map, boolean z10, Level level) {
        f11741a.putCommonParams(context, map, z10, level);
    }

    public static void registerHeaderCustomCallback(IHeaderCustomTimelyCallback iHeaderCustomTimelyCallback) {
        f11741a.registerHeaderCustomCallback(iHeaderCustomTimelyCallback);
    }

    public static void removeAllDataObserver() {
        f11741a.removeAllDataObserver();
    }

    public static void removeDataObserver(IDataObserver iDataObserver) {
        f11741a.removeDataObserver(iDataObserver);
    }

    public static void removeEventObserver(IEventObserver iEventObserver) {
        f11741a.removeEventObserver(iEventObserver);
    }

    public static void removeHeaderInfo(String str) {
        f11741a.removeHeaderInfo(str);
    }

    public static void removeOaidObserver(@Nullable IOaidObserver iOaidObserver) {
        f11741a.removeOaidObserver(iOaidObserver);
    }

    public static void removeSessionHook(ISessionObserver iSessionObserver) {
        f11741a.removeSessionHook(iSessionObserver);
    }

    @Deprecated
    public static boolean reportPhoneDetailInfo() {
        return f11741a.reportPhoneDetailInfo();
    }

    public static void resumeDurationEvent(String str) {
        f11741a.resumeDurationEvent(str);
    }

    public static void setALinkListener(IALinkListener iALinkListener) {
        f11741a.setALinkListener(iALinkListener);
    }

    public static void setAccount(Account account) {
        f11741a.setAccount(account);
    }

    public static void setActiveCustomParams(IActiveCustomParamsCallback iActiveCustomParamsCallback) {
        f11741a.setActiveCustomParams(iActiveCustomParamsCallback);
    }

    public static void setAppContext(@NonNull f fVar) {
        f11741a.setAppContext(fVar);
    }

    public static void setAppLanguageAndRegion(@NonNull String str, @NonNull String str2) {
        f11741a.setAppLanguageAndRegion(str, str2);
    }

    public static void setAppTrack(JSONObject jSONObject) {
        f11741a.setAppTrack(jSONObject);
    }

    public static void setClipboardEnabled(boolean z10) {
        f11741a.setClipboardEnabled(z10);
    }

    public static void setDevToolsEnable(boolean z10) {
        LogUtils.setEnable(z10);
    }

    public static void setEncryptAndCompress(boolean z10) {
        f11741a.setEncryptAndCompress(z10);
    }

    public static void setEventFilterByClient(List<String> list, boolean z10) {
        f11741a.setEventFilterByClient(list, z10);
    }

    public static void setEventHandler(IEventHandler iEventHandler) {
        f11741a.setEventHandler(iEventHandler);
    }

    public static void setExternalAbVersion(@NonNull String str) {
        f11741a.setExternalAbVersion(str);
    }

    public static void setExtraParams(IExtraParams iExtraParams) {
        f11741a.setExtraParams(iExtraParams);
    }

    @Deprecated
    public static void setForbidReportPhoneDetailInfo(boolean z10) {
        f11741a.setForbidReportPhoneDetailInfo(z10);
    }

    public static void setGPSLocation(float f10, float f11, String str) {
        f11741a.setGPSLocation(f10, f11, str);
    }

    public static void setGoogleAid(@NonNull String str) {
        f11741a.setGoogleAid(str);
    }

    public static void setHeaderInfo(String str, Object obj) {
        f11741a.setHeaderInfo(str, obj);
    }

    @AnyThread
    public static void setOaidObserver(@Nullable IOaidObserver iOaidObserver) {
        f11741a.setOaidObserver(iOaidObserver);
    }

    public static void setPrivacyMode(boolean z10) {
        f11741a.setPrivacyMode(z10);
    }

    public static void setPullAbTestConfigsThrottleMills(Long l10) {
        f11741a.setPullAbTestConfigsThrottleMills(l10);
    }

    public static void setRangersEventVerifyEnable(boolean z10, String str) {
        f11741a.setRangersEventVerifyEnable(z10, str);
    }

    public static void setTouchPoint(@NonNull String str) {
        f11741a.setTouchPoint(str);
    }

    public static void setTracerData(JSONObject jSONObject) {
        f11741a.setTracerData(jSONObject);
    }

    public static void setUriRuntime(UriConfig uriConfig) {
        f11741a.setUriRuntime(uriConfig);
    }

    public static void setUserAgent(@NonNull String str) {
        f11741a.setUserAgent(str);
    }

    public static void setUserID(long j10) {
        f11741a.setUserID(j10);
    }

    public static void setUserUniqueID(@Nullable String str) {
        f11741a.setUserUniqueID(str);
    }

    public static void setViewId(Dialog dialog, String str) {
        f11741a.setViewId(dialog, str);
    }

    public static void setViewProperties(View view, JSONObject jSONObject) {
        f11741a.setViewProperties(view, jSONObject);
    }

    public static void start() {
        f11741a.start();
    }

    public static void startDurationEvent(String str) {
        f11741a.startDurationEvent(str);
    }

    public static void startSimulator(@NonNull String str) {
        f11741a.startSimulator(str);
    }

    public static void stopDurationEvent(String str, JSONObject jSONObject) {
        f11741a.stopDurationEvent(str, jSONObject);
    }

    public static void trackClick(View view) {
        f11741a.trackClick(view);
    }

    public static void trackPage(Activity activity) {
        f11741a.trackPage(activity);
    }

    public static void userProfileSetOnce(JSONObject jSONObject, UserProfileCallback userProfileCallback) {
        f11741a.userProfileSetOnce(jSONObject, userProfileCallback);
    }

    public static void userProfileSync(JSONObject jSONObject, UserProfileCallback userProfileCallback) {
        f11741a.userProfileSync(jSONObject, userProfileCallback);
    }

    public static void addEventObserver(IEventObserver iEventObserver, IPresetEventObserver iPresetEventObserver) {
        f11741a.addEventObserver(iEventObserver, iPresetEventObserver);
    }

    public static void init(@NonNull Context context, @NonNull InitConfig initConfig, Activity activity) {
        synchronized (AppLog.class) {
            try {
                if (l0.b.a(f11742b, "Default AppLog is initialized, please create another instance by `new AppLogInstance()`")) {
                    return;
                }
                f11742b = true;
                if (TextUtils.isEmpty(initConfig.getSpName())) {
                    initConfig.setSpName("applog_stats");
                }
                f11741a.init(context, initConfig, activity);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void onEventV3(@NonNull String str, @Nullable Bundle bundle) {
        f11741a.onEventV3(str, bundle);
    }

    public static void pullAbTestConfigs(int i10, IPullAbTestConfigCallback iPullAbTestConfigCallback) {
        f11741a.pullAbTestConfigs(i10, iPullAbTestConfigCallback);
    }

    public static void removeEventObserver(IEventObserver iEventObserver, IPresetEventObserver iPresetEventObserver) {
        f11741a.removeEventObserver(iEventObserver, iPresetEventObserver);
    }

    public static void setHeaderInfo(HashMap<String, Object> hashMap) {
        f11741a.setHeaderInfo(hashMap);
    }

    public static void setUserUniqueID(@Nullable String str, @Nullable String str2) {
        f11741a.setUserUniqueID(str, str2);
    }

    public static void setViewId(View view, String str) {
        f11741a.setViewId(view, str);
    }

    public static void trackClick(View view, JSONObject jSONObject) {
        f11741a.trackClick(view, jSONObject);
    }

    public static void trackPage(Activity activity, JSONObject jSONObject) {
        f11741a.trackPage(activity, jSONObject);
    }

    public static void onEventV3(@NonNull String str, @Nullable Bundle bundle, int i10) {
        f11741a.onEventV3(str, bundle, i10);
    }

    public static void setViewId(Object obj, String str) {
        f11741a.setViewId(obj, str);
    }

    public static void trackPage(Object obj) {
        f11741a.trackPage(obj);
    }

    public static void onEventV3(@NonNull String str, @Nullable JSONObject jSONObject) {
        f11741a.onEventV3(str, jSONObject);
    }

    public static void trackPage(Object obj, JSONObject jSONObject) {
        f11741a.trackPage(obj, jSONObject);
    }

    public static void onEventV3(@NonNull String str, @Nullable JSONObject jSONObject, int i10) {
        f11741a.onEventV3(str, jSONObject, i10);
    }
}
