package com.bytedance.applog;

import android.accounts.Account;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.applog.alink.IALinkListener;
import com.bytedance.applog.event.EventBuilder;
import com.bytedance.applog.event.IEventHandler;
import com.bytedance.applog.exposure.ViewExposureManager;
import com.bytedance.applog.network.INetworkClient;
import com.bytedance.applog.oneid.IDBindCallback;
import com.bytedance.applog.profile.UserProfileCallback;
import com.bytedance.bdtracker.a1;
import com.bytedance.bdtracker.f;
import com.bytedance.bdtracker.h2;
import com.bytedance.bdtracker.u3;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public interface IAppLogInstance {
    void activateALink(Uri uri);

    void addDataObserver(IDataObserver iDataObserver);

    void addEventObserver(IEventObserver iEventObserver);

    void addEventObserver(IEventObserver iEventObserver, IPresetEventObserver iPresetEventObserver);

    String addNetCommonParams(Context context, String str, boolean z10, Level level);

    void addSessionHook(ISessionObserver iSessionObserver);

    void bind(Map<String, String> map, IDBindCallback iDBindCallback);

    void clearAbTestConfigsCache();

    void clearDb();

    void flush();

    IALinkListener getALinkListener();

    @Nullable
    <T> T getAbConfig(String str, T t10);

    @NonNull
    String getAbSdkVersion();

    @Nullable
    IActiveCustomParamsCallback getActiveCustomParams();

    @Deprecated
    String getAid();

    @NonNull
    JSONObject getAllAbTestConfigs();

    @Nullable
    f getAppContext();

    @NonNull
    String getAppId();

    @NonNull
    String getClientUdid();

    Context getContext();

    String getDeepLinkUrl();

    @NonNull
    String getDid();

    boolean getEncryptAndCompress();

    @Nullable
    a1 getEventFilterByClient();

    IEventHandler getEventHandler();

    @Nullable
    JSONObject getHeader();

    IHeaderCustomTimelyCallback getHeaderCustomCallback();

    <T> T getHeaderValue(String str, T t10, Class<T> cls);

    @NonNull
    String getIid();

    @Nullable
    InitConfig getInitConfig();

    int getLaunchFrom();

    h2 getMonitor();

    @NonNull
    INetworkClient getNetClient();

    @NonNull
    String getOpenUdid();

    Map<String, String> getRequestHeader();

    @NonNull
    String getSdkVersion();

    @NonNull
    String getSessionId();

    @NonNull
    String getSsid();

    void getSsidGroup(Map<String, String> map);

    @NonNull
    String getUdid();

    @Nullable
    UriConfig getUriRuntime();

    @NonNull
    String getUserID();

    @NonNull
    String getUserUniqueID();

    ViewExposureManager getViewExposureManager();

    JSONObject getViewProperties(View view);

    boolean hasStarted();

    void ignoreAutoTrackClick(View view);

    void ignoreAutoTrackClickByViewType(Class<?>... clsArr);

    void ignoreAutoTrackPage(Class<?>... clsArr);

    void init(@NonNull Context context, @NonNull InitConfig initConfig);

    void init(@NonNull Context context, @NonNull InitConfig initConfig, Activity activity);

    void initH5Bridge(@NonNull View view, @NonNull String str);

    void initMetaSec(@NonNull Context context);

    void initWebViewBridge(@NonNull View view, @NonNull String str);

    boolean isAutoTrackClickIgnored(View view);

    boolean isAutoTrackPageIgnored(Class<?> cls);

    boolean isBavEnabled();

    boolean isH5BridgeEnable();

    boolean isH5CollectEnable();

    boolean isNewUser();

    boolean isPrivacyMode();

    boolean manualActivate();

    EventBuilder newEvent(@NonNull String str);

    void onActivityPause();

    void onActivityResumed(@NonNull Activity activity, int i10);

    void onEventV3(@NonNull String str);

    void onEventV3(@NonNull String str, @Nullable Bundle bundle);

    void onEventV3(@NonNull String str, @Nullable Bundle bundle, int i10);

    void onEventV3(@NonNull String str, @Nullable JSONObject jSONObject);

    void onEventV3(@NonNull String str, @Nullable JSONObject jSONObject, int i10);

    void onMiscEvent(@NonNull String str, @Nullable JSONObject jSONObject);

    void onPause(@NonNull Context context);

    void onResume(@NonNull Context context);

    void pauseDurationEvent(String str);

    void profileAppend(JSONObject jSONObject);

    void profileIncrement(JSONObject jSONObject);

    void profileSet(JSONObject jSONObject);

    void profileSetOnce(JSONObject jSONObject);

    void profileUnset(String str);

    void pullAbTestConfigs();

    void pullAbTestConfigs(int i10, IPullAbTestConfigCallback iPullAbTestConfigCallback);

    void putCommonParams(Context context, Map<String, String> map, boolean z10, Level level);

    void receive(u3 u3Var);

    void receive(String[] strArr);

    void registerHeaderCustomCallback(IHeaderCustomTimelyCallback iHeaderCustomTimelyCallback);

    void removeAllDataObserver();

    void removeDataObserver(IDataObserver iDataObserver);

    void removeEventObserver(IEventObserver iEventObserver);

    void removeEventObserver(IEventObserver iEventObserver, IPresetEventObserver iPresetEventObserver);

    void removeHeaderInfo(String str);

    void removeOaidObserver(@Nullable IOaidObserver iOaidObserver);

    void removeSessionHook(ISessionObserver iSessionObserver);

    @Deprecated
    boolean reportPhoneDetailInfo();

    void resumeDurationEvent(String str);

    void setALinkListener(IALinkListener iALinkListener);

    void setAccount(Account account);

    void setActiveCustomParams(IActiveCustomParamsCallback iActiveCustomParamsCallback);

    void setAppContext(@NonNull f fVar);

    void setAppLanguageAndRegion(@NonNull String str, @NonNull String str2);

    void setAppTrack(JSONObject jSONObject);

    void setClipboardEnabled(boolean z10);

    void setEncryptAndCompress(boolean z10);

    void setEventFilterByClient(List<String> list, boolean z10);

    void setEventHandler(IEventHandler iEventHandler);

    void setExternalAbVersion(@NonNull String str);

    void setExtraParams(IExtraParams iExtraParams);

    @Deprecated
    void setForbidReportPhoneDetailInfo(boolean z10);

    void setGPSLocation(float f10, float f11, String str);

    void setGoogleAid(@NonNull String str);

    void setHeaderInfo(String str, Object obj);

    void setHeaderInfo(HashMap<String, Object> hashMap);

    void setLaunchFrom(int i10);

    @AnyThread
    void setOaidObserver(@Nullable IOaidObserver iOaidObserver);

    void setPrivacyMode(boolean z10);

    void setPullAbTestConfigsThrottleMills(Long l10);

    void setRangersEventVerifyEnable(boolean z10, String str);

    void setTouchPoint(@NonNull String str);

    void setTracerData(JSONObject jSONObject);

    void setUriRuntime(UriConfig uriConfig);

    void setUserAgent(@NonNull String str);

    void setUserID(long j10);

    void setUserUniqueID(@Nullable String str);

    void setUserUniqueID(@Nullable String str, @Nullable String str2);

    void setViewId(Dialog dialog, String str);

    void setViewId(View view, String str);

    void setViewId(Object obj, String str);

    void setViewProperties(View view, JSONObject jSONObject);

    void start();

    void startDurationEvent(String str);

    void startSimulator(@NonNull String str);

    void stopDurationEvent(String str, JSONObject jSONObject);

    void trackClick(View view);

    void trackClick(View view, JSONObject jSONObject);

    void trackPage(Activity activity);

    void trackPage(Activity activity, JSONObject jSONObject);

    void trackPage(Object obj);

    void trackPage(Object obj, JSONObject jSONObject);

    void userProfileSetOnce(JSONObject jSONObject, UserProfileCallback userProfileCallback);

    void userProfileSync(JSONObject jSONObject, UserProfileCallback userProfileCallback);
}
