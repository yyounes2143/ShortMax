package ai.turbolink.sdk.device;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.device.SystemObserver;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import ai.turbolink.sdk.utils.TurboLinkUtil;
import android.content.Context;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import com.applovin.sdk.AppLovinEventTypes;
import com.appsflyer.AdRevenueScheme;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DeviceInfo.kt */
@Metadata
/* loaded from: classes.dex */
public final class DeviceInfo {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Context _context;
    @NotNull
    private SystemObserver _systemObserver;

    /* compiled from: DeviceInfo.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final DeviceInfo getInstance() {
            TurboLink companion = TurboLink.Companion.getInstance();
            if (companion != null) {
                return companion.getDeviceInfo();
            }
            return null;
        }

        private Companion() {
        }
    }

    /* compiled from: DeviceInfo.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class SystemObserverInstance extends SystemObserver {
    }

    public DeviceInfo(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this._context = context;
        this._systemObserver = new SystemObserverInstance();
        SystemObserver.Companion companion = SystemObserver.Companion;
        companion.getCurrentBatteryStatus(context);
        companion.getCurrentBatteryPct(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setAndGetUserAgent$lambda-2  reason: not valid java name */
    public static final void m9setAndGetUserAgent$lambda2(DeviceInfo this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            TurboLinkLogger.v("Running WebView Instance for userAgent on thread " + Thread.currentThread());
            WebView webView = new WebView(this$0._context);
            TurboLink.Companion companion = TurboLink.Companion;
            String userAgentString = webView.getSettings().getUserAgentString();
            Intrinsics.checkNotNullExpressionValue(userAgentString, "w.settings.userAgentString");
            companion.setUserAgentString_(userAgentString);
            webView.destroy();
        } catch (Exception e10) {
            String message = e10.getMessage();
            if (message == null) {
                message = "";
            }
            TurboLinkLogger.v(message);
        }
    }

    public final void getRequestExtDataParams(@NotNull JSONObject extDataObj) {
        Intrinsics.checkNotNullParameter(extDataObj, "extDataObj");
        SystemObserver.Companion companion = SystemObserver.Companion;
        extDataObj.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, companion.getAppName(this._context));
        extDataObj.put("app_version", companion.getAppVersion(this._context));
        extDataObj.put("available_memory", companion.getAvailableMemory(this._context));
        extDataObj.put("available_storage", companion.getAvailableStorage(this._context));
        extDataObj.put("battery_level", companion.getSystemBatteryCapacity());
        extDataObj.put("charge_state", companion.getSystemBatteryStatusStr());
        extDataObj.put("cpu_hardware", companion.getCpuHardware());
        extDataObj.put("cpu_type", companion.getCpuType());
        extDataObj.put(ICEffectKeys.KEY_IS_IC_EFFECT_DEVICE_NAME, companion.getDeviceName(this._context));
        extDataObj.put("gaid", "");
        extDataObj.put("hardware", companion.getHardware());
        TurboLink.RiskManager riskManager = TurboLink.RiskManager.INSTANCE;
        extDataObj.put("human_score", riskManager.getHumanScore());
        extDataObj.put("network_type", companion.getNetworkType(this._context));
        extDataObj.put("package_name", companion.getPackageName(this._context));
        extDataObj.put(AppLovinEventTypes.USER_VIEWED_PRODUCT, riskManager.getHumanScoreDetail());
        JSONObject jSONObject = new JSONObject();
        TurboLink.InstallReferrerObj installReferrerObj = TurboLink.InstallReferrerObj.INSTANCE;
        jSONObject.put("app_install_time", installReferrerObj.getInstallBeginTimestampSeconds());
        jSONObject.put("click_time", installReferrerObj.getReferrerClickTimestampSeconds());
        jSONObject.put("google_play_instant_param", installReferrerObj.getGooglePlayInstantParam());
        jSONObject.put("url", installReferrerObj.getInstallReferrer());
        extDataObj.put("referrer_details", jSONObject);
        extDataObj.put("root_score", riskManager.getRootScore());
        TurboLink.Companion companion2 = TurboLink.Companion;
        extDataObj.put(HianalyticsBaseData.SDK_TYPE, companion2.getSdkType());
        extDataObj.put("sdk_version", companion2.getSDKVersion());
        extDataObj.put("sign_md5", "");
        extDataObj.put("simulate_score", riskManager.getSimulateScore());
        extDataObj.put("time_zone", companion.getTimeZone());
        extDataObj.put("total_memory", companion.getTotalMemory(this._context));
        extDataObj.put("total_storage", companion.getTotalStorage(this._context));
        extDataObj.put("vpn_status", riskManager.getVpnStatus());
    }

    public final void getRequestUserDataParams(@NotNull JSONObject userDataObj) {
        Intrinsics.checkNotNullParameter(userDataObj, "userDataObj");
        try {
            TurboLink.Companion companion = TurboLink.Companion;
            userDataObj.put("native_msg", companion.getClipboardText());
            Object last_intent_value = AppPrefHelper.Companion.getLAST_INTENT_VALUE();
            Object obj = "";
            if (last_intent_value == null) {
                last_intent_value = "";
            }
            userDataObj.put("deep_link_url", last_intent_value);
            userDataObj.put("os", "Android");
            SystemObserver.Companion companion2 = SystemObserver.Companion;
            userDataObj.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, companion2.getOsVersion());
            userDataObj.put("device_model", companion2.getDeviceModel());
            userDataObj.put("device_id", companion2.getDeviceId(this._context));
            userDataObj.put(TTVideoEngineInterface.PLAY_API_KEY_USERID, companion.getUserId());
            userDataObj.put("brand", companion2.getBrand());
            userDataObj.put(AdRevenueScheme.COUNTRY, companion2.getCountryCode());
            userDataObj.put(MediaFormat.KEY_LANGUAGE, companion2.getLanguage());
            DisplayMetrics displayMetrics = companion2.getDisplayMetrics(this._context);
            Point windowSize = TurboLinkUtil.INSTANCE.getWindowSize(this._context);
            userDataObj.put("screen_height", windowSize.y);
            userDataObj.put("screen_width", windowSize.x);
            userDataObj.put("dpi", displayMetrics.densityDpi);
            userDataObj.put("ipv4", "");
            if (!companion.getSimpleParameterMode()) {
                obj = companion2.getLocalIp();
            }
            userDataObj.put("local_ip", obj);
            userDataObj.put("sdk_version", companion.getSDKVersion());
            TurboLink companion3 = companion.getInstance();
            if (companion3 != null) {
                userDataObj.put("avatar", companion3.getUserHelper().getAvatar());
                userDataObj.put("invite_code", companion3.getUserHelper().getInviteCode());
                userDataObj.put("nick_name", companion3.getUserHelper().getNickName());
                JSONArray jSONArray = new JSONArray();
                for (String str : companion3.getUserHelper().getLevelTag()) {
                    jSONArray.put(str);
                }
                userDataObj.put("tags", jSONArray);
            }
        } catch (JSONException e10) {
            TurboLinkLogger.d("Get request user data params exception " + e10.getMessage());
        }
    }

    public final void getSessionParams(@NotNull JSONObject sessionObj) {
        Intrinsics.checkNotNullParameter(sessionObj, "sessionObj");
        TurboLink.SessionObj sessionObj2 = TurboLink.SessionObj.INSTANCE;
        sessionObj.put("previous_request_id", sessionObj2.getPreviousRequestId());
        sessionObj.put("previous_request_response_time", sessionObj2.getPreviousRequestResponseTime());
        sessionObj.put("previous_request_total_time", sessionObj2.getPreviousRequestTotalTime());
        sessionObj.put("session_id", sessionObj2.setAndGetSessionId());
        sessionObj.put("session_init_param_time", sessionObj2.getSessionInitParamTime());
    }

    @NotNull
    public final SystemObserver getSystemObserver() {
        return this._systemObserver;
    }

    @NotNull
    public final String setAndGetUserAgent() {
        TurboLink.Companion companion = TurboLink.Companion;
        if (!TextUtils.isEmpty(companion.getUserAgentString_())) {
            return companion.getUserAgentString_();
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ai.turbolink.sdk.device.a
            @Override // java.lang.Runnable
            public final void run() {
                DeviceInfo.m9setAndGetUserAgent$lambda2(DeviceInfo.this);
            }
        });
        return companion.getUserAgentString_();
    }
}
