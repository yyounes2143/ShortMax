package ai.turbolink.sdk;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.CampaignBuilder;
import ai.turbolink.sdk.campaign.CampaignLoadURL;
import ai.turbolink.sdk.campaign.CampaignWebviewActivity;
import ai.turbolink.sdk.campaign.CustomParamsProperties;
import ai.turbolink.sdk.deeplink.LinkProperties;
import ai.turbolink.sdk.device.DeviceInfo;
import ai.turbolink.sdk.device.SystemObserver;
import ai.turbolink.sdk.events.TurboLinkEvent;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.helpers.UserHelper;
import ai.turbolink.sdk.network.NetworkInterface;
import ai.turbolink.sdk.network.NetworkInterfaceUrlConnection;
import ai.turbolink.sdk.request.ServerRequestAsyncQueue;
import ai.turbolink.sdk.request.ServerRequestSession;
import ai.turbolink.sdk.request.ServerRequestSync;
import ai.turbolink.sdk.request.ServerRequestURL;
import ai.turbolink.sdk.request.TurboLinkDefaultEvent;
import ai.turbolink.sdk.request.TurboLinkEventType;
import ai.turbolink.sdk.request.assistance.SDKVerify;
import ai.turbolink.sdk.request.campaign.CampaignInfo;
import ai.turbolink.sdk.request.event.EventAddtoCartProperties;
import ai.turbolink.sdk.request.event.EventInstall;
import ai.turbolink.sdk.request.event.EventOpen;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import ai.turbolink.sdk.utils.TurboLinkUtil;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: TurboLink.kt */
@Metadata
/* loaded from: classes.dex */
public final class TurboLink {
    @NotNull
    private static final String GLOBAL_VERSION_TAG;
    @NotNull
    private static final String TURBOLINK_SDK_VERSION;
    @Nullable
    private static CampaignBuilder.CampaignCreateCallback _appCampaignCreateCallback;
    @Nullable
    private static CampaignBuilder.CampaignDestroyCallback _appCampaignDestroyCallback;
    @Nullable
    private static CampaignBuilder.CampaignPauseCallback _appCampaignPauseCallback;
    @Nullable
    private static CampaignBuilder.CampaignResumeCallback _appCampaignResumeCallback;
    @Nullable
    private static CampaignBuilder.EventListenerCallback _appEventListenerCallback;
    @Nullable
    private static KClass<? extends Object> _appLoginActivityRef;
    @Nullable
    private static CampaignBuilder.LoginListenerCallback _appLoginListenerCallback;
    @Nullable
    private static CampaignBuilder.PointListenerCallback _appPointsListenerCallback;
    @Nullable
    private static CampaignBuilder.RedirectListenerCallback _appRedirectListenerCallback;
    @Nullable
    private static KClass<? extends Object> _appRegActivityRef;
    @Nullable
    private static CampaignBuilder.RegListenerCallback _appRegListenerCallback;
    @Nullable
    private static CampaignBuilder.ShareListenerCallback _appShareListenerCallback;
    @Nullable
    private static CampaignBuilder.ClientRewardsListener _clientRewardsListener;
    @Nullable
    private static TurboLinkEvent.TurboLinkEventCallback _turboLinkEventCallback;
    @Nullable
    private static TurboLink _turboLinkReferral;
    private static int deviceStatus;
    private static boolean disableAutoSessionInitialization;
    private static boolean idSimpleMode;
    private static boolean isPlugin;
    private static int projectStatus;
    private static boolean simpleParameterMode;
    private static boolean toggleClickAppEventListenerCallback;
    private static boolean userAgentGet_;
    private static boolean webviewGoReloadUrl;
    private static long webviewGoReloadUrlLastCustomEventTime;
    @Nullable
    private TurboLinkActivityLifeCycleObserver _activityLifeCycleObserver;
    @Nullable
    private final AppPrefHelper _appPrefHelper;
    @NotNull
    private final Context _context;
    @Nullable
    private WeakReference<Activity> _currentActivityReference;
    @NotNull
    private final DeviceInfo _deviceInfo;
    @NotNull
    private SESSION_STATE _initSessionState;
    @Nullable
    private WeakReference<Activity> _intentActivityReference;
    @NotNull
    private INTENT_STATE _intentState;
    @NotNull
    private final NetworkInterface _networkInterface;
    @Nullable
    private final ServerRequestAsyncQueue _requestQueue;
    @NotNull
    private UserHelper _userHelper;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static String runEnvironment = "prod";
    @NotNull
    private static String userAgentString_ = "";
    @NotNull
    private static String lastNoLoginWebviewUrl = "";
    @NotNull
    private static String lastOpenWebViewUrl = "";
    @NotNull
    private static UserHelper userCompanionObj = new UserHelper("");
    @NotNull
    private static String clipboardText = "";
    @NotNull
    private static String blackbox = "";
    @NotNull
    private static String sdkType = "native";

    /* compiled from: TurboLink.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ TurboLink autoInstance$default(Companion companion, Context context, String str, TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                str = null;
            }
            if ((i10 & 4) != 0) {
                turboLinkEventCallback = null;
            }
            return companion.autoInstance(context, str, turboLinkEventCallback);
        }

        private final synchronized TurboLink initInstance(Context context, String str, String str2, String str3, String str4, TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
            AppPrefHelper appPrefHelper;
            AppPrefHelper appPrefHelper2;
            AppPrefHelper appPrefHelper3;
            String str5;
            SESSION_STATE session_state;
            TurboLink turboLink;
            DeviceInfo deviceInfo;
            AppPrefHelper appPrefHelper4;
            AppPrefHelper appPrefHelper5;
            AppPrefHelper appPrefHelper6;
            String str6;
            try {
                if (TurboLink._turboLinkReferral == null) {
                    if (str4 == null) {
                        str6 = "";
                    } else {
                        str6 = str4;
                    }
                    if (!Intrinsics.areEqual(getUserCompanionObj().getUserId(), "") && TextUtils.isEmpty(str4)) {
                        str6 = getUserCompanionObj().getUserId();
                    }
                    Context applicationContext = context.getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
                    TurboLink._turboLinkReferral = new TurboLink(applicationContext, str6);
                    getUserCompanionObj().setUserId(str6);
                }
                if (!TextUtils.isEmpty(str)) {
                    TurboLink turboLink2 = TurboLink._turboLinkReferral;
                    if (turboLink2 != null && (appPrefHelper = turboLink2._appPrefHelper) != null) {
                        if (str == null) {
                            str = "";
                        }
                        appPrefHelper.setProjectID(str);
                    }
                } else {
                    TurboLinkLogger.w("Warning: Please enter your projectId in your project`s AndroidManifest file!");
                    TurboLink turboLink3 = TurboLink._turboLinkReferral;
                    if (turboLink3 != null && (appPrefHelper6 = turboLink3._appPrefHelper) != null) {
                        appPrefHelper6.setProjectID(AppPrefHelper.Companion.getNO_STRING_VALUE());
                    }
                }
                if (!TextUtils.isEmpty(str2)) {
                    TurboLink turboLink4 = TurboLink._turboLinkReferral;
                    if (turboLink4 != null && (appPrefHelper2 = turboLink4._appPrefHelper) != null) {
                        if (str2 == null) {
                            str2 = "";
                        }
                        appPrefHelper2.setAppKey(str2);
                    }
                } else {
                    TurboLinkLogger.w("Warning: Please enter your appKey in your project`s AndroidManifest file!");
                    TurboLink turboLink5 = TurboLink._turboLinkReferral;
                    if (turboLink5 != null && (appPrefHelper5 = turboLink5._appPrefHelper) != null) {
                        appPrefHelper5.setAppKey(AppPrefHelper.Companion.getNO_STRING_VALUE());
                    }
                }
                if (!TextUtils.isEmpty(str3)) {
                    TurboLink turboLink6 = TurboLink._turboLinkReferral;
                    if (turboLink6 != null && (appPrefHelper3 = turboLink6._appPrefHelper) != null) {
                        if (str3 == null) {
                            str3 = "";
                        }
                        appPrefHelper3.setAppSecret(str3);
                    }
                } else {
                    TurboLinkLogger.w("Warning: Please enter your appSecret in your project`s AndroidManifest file!");
                    TurboLink turboLink7 = TurboLink._turboLinkReferral;
                    if (turboLink7 != null && (appPrefHelper4 = turboLink7._appPrefHelper) != null) {
                        appPrefHelper4.setAppSecret(AppPrefHelper.Companion.getNO_STRING_VALUE());
                    }
                }
                if (context instanceof Application) {
                    TurboLinkLogger.i("Context is instanceOf Application.");
                    TurboLink turboLink8 = TurboLink._turboLinkReferral;
                    if (turboLink8 != null) {
                        turboLink8.setActivityLifeCycleObserver((Application) context, turboLinkEventCallback, isPlugin());
                    }
                }
                int i10 = 1;
                if (getUserAgentGet_() && (turboLink = TurboLink._turboLinkReferral) != null && (deviceInfo = turboLink._deviceInfo) != null) {
                    deviceInfo.setAndGetUserAgent();
                }
                if (!getDisableAutoSessionInitialization()) {
                    TurboLink turboLink9 = TurboLink._turboLinkReferral;
                    Activity activity = null;
                    if (turboLink9 != null) {
                        session_state = turboLink9.getSessionInitState();
                    } else {
                        session_state = null;
                    }
                    if (session_state == SESSION_STATE.UNINITIALISED) {
                        if (turboLinkEventCallback == null) {
                            turboLinkEventCallback = getEventCallback();
                        }
                        TurboLink turboLink10 = TurboLink._turboLinkReferral;
                        if (turboLink10 != null) {
                            activity = turboLink10.getCurrentActivity();
                        }
                        activitySessionBuilder(activity).isAutoInitialization(true).withCallback(turboLinkEventCallback).sessionInit();
                    }
                }
                SDKAccessInfo sDKAccessInfo = SDKAccessInfo.INSTANCE;
                JSONArray sdkLaunchEventSequence = sDKAccessInfo.getSdkLaunchEventSequence();
                TurboLinkUtil turboLinkUtil = TurboLinkUtil.INSTANCE;
                sdkLaunchEventSequence.put(turboLinkUtil.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.INIT_SESSION.getEventSeq()));
                if (turboLinkUtil.isKotlinCode(context)) {
                    str5 = "Kotlin";
                } else {
                    str5 = "Java";
                }
                sDKAccessInfo.setAppLanguage(str5);
                sDKAccessInfo.setPackageName(SystemObserver.Companion.getPackageName(context));
                if (sDKAccessInfo.getSetEventCallback() == 2) {
                    i10 = 2;
                }
                sDKAccessInfo.setSetCallbackBeforeInit(i10);
            } catch (Throwable th2) {
                throw th2;
            }
            return TurboLink._turboLinkReferral;
        }

        static /* synthetic */ TurboLink initInstance$default(Companion companion, Context context, String str, String str2, String str3, String str4, TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback, int i10, Object obj) {
            String str5;
            TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback2;
            if ((i10 & 16) != 0) {
                str5 = null;
            } else {
                str5 = str4;
            }
            if ((i10 & 32) != 0) {
                turboLinkEventCallback2 = null;
            } else {
                turboLinkEventCallback2 = turboLinkEventCallback;
            }
            return companion.initInstance(context, str, str2, str3, str5, turboLinkEventCallback2);
        }

        public static /* synthetic */ void setAppUser$default(Companion companion, String str, String str2, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                str2 = "";
            }
            companion.setAppUser(str, str2);
        }

        @NotNull
        public final TurboLinkActivitySession activitySessionBuilder(@Nullable Activity activity) {
            return new TurboLinkActivitySession(activity);
        }

        @Nullable
        public final synchronized TurboLink autoInstance(@NotNull Context context, @Nullable String str, @Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
            TurboLinkUtil turboLinkUtil;
            Intrinsics.checkNotNullParameter(context, "context");
            turboLinkUtil = TurboLinkUtil.INSTANCE;
            return initInstance(context, turboLinkUtil.getProjectId(context), turboLinkUtil.getAppKey(context), turboLinkUtil.getAppSecret(context), str, turboLinkEventCallback);
        }

        @NotNull
        public final LinkProperties createDeepLink() {
            return new LinkProperties();
        }

        @NotNull
        public final TurboLinkEvent customEvent(@Nullable Activity activity, @NotNull String event) {
            Intrinsics.checkNotNullParameter(event, "event");
            return new TurboLinkEvent(activity, TurboLinkEventType.CUSTOM, event);
        }

        public final void disableLogger() {
            TurboLinkLogger.setLogEnabled(false);
        }

        public final void enableLogger() {
            TurboLinkLogger.always(TurboLink.GLOBAL_VERSION_TAG);
            TurboLinkLogger.setLogEnabled(true);
        }

        @NotNull
        public final String getBlackbox() {
            return TurboLink.blackbox;
        }

        @Nullable
        public final CampaignBuilder.CampaignCreateCallback getCampaignCreateCallback() {
            return TurboLink._appCampaignCreateCallback;
        }

        @Nullable
        public final CampaignBuilder.CampaignDestroyCallback getCampaignDestroyCallback() {
            return TurboLink._appCampaignDestroyCallback;
        }

        @Nullable
        public final CampaignBuilder.CampaignPauseCallback getCampaignPauseCallback() {
            return TurboLink._appCampaignPauseCallback;
        }

        @Nullable
        public final CampaignBuilder.CampaignResumeCallback getCampaignResumeCallback() {
            return TurboLink._appCampaignResumeCallback;
        }

        @Nullable
        public final CampaignBuilder.ClientRewardsListener getClientRewardsListener() {
            return TurboLink._clientRewardsListener;
        }

        @NotNull
        public final String getClipboardText() {
            return TurboLink.clipboardText;
        }

        public final int getDeviceStatus() {
            return TurboLink.deviceStatus;
        }

        public final boolean getDisableAutoSessionInitialization() {
            return TurboLink.disableAutoSessionInitialization;
        }

        @Nullable
        public final TurboLinkEvent.TurboLinkEventCallback getEventCallback() {
            return TurboLink._turboLinkEventCallback;
        }

        @Nullable
        public final CampaignBuilder.EventListenerCallback getEventListenerCallback() {
            return TurboLink._appEventListenerCallback;
        }

        public final boolean getIdSimpleMode() {
            return TurboLink.idSimpleMode;
        }

        @Nullable
        public final synchronized TurboLink getInstance() {
            try {
                if (TurboLink._turboLinkReferral == null) {
                    TurboLinkLogger.v("The TurboLink instance is not created yet, First you call autoInstance(Context) in custom application");
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return TurboLink._turboLinkReferral;
        }

        @NotNull
        public final String getLastNoLoginWebviewUrl() {
            return TurboLink.lastNoLoginWebviewUrl;
        }

        @NotNull
        public final String getLastOpenWebViewUrl() {
            return TurboLink.lastOpenWebViewUrl;
        }

        @Nullable
        public final KClass<? extends Object> getLoginActivity() {
            return TurboLink._appLoginActivityRef;
        }

        @Nullable
        public final CampaignBuilder.LoginListenerCallback getLoginListenerCallback() {
            return TurboLink._appLoginListenerCallback;
        }

        @Nullable
        public final CampaignBuilder.PointListenerCallback getPointListenerCallback() {
            return TurboLink._appPointsListenerCallback;
        }

        public final int getProjectStatus() {
            return TurboLink.projectStatus;
        }

        @Nullable
        public final CampaignBuilder.RedirectListenerCallback getRedirectListenerCallback() {
            return TurboLink._appRedirectListenerCallback;
        }

        @Nullable
        public final KClass<? extends Object> getRegActivity() {
            return TurboLink._appRegActivityRef;
        }

        @Nullable
        public final CampaignBuilder.RegListenerCallback getRegListenerCallback() {
            return TurboLink._appRegListenerCallback;
        }

        @NotNull
        public final String getRunEnvironment() {
            return TurboLink.runEnvironment;
        }

        @NotNull
        public final String getSDKVersion() {
            return BuildConfig.SDK_VERSION_NAME;
        }

        @NotNull
        public final String getSdkType() {
            return TurboLink.sdkType;
        }

        @Nullable
        public final CampaignBuilder.ShareListenerCallback getShareListenerCallback() {
            return TurboLink._appShareListenerCallback;
        }

        public final boolean getSimpleParameterMode() {
            return TurboLink.simpleParameterMode;
        }

        public final boolean getToggleClickAppEventListenerCallback() {
            return TurboLink.toggleClickAppEventListenerCallback;
        }

        public final boolean getUserAgentGet_() {
            return TurboLink.userAgentGet_;
        }

        @NotNull
        public final String getUserAgentString_() {
            return TurboLink.userAgentString_;
        }

        @NotNull
        public final UserHelper getUserCompanionObj() {
            return TurboLink.userCompanionObj;
        }

        @NotNull
        public final String getUserId() {
            UserHelper userHelper;
            String userId;
            TurboLink companion = getInstance();
            if (companion == null || (userHelper = companion.getUserHelper()) == null || (userId = userHelper.getUserId()) == null) {
                return "";
            }
            return userId;
        }

        @NotNull
        public final String getUserLevel() {
            List<String> list;
            TurboLink companion;
            UserHelper userHelper;
            List<String> levelTag;
            String A0;
            UserHelper userHelper2;
            TurboLink companion2 = getInstance();
            if (companion2 != null && (userHelper2 = companion2.getUserHelper()) != null) {
                list = userHelper2.getLevelTag();
            } else {
                list = null;
            }
            if (list == null || (companion = getInstance()) == null || (userHelper = companion.getUserHelper()) == null || (levelTag = userHelper.getLevelTag()) == null || (A0 = CollectionsKt.A0(levelTag, ",", null, null, 0, null, null, 62, null)) == null) {
                return "";
            }
            return A0;
        }

        public final boolean getWebviewGoReloadUrl() {
            return TurboLink.webviewGoReloadUrl;
        }

        public final long getWebviewGoReloadUrlLastCustomEventTime() {
            return TurboLink.webviewGoReloadUrlLastCustomEventTime;
        }

        public final boolean isBelongTurboLink(@NotNull String linkOrWord) {
            Intrinsics.checkNotNullParameter(linkOrWord, "linkOrWord");
            for (String str : AppPrefHelper.Companion.getIS_TURBOLINK_LINK_IDENTIFY()) {
                if (StringsKt.b0(linkOrWord, str, false, 2, null)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isPlugin() {
            return TurboLink.isPlugin;
        }

        public final boolean isUrlBelongTurboLink(@NotNull String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            for (String str : AppPrefHelper.Companion.getIS_TURBOLINK_URL_IDENTIFY()) {
                if (StringsKt.b0(url, str, false, 2, null)) {
                    return true;
                }
            }
            return false;
        }

        public final void reSetwebviewGoReloadUrl() {
            setWebviewGoReloadUrl(false);
            setToggleClickAppEventListenerCallback(false);
        }

        public final void setActivityIntent(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            AppPrefHelper.Companion companion = AppPrefHelper.Companion;
            Intent intent = activity.getIntent();
            Intrinsics.checkNotNullExpressionValue(intent, "activity.intent");
            boolean haveAndIsTurboLinkIntentUrl = companion.haveAndIsTurboLinkIntentUrl(intent);
            TurboLink companion2 = getInstance();
            if (companion2 == null) {
                return;
            }
            Intent intent2 = activity.getIntent();
            Intrinsics.checkNotNullExpressionValue(intent2, "activity.intent");
            companion2.onIntentRead(intent2, haveAndIsTurboLinkIntentUrl);
        }

        public final void setAppUser(@NotNull String userId, @NotNull String level) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(level, "level");
            setAppUserInfo(userId, "", "", new String[]{level}, "");
        }

        public final void setAppUserId(@NotNull String userId) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            getUserCompanionObj().setUserId(userId);
        }

        public final void setAppUserInfo(@NotNull String userId, @NotNull String nickName, @NotNull String avatar, @NotNull String[] tags, @NotNull String inviteCode) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(nickName, "nickName");
            Intrinsics.checkNotNullParameter(avatar, "avatar");
            Intrinsics.checkNotNullParameter(tags, "tags");
            Intrinsics.checkNotNullParameter(inviteCode, "inviteCode");
            getUserCompanionObj().setUserId(userId);
            getUserCompanionObj().setNickName(nickName);
            getUserCompanionObj().setAvatar(avatar);
            getUserCompanionObj().getLevelTag().clear();
            for (String str : tags) {
                TurboLink.Companion.getUserCompanionObj().getLevelTag().add(str);
            }
            getUserCompanionObj().setInviteCode(inviteCode);
            if (Intrinsics.areEqual(userId, "")) {
                SDKAccessInfo.INSTANCE.getSdkLaunchEventSequence().put(TurboLinkUtil.INSTANCE.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.SET_USER_ID_EMPTY.getEventSeq()));
            } else {
                SDKAccessInfo.INSTANCE.getSdkLaunchEventSequence().put(TurboLinkUtil.INSTANCE.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.SET_USER_ID.getEventSeq()));
            }
        }

        public final void setAppUserInviteCode(@NotNull String code) {
            Intrinsics.checkNotNullParameter(code, "code");
            getUserCompanionObj().setInviteCode(code);
        }

        public final void setAppUserLevel(@NotNull String level) {
            Intrinsics.checkNotNullParameter(level, "level");
            getUserCompanionObj().getLevelTag().add(level);
        }

        public final void setAppUserTag(@NotNull String tag) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            getUserCompanionObj().getLevelTag().add(tag);
        }

        public final void setBlackbox(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            TurboLink.blackbox = str;
        }

        public final void setClipboardText(@Nullable String str) {
            if (str == null) {
                str = "";
            }
            TurboLink.clipboardText = str;
        }

        public final void setDelayedSessionInitialization(boolean z10) {
            setDisableAutoSessionInitialization(z10);
            SDKAccessInfo sDKAccessInfo = SDKAccessInfo.INSTANCE;
            sDKAccessInfo.getSdkLaunchEventSequence().put(TurboLinkUtil.INSTANCE.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.DELAY_INIT.getEventSeq()));
            sDKAccessInfo.setEnableDelayInit(2);
        }

        public final void setDeviceStatus(int i10) {
            TurboLink.deviceStatus = i10;
        }

        public final void setDisableAutoSessionInitialization(boolean z10) {
            TurboLink.disableAutoSessionInitialization = z10;
        }

        public final void setIdSimpleMode() {
            TurboLink.idSimpleMode = true;
        }

        public final void setIsPlugin() {
            setPlugin(true);
        }

        public final void setLastNoLoginWebviewUrl(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            TurboLink.lastNoLoginWebviewUrl = str;
        }

        public final void setLastOpenWebViewUrl(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            TurboLink.lastOpenWebViewUrl = str;
        }

        public final void setPlugin(boolean z10) {
            TurboLink.isPlugin = z10;
        }

        public final void setProjectStatus(int i10) {
            TurboLink.projectStatus = i10;
        }

        public final void setRunEnvironment(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            TurboLink.runEnvironment = str;
        }

        public final void setSDKType(@NotNull String sdkTypeParams) {
            Intrinsics.checkNotNullParameter(sdkTypeParams, "sdkTypeParams");
            setSdkType(sdkTypeParams);
        }

        public final void setSdkType(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            TurboLink.sdkType = str;
        }

        public final void setSimpleParameterMode() {
            TurboLink.simpleParameterMode = true;
        }

        public final void setToggleClickAppEventListenerCallback(boolean z10) {
            TurboLink.toggleClickAppEventListenerCallback = z10;
        }

        public final void setUserAgentGet(boolean z10) {
            setUserAgentGet_(z10);
        }

        public final void setUserAgentGet_(boolean z10) {
            TurboLink.userAgentGet_ = z10;
        }

        public final void setUserAgentString_(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            TurboLink.userAgentString_ = str;
        }

        public final void setUserCompanionObj(@NotNull UserHelper userHelper) {
            Intrinsics.checkNotNullParameter(userHelper, "<set-?>");
            TurboLink.userCompanionObj = userHelper;
        }

        public final void setWebviewGoReloadUrl(boolean z10) {
            TurboLink.webviewGoReloadUrl = z10;
        }

        public final void setWebviewGoReloadUrlLastCustomEventTime(long j10) {
            TurboLink.webviewGoReloadUrlLastCustomEventTime = j10;
        }

        public final void settingRunEnvironment(@NotNull String runEnv) {
            Intrinsics.checkNotNullParameter(runEnv, "runEnv");
            setRunEnvironment(runEnv);
        }

        public final void showToast(@NotNull String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            TurboLink companion = TurboLink.Companion.getInstance();
            if (companion == null) {
                return;
            }
            Toast.makeText(companion.getCurrentActivity(), message, 1).show();
        }

        public final void startSessionInitialization(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            TurboLinkEvent.TurboLinkEventCallback eventCallback = getEventCallback();
            TurboLink companion = getInstance();
            if (companion != null && getDisableAutoSessionInitialization() && companion.getSessionInitState() == SESSION_STATE.UNINITIALISED) {
                activitySessionBuilder(activity).isAutoInitialization(true).withCallback(eventCallback).sessionInit();
                setDisableAutoSessionInitialization(false);
            }
        }

        public final void switchEnv() {
            setLastNoLoginWebviewUrl("");
        }

        public final void withCampaignCreateCallback(@NotNull CampaignBuilder.CampaignCreateCallback campaignCreateCallback) {
            Intrinsics.checkNotNullParameter(campaignCreateCallback, "campaignCreateCallback");
            TurboLink._appCampaignCreateCallback = campaignCreateCallback;
        }

        public final void withCampaignDestroyCallback(@NotNull CampaignBuilder.CampaignDestroyCallback campaignDestroyCallback) {
            Intrinsics.checkNotNullParameter(campaignDestroyCallback, "campaignDestroyCallback");
            TurboLink._appCampaignDestroyCallback = campaignDestroyCallback;
        }

        public final void withCampaignPauseCallback(@NotNull CampaignBuilder.CampaignPauseCallback campaignPauseCallback) {
            Intrinsics.checkNotNullParameter(campaignPauseCallback, "campaignPauseCallback");
            TurboLink._appCampaignPauseCallback = campaignPauseCallback;
        }

        public final void withCampaignResumeCallback(@NotNull CampaignBuilder.CampaignResumeCallback campaignResumeCallback) {
            Intrinsics.checkNotNullParameter(campaignResumeCallback, "campaignResumeCallback");
            TurboLink._appCampaignResumeCallback = campaignResumeCallback;
        }

        public final void withClientRewardsListener(@NotNull CampaignBuilder.ClientRewardsListener clientRewardsListener) {
            Intrinsics.checkNotNullParameter(clientRewardsListener, "clientRewardsListener");
            TurboLink._clientRewardsListener = clientRewardsListener;
        }

        public final void withEventCallback(@NotNull TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
            TurboLinkActivityLifeCycleObserver activityLifeCycleObserver;
            Intrinsics.checkNotNullParameter(turboLinkEventCallback, "turboLinkEventCallback");
            TurboLink._turboLinkEventCallback = turboLinkEventCallback;
            TurboLink companion = getInstance();
            if (companion != null && (activityLifeCycleObserver = companion.getActivityLifeCycleObserver()) != null) {
                activityLifeCycleObserver.setInstanceEventCallback(turboLinkEventCallback);
            }
            SDKAccessInfo sDKAccessInfo = SDKAccessInfo.INSTANCE;
            sDKAccessInfo.getSdkLaunchEventSequence().put(TurboLinkUtil.INSTANCE.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.SET_LAUNCH_CALLBACK.getEventSeq()));
            sDKAccessInfo.setSetEventCallback(2);
        }

        public final void withEventListenerCallback(@NotNull CampaignBuilder.EventListenerCallback eventListenerCallback) {
            Intrinsics.checkNotNullParameter(eventListenerCallback, "eventListenerCallback");
            SDKAccessInfo.INSTANCE.setCampaignEventCallback(2);
            TurboLink._appEventListenerCallback = eventListenerCallback;
        }

        public final void withLoginActivity(@NotNull KClass<? extends Object> activityRef) {
            Intrinsics.checkNotNullParameter(activityRef, "activityRef");
            TurboLink._appLoginActivityRef = activityRef;
        }

        public final void withLoginListenerCallback(@NotNull CampaignBuilder.LoginListenerCallback loginListenerCallback) {
            Intrinsics.checkNotNullParameter(loginListenerCallback, "loginListenerCallback");
            TurboLink._appLoginListenerCallback = loginListenerCallback;
            SDKAccessInfo.INSTANCE.setCampaignLoginCallback(2);
        }

        public final void withPointListenerCallback(@NotNull CampaignBuilder.PointListenerCallback pointListenerCallback) {
            Intrinsics.checkNotNullParameter(pointListenerCallback, "pointListenerCallback");
            TurboLink._appPointsListenerCallback = pointListenerCallback;
        }

        public final void withRedirectListenerCallback(@NotNull CampaignBuilder.RedirectListenerCallback redirectListenerCallback) {
            Intrinsics.checkNotNullParameter(redirectListenerCallback, "redirectListenerCallback");
            SDKAccessInfo.INSTANCE.setCampaignRedirectCallback(2);
            TurboLink._appRedirectListenerCallback = redirectListenerCallback;
        }

        public final void withRegActivity(@NotNull KClass<? extends Object> activityRef) {
            Intrinsics.checkNotNullParameter(activityRef, "activityRef");
            TurboLink._appRegActivityRef = activityRef;
        }

        public final void withRegListenerCallback(@NotNull CampaignBuilder.RegListenerCallback regListenerCallback) {
            Intrinsics.checkNotNullParameter(regListenerCallback, "regListenerCallback");
            TurboLink._appRegListenerCallback = regListenerCallback;
        }

        public final void withShareListenerCallback(@NotNull CampaignBuilder.ShareListenerCallback shareListenerCallback) {
            Intrinsics.checkNotNullParameter(shareListenerCallback, "shareListenerCallback");
            TurboLink._appShareListenerCallback = shareListenerCallback;
            SDKAccessInfo.INSTANCE.setCampaignSocialClickCallback(2);
        }

        private Companion() {
        }

        @NotNull
        public final TurboLinkEvent customEvent(@NotNull String event) {
            Intrinsics.checkNotNullParameter(event, "event");
            return new TurboLinkEvent(null, TurboLinkEventType.CUSTOM, event);
        }

        @Nullable
        public final synchronized TurboLink autoInstance(@NotNull Context context, @NotNull String projectId, @NotNull String appKey, @NotNull String appSecret, @Nullable String str, @Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(projectId, "projectId");
            Intrinsics.checkNotNullParameter(appKey, "appKey");
            Intrinsics.checkNotNullParameter(appSecret, "appSecret");
            return initInstance(context, projectId, appKey, appSecret, str, turboLinkEventCallback);
        }
    }

    /* compiled from: TurboLink.kt */
    @Metadata
    /* loaded from: classes.dex */
    public enum INTENT_STATE {
        PENDING,
        READY
    }

    /* compiled from: TurboLink.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class InstallReferrerObj {
        private static boolean googlePlayInstantParam;
        private static long installBeginTimestampSeconds;
        private static long referrerClickTimestampSeconds;
        @NotNull
        public static final InstallReferrerObj INSTANCE = new InstallReferrerObj();
        @NotNull
        private static String installReferrer = "";

        private InstallReferrerObj() {
        }

        public final boolean getGooglePlayInstantParam() {
            return googlePlayInstantParam;
        }

        public final long getInstallBeginTimestampSeconds() {
            return installBeginTimestampSeconds;
        }

        @NotNull
        public final String getInstallReferrer() {
            return installReferrer;
        }

        public final long getReferrerClickTimestampSeconds() {
            return referrerClickTimestampSeconds;
        }

        public final void setGooglePlayInstantParam(boolean z10) {
            googlePlayInstantParam = z10;
        }

        public final void setInstallBeginTimestampSeconds(long j10) {
            installBeginTimestampSeconds = j10;
        }

        public final void setInstallReferrer(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            installReferrer = str;
        }

        public final void setReferrerClickTimestampSeconds(long j10) {
            referrerClickTimestampSeconds = j10;
        }
    }

    /* compiled from: TurboLink.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class RiskManager {
        private static int humanScore;
        private static int rootScore;
        private static int simulateScore;
        @NotNull
        public static final RiskManager INSTANCE = new RiskManager();
        private static int vpnStatus = 1;
        @NotNull
        private static String humanScoreDetail = "";

        private RiskManager() {
        }

        public final int getHumanScore() {
            return humanScore;
        }

        @NotNull
        public final String getHumanScoreDetail() {
            return humanScoreDetail;
        }

        public final int getRootScore() {
            return rootScore;
        }

        public final int getSimulateScore() {
            return simulateScore;
        }

        public final int getVpnStatus() {
            return vpnStatus;
        }

        public final void setHumanScore(int i10) {
            humanScore = i10;
        }

        public final void setHumanScoreDetail(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            humanScoreDetail = str;
        }

        public final void setRootScore(int i10) {
            rootScore = i10;
        }

        public final void setSimulateScore(int i10) {
            simulateScore = i10;
        }

        public final void setVpnStatus(int i10) {
            vpnStatus = i10;
        }
    }

    /* compiled from: TurboLink.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class SDKAccessInfo {
        private static int installEventStatus;
        private static int loginEventStatus;
        private static int logoutEventStatus;
        private static int registerEventStatus;
        @NotNull
        public static final SDKAccessInfo INSTANCE = new SDKAccessInfo();
        private static int campaignLoginCallback = 1;
        private static int campaignSocialClickCallback = 1;
        private static int setEventCallback = 1;
        private static int enableDelayInit = 1;
        @NotNull
        private static String appLanguage = "Kotlin";
        @NotNull
        private static String packageName = "";
        private static int setCallbackBeforeInit = 1;
        @NotNull
        private static JSONArray sdkLaunchEventSequence = new JSONArray();
        @NotNull
        private static JSONArray schemes = new JSONArray();
        @NotNull
        private static JSONArray appLinks = new JSONArray();
        private static int campaignEventCallback = 1;
        private static int campaignLoadUrl = 1;
        private static int campaignRedirectCallback = 1;
        private static int campaignSetDelay = 1;
        @NotNull
        private static String navigationBarType = TypedValues.Custom.NAME;

        private SDKAccessInfo() {
        }

        @NotNull
        public final String getAppLanguage() {
            return appLanguage;
        }

        @NotNull
        public final JSONArray getAppLinks() {
            return appLinks;
        }

        public final int getCampaignEventCallback() {
            return campaignEventCallback;
        }

        public final int getCampaignLoadUrl() {
            return campaignLoadUrl;
        }

        public final int getCampaignLoginCallback() {
            return campaignLoginCallback;
        }

        public final int getCampaignRedirectCallback() {
            return campaignRedirectCallback;
        }

        public final int getCampaignSetDelay() {
            return campaignSetDelay;
        }

        public final int getCampaignSocialClickCallback() {
            return campaignSocialClickCallback;
        }

        public final int getEnableDelayInit() {
            return enableDelayInit;
        }

        public final int getInstallEventStatus() {
            return installEventStatus;
        }

        public final int getLoginEventStatus() {
            return loginEventStatus;
        }

        public final int getLogoutEventStatus() {
            return logoutEventStatus;
        }

        @NotNull
        public final String getNavigationBarType() {
            return navigationBarType;
        }

        @NotNull
        public final String getPackageName() {
            return packageName;
        }

        public final int getRegisterEventStatus() {
            return registerEventStatus;
        }

        @NotNull
        public final JSONArray getSchemes() {
            return schemes;
        }

        @NotNull
        public final JSONArray getSdkLaunchEventSequence() {
            return sdkLaunchEventSequence;
        }

        public final int getSetCallbackBeforeInit() {
            return setCallbackBeforeInit;
        }

        public final int getSetEventCallback() {
            return setEventCallback;
        }

        public final void setAppLanguage(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            appLanguage = str;
        }

        public final void setAppLinks(@NotNull JSONArray jSONArray) {
            Intrinsics.checkNotNullParameter(jSONArray, "<set-?>");
            appLinks = jSONArray;
        }

        public final void setCampaignEventCallback(int i10) {
            campaignEventCallback = i10;
        }

        public final void setCampaignLoadUrl(int i10) {
            campaignLoadUrl = i10;
        }

        public final void setCampaignLoginCallback(int i10) {
            campaignLoginCallback = i10;
        }

        public final void setCampaignRedirectCallback(int i10) {
            campaignRedirectCallback = i10;
        }

        public final void setCampaignSetDelay(int i10) {
            campaignSetDelay = i10;
        }

        public final void setCampaignSocialClickCallback(int i10) {
            campaignSocialClickCallback = i10;
        }

        public final void setEnableDelayInit(int i10) {
            enableDelayInit = i10;
        }

        public final void setInstallEventStatus(int i10) {
            installEventStatus = i10;
        }

        public final void setLoginEventStatus(int i10) {
            loginEventStatus = i10;
        }

        public final void setLogoutEventStatus(int i10) {
            logoutEventStatus = i10;
        }

        public final void setNavigationBarType(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            navigationBarType = str;
        }

        public final void setPackageName(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            packageName = str;
        }

        public final void setRegisterEventStatus(int i10) {
            registerEventStatus = i10;
        }

        public final void setSchemes(@NotNull JSONArray jSONArray) {
            Intrinsics.checkNotNullParameter(jSONArray, "<set-?>");
            schemes = jSONArray;
        }

        public final void setSdkLaunchEventSequence(@NotNull JSONArray jSONArray) {
            Intrinsics.checkNotNullParameter(jSONArray, "<set-?>");
            sdkLaunchEventSequence = jSONArray;
        }

        public final void setSetCallbackBeforeInit(int i10) {
            setCallbackBeforeInit = i10;
        }

        public final void setSetEventCallback(int i10) {
            setEventCallback = i10;
        }
    }

    /* compiled from: TurboLink.kt */
    @Metadata
    /* loaded from: classes.dex */
    public enum SESSION_STATE {
        INITIALISED,
        INITIALISING,
        UNINITIALISED
    }

    /* compiled from: TurboLink.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class SessionObj {
        private static long lastBackgroundTime;
        private static long previousRequestResponseTime;
        private static long previousRequestTotalTime;
        private static long sessionInitParamTime;
        private static int sessionUseVerify;
        @NotNull
        public static final SessionObj INSTANCE = new SessionObj();
        @NotNull
        private static String previousRequestId = "";
        @NotNull
        private static String verifyScheme = "";
        @NotNull
        private static String verifyAppLinks = "";
        @NotNull
        private static String sessionId = "";

        private SessionObj() {
        }

        public final long getLastBackgroundTime() {
            return lastBackgroundTime;
        }

        @NotNull
        public final String getPreviousRequestId() {
            return previousRequestId;
        }

        public final long getPreviousRequestResponseTime() {
            return previousRequestResponseTime;
        }

        public final long getPreviousRequestTotalTime() {
            return previousRequestTotalTime;
        }

        public final long getSessionInitParamTime() {
            return sessionInitParamTime;
        }

        public final int getSessionUseVerify() {
            return sessionUseVerify;
        }

        @NotNull
        public final String getVerifyAppLinks() {
            return verifyAppLinks;
        }

        @NotNull
        public final String getVerifyScheme() {
            return verifyScheme;
        }

        @NotNull
        public final String setAndGetSessionId() {
            long currentTimeMillis = System.currentTimeMillis();
            if (Intrinsics.areEqual(sessionId, "")) {
                TurboLinkUtil turboLinkUtil = TurboLinkUtil.INSTANCE;
                sessionId = turboLinkUtil.getMD5(turboLinkUtil.getUUID());
            } else {
                long j10 = lastBackgroundTime;
                if (j10 > 0 && currentTimeMillis - j10 > 30000) {
                    TurboLinkUtil turboLinkUtil2 = TurboLinkUtil.INSTANCE;
                    sessionId = turboLinkUtil2.getMD5(turboLinkUtil2.getUUID());
                }
            }
            return sessionId;
        }

        public final void setLastBackgroundTime(long j10) {
            lastBackgroundTime = j10;
        }

        public final void setPreviousRequestId(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            previousRequestId = str;
        }

        public final void setPreviousRequestResponseTime(long j10) {
            previousRequestResponseTime = j10;
        }

        public final void setPreviousRequestTotalTime(long j10) {
            previousRequestTotalTime = j10;
        }

        public final void setSessionInitParamTime(long j10) {
            sessionInitParamTime = j10;
        }

        public final void setSessionUseVerify(int i10) {
            sessionUseVerify = i10;
        }

        public final void setVerifyAppLinks(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            verifyAppLinks = str;
        }

        public final void setVerifyScheme(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            verifyScheme = str;
        }
    }

    static {
        Companion companion;
        String str = "ai.turbolink.sdk:" + companion.getSDKVersion();
        TURBOLINK_SDK_VERSION = str;
        GLOBAL_VERSION_TAG = "TURBOLINK-VERSION-TAG:" + str;
    }

    public TurboLink(@NotNull Context context, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        this._initSessionState = SESSION_STATE.UNINITIALISED;
        this._intentState = INTENT_STATE.PENDING;
        this._context = context;
        this._userHelper = userCompanionObj;
        this._deviceInfo = new DeviceInfo(context);
        this._appPrefHelper = AppPrefHelper.Companion.getInstance(context);
        this._networkInterface = new NetworkInterfaceUrlConnection(this);
        this._requestQueue = ServerRequestAsyncQueue.Companion.getInstance(context);
    }

    @NotNull
    public static final TurboLinkActivitySession activitySessionBuilder(@Nullable Activity activity) {
        return Companion.activitySessionBuilder(activity);
    }

    @Nullable
    public static final synchronized TurboLink autoInstance(@NotNull Context context, @Nullable String str, @Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
        TurboLink autoInstance;
        synchronized (TurboLink.class) {
            autoInstance = Companion.autoInstance(context, str, turboLinkEventCallback);
        }
        return autoInstance;
    }

    @NotNull
    public static final LinkProperties createDeepLink() {
        return Companion.createDeepLink();
    }

    @NotNull
    public static final TurboLinkEvent customEvent(@Nullable Activity activity, @NotNull String str) {
        return Companion.customEvent(activity, str);
    }

    public static final void enableLogger() {
        Companion.enableLogger();
    }

    public static final boolean isBelongTurboLink(@NotNull String str) {
        return Companion.isBelongTurboLink(str);
    }

    public static final boolean isUrlBelongTurboLink(@NotNull String str) {
        return Companion.isUrlBelongTurboLink(str);
    }

    public static final void setActivityIntent(@NotNull Activity activity) {
        Companion.setActivityIntent(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setActivityLifeCycleObserver(Application application, TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback, boolean z10) {
        TurboLinkActivityLifeCycleObserver turboLinkActivityLifeCycleObserver = new TurboLinkActivityLifeCycleObserver(turboLinkEventCallback, z10);
        this._activityLifeCycleObserver = turboLinkActivityLifeCycleObserver;
        application.unregisterActivityLifecycleCallbacks(turboLinkActivityLifeCycleObserver);
        application.registerActivityLifecycleCallbacks(this._activityLifeCycleObserver);
    }

    public static final void setAppUser(@NotNull String str, @NotNull String str2) {
        Companion.setAppUser(str, str2);
    }

    public static final void setAppUserId(@NotNull String str) {
        Companion.setAppUserId(str);
    }

    public static final void setAppUserInfo(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String[] strArr, @NotNull String str4) {
        Companion.setAppUserInfo(str, str2, str3, strArr, str4);
    }

    public static final void setAppUserInviteCode(@NotNull String str) {
        Companion.setAppUserInviteCode(str);
    }

    public static final void setAppUserLevel(@NotNull String str) {
        Companion.setAppUserLevel(str);
    }

    public static final void setAppUserTag(@NotNull String str) {
        Companion.setAppUserTag(str);
    }

    public static final void setDelayedSessionInitialization(boolean z10) {
        Companion.setDelayedSessionInitialization(z10);
    }

    public static final void setIdSimpleMode() {
        Companion.setIdSimpleMode();
    }

    public static final void setIsPlugin() {
        Companion.setIsPlugin();
    }

    public static final void setSDKType(@NotNull String str) {
        Companion.setSDKType(str);
    }

    public static final void setSimpleParameterMode() {
        Companion.setSimpleParameterMode();
    }

    public static final void settingRunEnvironment(@NotNull String str) {
        Companion.settingRunEnvironment(str);
    }

    public static final void showToast(@NotNull String str) {
        Companion.showToast(str);
    }

    public static final void startSessionInitialization(@NotNull Activity activity) {
        Companion.startSessionInitialization(activity);
    }

    public static final void switchEnv() {
        Companion.switchEnv();
    }

    public static final void withCampaignCreateCallback(@NotNull CampaignBuilder.CampaignCreateCallback campaignCreateCallback) {
        Companion.withCampaignCreateCallback(campaignCreateCallback);
    }

    public static final void withCampaignDestroyCallback(@NotNull CampaignBuilder.CampaignDestroyCallback campaignDestroyCallback) {
        Companion.withCampaignDestroyCallback(campaignDestroyCallback);
    }

    public static final void withCampaignPauseCallback(@NotNull CampaignBuilder.CampaignPauseCallback campaignPauseCallback) {
        Companion.withCampaignPauseCallback(campaignPauseCallback);
    }

    public static final void withCampaignResumeCallback(@NotNull CampaignBuilder.CampaignResumeCallback campaignResumeCallback) {
        Companion.withCampaignResumeCallback(campaignResumeCallback);
    }

    public static final void withClientRewardsListener(@NotNull CampaignBuilder.ClientRewardsListener clientRewardsListener) {
        Companion.withClientRewardsListener(clientRewardsListener);
    }

    public static final void withEventCallback(@NotNull TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
        Companion.withEventCallback(turboLinkEventCallback);
    }

    public static final void withEventListenerCallback(@NotNull CampaignBuilder.EventListenerCallback eventListenerCallback) {
        Companion.withEventListenerCallback(eventListenerCallback);
    }

    public static final void withLoginActivity(@NotNull KClass<? extends Object> kClass) {
        Companion.withLoginActivity(kClass);
    }

    public static final void withLoginListenerCallback(@NotNull CampaignBuilder.LoginListenerCallback loginListenerCallback) {
        Companion.withLoginListenerCallback(loginListenerCallback);
    }

    public static final void withPointListenerCallback(@NotNull CampaignBuilder.PointListenerCallback pointListenerCallback) {
        Companion.withPointListenerCallback(pointListenerCallback);
    }

    public static final void withRedirectListenerCallback(@NotNull CampaignBuilder.RedirectListenerCallback redirectListenerCallback) {
        Companion.withRedirectListenerCallback(redirectListenerCallback);
    }

    public static final void withRegListenerCallback(@NotNull CampaignBuilder.RegListenerCallback regListenerCallback) {
        Companion.withRegListenerCallback(regListenerCallback);
    }

    public static final void withShareListenerCallback(@NotNull CampaignBuilder.ShareListenerCallback shareListenerCallback) {
        Companion.withShareListenerCallback(shareListenerCallback);
    }

    public final void generateRequestInternal(@NotNull ServerRequestURL req) {
        Intrinsics.checkNotNullParameter(req, "req");
        if (req.isAsync()) {
            ServerRequestAsyncQueue serverRequestAsyncQueue = this._requestQueue;
            if (serverRequestAsyncQueue != null) {
                serverRequestAsyncQueue.handleNewManualRequest(req);
                return;
            }
            return;
        }
        ServerRequestSync.INSTANCE.doReq(req);
    }

    @Nullable
    public final TurboLinkActivityLifeCycleObserver getActivityLifeCycleObserver() {
        return this._activityLifeCycleObserver;
    }

    @Nullable
    public final AppPrefHelper getAppPrefHelper() {
        return this._appPrefHelper;
    }

    @NotNull
    public final Context getApplicationContext() {
        return this._context;
    }

    @Nullable
    public final Activity getCurrentActivity() {
        WeakReference<Activity> weakReference = this._currentActivityReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @NotNull
    public final DeviceInfo getDeviceInfo() {
        return this._deviceInfo;
    }

    @NotNull
    public final ServerRequestSession getEventInstallOrOpenRequest(@Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback, boolean z10) {
        AppPrefHelper appPrefHelper;
        TurboLink companion = Companion.getInstance();
        if (companion != null && (appPrefHelper = companion.getAppPrefHelper()) != null && appPrefHelper.isAppNewInstall()) {
            return new EventInstall(this._context, turboLinkEventCallback, z10);
        }
        return new EventOpen(this._context, turboLinkEventCallback, z10);
    }

    @Nullable
    public final Activity getIntentActivity() {
        WeakReference<Activity> weakReference = this._intentActivityReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @NotNull
    public final NetworkInterface getNetworkInterface() {
        return this._networkInterface;
    }

    @NotNull
    public final SESSION_STATE getSessionInitState() {
        return this._initSessionState;
    }

    @NotNull
    public final UserHelper getUserHelper() {
        return this._userHelper;
    }

    @Nullable
    public final WeakReference<Activity> get_currentActivityReference() {
        return this._currentActivityReference;
    }

    @Nullable
    public final WeakReference<Activity> get_intentActivityReference() {
        return this._intentActivityReference;
    }

    public final void initializeSession(@NotNull ServerRequestSession request) {
        ServerRequestSession serverRequestSession;
        ServerRequestAsyncQueue serverRequestAsyncQueue;
        Intrinsics.checkNotNullParameter(request, "request");
        AppPrefHelper.Companion companion = AppPrefHelper.Companion;
        if (!TextUtils.isEmpty(companion.getPROJECT_ID()) && !TextUtils.isEmpty(companion.getKEY_APPKEY())) {
            if (getSessionInitState() == SESSION_STATE.UNINITIALISED || getSessionInitState() == SESSION_STATE.INITIALISING) {
                setSessionInitState(SESSION_STATE.INITIALISING);
                ServerRequestAsyncQueue serverRequestAsyncQueue2 = this._requestQueue;
                if (serverRequestAsyncQueue2 != null) {
                    serverRequestSession = serverRequestAsyncQueue2.getWhetherAutoInitialized();
                } else {
                    serverRequestSession = null;
                }
                if (serverRequestSession == null && (serverRequestAsyncQueue = this._requestQueue) != null) {
                    serverRequestAsyncQueue.insert(request);
                }
                ServerRequestAsyncQueue serverRequestAsyncQueue3 = this._requestQueue;
                if (serverRequestAsyncQueue3 != null) {
                    serverRequestAsyncQueue3.processNextQueueTask();
                    return;
                }
                return;
            }
            return;
        }
        setSessionInitState(SESSION_STATE.UNINITIALISED);
        TurboLinkLogger.w("Warning: Please enter your projectID in your project`s manifest file.");
    }

    public final void onIntentRead(@NotNull Intent intent, boolean z10) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        setIntentState(INTENT_STATE.READY);
        if (intent.getData() != null) {
            Uri data = intent.getData();
            if (z10) {
                AppPrefHelper.Companion companion = AppPrefHelper.Companion;
                if (companion.getLAST_INTENT_VALUE() == null || !Intrinsics.areEqual(companion.getLAST_INTENT_VALUE(), data)) {
                    companion.setLAST_INTENT_VALUE(data);
                }
            }
            TurboLinkUtil turboLinkUtil = TurboLinkUtil.INSTANCE;
            if (turboLinkUtil.isHttpUri(data)) {
                SDKAccessInfo.INSTANCE.getSdkLaunchEventSequence().put(turboLinkUtil.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.LAUNCH_IN_UNIVERSAL_LINK.getEventSeq()));
                return;
            } else {
                SDKAccessInfo.INSTANCE.getSdkLaunchEventSequence().put(turboLinkUtil.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.LAUNCH_SCHEME.getEventSeq()));
                return;
            }
        }
        AppPrefHelper.Companion.setLAST_INTENT_VALUE(null);
        SDKAccessInfo.INSTANCE.getSdkLaunchEventSequence().put(TurboLinkUtil.INSTANCE.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.LAUNCH.getEventSeq()));
    }

    public final void setCurrentActivity(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this._currentActivityReference = new WeakReference<>(activity);
    }

    public final void setIntentActivity(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this._intentActivityReference = new WeakReference<>(activity);
    }

    public final void setIntentState(@NotNull INTENT_STATE state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this._intentState = state;
    }

    public final void setSessionInitState(@NotNull SESSION_STATE initState) {
        Intrinsics.checkNotNullParameter(initState, "initState");
        this._initSessionState = initState;
    }

    public final void setUserId(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this._userHelper.setUserId(userId);
    }

    public final void setUserInfo(@NotNull String userId, @NotNull String nickName, @NotNull String avatar, @NotNull String[] tags, @NotNull String inviteCode) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(nickName, "nickName");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(inviteCode, "inviteCode");
        this._userHelper.setUserId(userId);
        this._userHelper.setNickName(nickName);
        this._userHelper.setAvatar(avatar);
        this._userHelper.getLevelTag().clear();
        for (String str : tags) {
            this._userHelper.getLevelTag().add(str);
        }
        this._userHelper.setInviteCode(inviteCode);
    }

    public final void setUserInviteCode(@NotNull String code) {
        Intrinsics.checkNotNullParameter(code, "code");
        this._userHelper.setInviteCode(code);
    }

    public final void setUserLevel(@NotNull String level) {
        Intrinsics.checkNotNullParameter(level, "level");
        this._userHelper.getLevelTag().add(level);
    }

    public final void set_currentActivityReference(@Nullable WeakReference<Activity> weakReference) {
        this._currentActivityReference = weakReference;
    }

    public final void set_intentActivityReference(@Nullable WeakReference<Activity> weakReference) {
        this._intentActivityReference = weakReference;
    }

    public final void userLogout() {
        userCompanionObj.cleanParams();
    }

    @Nullable
    public static final synchronized TurboLink autoInstance(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, @Nullable String str4, @Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
        TurboLink autoInstance;
        synchronized (TurboLink.class) {
            autoInstance = Companion.autoInstance(context, str, str2, str3, str4, turboLinkEventCallback);
        }
        return autoInstance;
    }

    @NotNull
    public static final TurboLinkEvent customEvent(@NotNull String str) {
        return Companion.customEvent(str);
    }

    /* compiled from: TurboLink.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Campaign {
        private static boolean fullScreenMode;
        private static boolean goneBack;
        @Nullable
        private static String lastNotLaunchCampaignUrl;
        @Nullable
        private static CampaignWebviewActivity lastOpenWebviewActivity;
        @Nullable
        private static byte[] loadingPic;
        private static boolean nightMode;
        private static boolean screenOrientationAll;
        @NotNull
        public static final Campaign INSTANCE = new Campaign();
        @NotNull
        private static String initTitle = "";
        private static float titleSize = 18.0f;
        @NotNull
        private static CustomParamsProperties customParamsProperties = new CustomParamsProperties();
        @NotNull
        private static String campaignLang = "";
        private static int launchCampaignDelayShowTime = 1;
        @NotNull
        private static HashSet<String> _canLaunchCampaignActivityStack = new HashSet<>();

        private Campaign() {
        }

        public static final boolean closeLoadingOverlay() {
            CampaignWebviewActivity campaignWebviewActivity = lastOpenWebviewActivity;
            if (campaignWebviewActivity != null && campaignWebviewActivity != null) {
                campaignWebviewActivity.closeLoadingOverlay();
                return false;
            }
            return false;
        }

        @NotNull
        public static final CampaignInfo getCampaignInfo(@NotNull String campaignId, @Nullable String str) {
            Intrinsics.checkNotNullParameter(campaignId, "campaignId");
            return new CampaignInfo(campaignId, str);
        }

        public static /* synthetic */ CampaignInfo getCampaignInfo$default(String str, String str2, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                str2 = null;
            }
            return getCampaignInfo(str, str2);
        }

        public static final void loadDelayRedirectUrl(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            if (launchCampaignDelayShowTime < 0 && lastNotLaunchCampaignUrl != null) {
                CampaignLoadURL campaignLoadURL = CampaignLoadURL.INSTANCE;
                String str = lastNotLaunchCampaignUrl;
                if (str == null) {
                    str = "";
                }
                campaignLoadURL.openProcess(1, str, activity);
                INSTANCE.setLastNotLaunchCampaignUrl(null);
            }
        }

        @NotNull
        public static final CampaignBuilder loadUrl(@NotNull Context context, @NotNull String url) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(url, "url");
            SDKAccessInfo.INSTANCE.setCampaignLoadUrl(2);
            return new CampaignBuilder(context, url);
        }

        public static final boolean openLoadingOverlay() {
            CampaignWebviewActivity campaignWebviewActivity = lastOpenWebviewActivity;
            if (campaignWebviewActivity != null && campaignWebviewActivity != null) {
                campaignWebviewActivity.openLoadingOverlay();
                return false;
            }
            return false;
        }

        public static final void reLoadUrl() {
            CampaignWebviewActivity campaignWebviewActivity = lastOpenWebviewActivity;
            if (campaignWebviewActivity != null) {
                if (campaignWebviewActivity != null) {
                    campaignWebviewActivity.reloadCampaign();
                }
                TurboLink.Companion.reSetwebviewGoReloadUrl();
            }
        }

        public static final void setCustomParams(@NotNull CustomParamsProperties customParamsProperties2) {
            Intrinsics.checkNotNullParameter(customParamsProperties2, "customParamsProperties");
            customParamsProperties = customParamsProperties2;
        }

        public static final void setFullScreenMode(boolean z10) {
            fullScreenMode = z10;
        }

        public static final void setGoneBack(boolean z10) {
            goneBack = z10;
        }

        public static final void setInitTitle(@NotNull String title) {
            Intrinsics.checkNotNullParameter(title, "title");
            initTitle = title;
        }

        public static final void setLang(@NotNull String lang) {
            Intrinsics.checkNotNullParameter(lang, "lang");
            campaignLang = lang;
        }

        @NotNull
        public static final Campaign setLaunchCampaignActivity(@NotNull KClass<? extends Object> activityRef) {
            Intrinsics.checkNotNullParameter(activityRef, "activityRef");
            _canLaunchCampaignActivityStack.add(String.valueOf(activityRef.getQualifiedName()));
            return INSTANCE;
        }

        public static final void setLaunchCampaignDelay(int i10) {
            SDKAccessInfo.INSTANCE.setCampaignSetDelay(2);
            launchCampaignDelayShowTime = i10;
        }

        public static final void setLoadingPic(@NotNull Context context, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            loadingPic = TurboLinkUtil.INSTANCE.resourceToByteArray(context, i10);
        }

        public static final void setLoadingPicByByte(@NotNull byte[] imageBytes) {
            Intrinsics.checkNotNullParameter(imageBytes, "imageBytes");
            loadingPic = imageBytes;
        }

        public static final void setNightMode(boolean z10) {
            nightMode = z10;
        }

        public static final void setScreenOrientationAll() {
            screenOrientationAll = true;
        }

        public static final void setTitleSize(float f10) {
            titleSize = f10;
        }

        @NotNull
        public final String getCustomParams() {
            int length = customParamsProperties.length();
            String str = "";
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject = customParamsProperties.getJSONObject(i10);
                str = str + (jSONObject.getString("key") + '$' + jSONObject.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE)) + ',';
            }
            if (!TextUtils.isEmpty(str)) {
                String substring = str.substring(0, str.length() - 1);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                return substring;
            }
            return str;
        }

        public final boolean getFullScreenMode() {
            return fullScreenMode;
        }

        public final boolean getGoneBack() {
            return goneBack;
        }

        @NotNull
        public final String getInitTitle() {
            return initTitle;
        }

        @NotNull
        public final String getLang() {
            return campaignLang;
        }

        @Nullable
        public final String getLastNotLaunchCampaignUrl() {
            return lastNotLaunchCampaignUrl;
        }

        @Nullable
        public final CampaignWebviewActivity getLastOpenWebviewActivity() {
            return lastOpenWebviewActivity;
        }

        @NotNull
        public final HashSet<String> getLaunchCampaignActivity() {
            return _canLaunchCampaignActivityStack;
        }

        public final int getLaunchCampaignDelay() {
            return launchCampaignDelayShowTime;
        }

        @Nullable
        public final byte[] getLoadingPic() {
            return loadingPic;
        }

        public final boolean getNightMode() {
            return nightMode;
        }

        public final boolean getScreenOrientationAll() {
            return screenOrientationAll;
        }

        public final float getTitleSize() {
            return titleSize;
        }

        public final void setLastNotLaunchCampaignUrl(@Nullable String str) {
            lastNotLaunchCampaignUrl = str;
        }

        public final void setLastOpenWebviewActivity(@NotNull CampaignWebviewActivity webviewActivity) {
            Intrinsics.checkNotNullParameter(webviewActivity, "webviewActivity");
            lastOpenWebviewActivity = webviewActivity;
        }

        public static final void reLoadUrl(int i10) {
            TurboLinkLogger.e("this.lastOpenWebviewActivity" + lastOpenWebviewActivity);
            if (lastOpenWebviewActivity != null) {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: ai.turbolink.sdk.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        TurboLink.Campaign.reLoadUrl();
                    }
                }, i10 * 1000);
            }
        }
    }

    /* compiled from: TurboLink.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultEvent {
        @NotNull
        public static final DefaultEvent INSTANCE = new DefaultEvent();

        private DefaultEvent() {
        }

        @NotNull
        public static final TurboLinkEvent addtoCart(@NotNull Activity activity, @NotNull EventAddtoCartProperties addtoCartProperties) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(addtoCartProperties, "addtoCartProperties");
            return new TurboLinkEvent(activity, TurboLinkEventType.DEFAULT, TurboLinkDefaultEvent.ADDTOCART.getEvent()).setAddtoCartProperties(addtoCartProperties);
        }

        @NotNull
        public static final TurboLinkEvent click(@NotNull Activity activity, @NotNull String linkId) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(linkId, "linkId");
            return new TurboLinkEvent(activity, TurboLinkEventType.DEFAULT, TurboLinkDefaultEvent.CLICK.getEvent()).setLinkId(linkId);
        }

        @NotNull
        public static final TurboLinkEvent codeSearch(@NotNull Activity activity, @NotNull String text) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(text, "text");
            if (TurboLink.Companion.isBelongTurboLink(text)) {
                TurboLink.clipboardText = text;
            }
            return new TurboLinkEvent(activity, TurboLinkEventType.DEFAULT, TurboLinkDefaultEvent.CODESEARCH.getEvent());
        }

        @NotNull
        public static final TurboLinkEvent install(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new TurboLinkEvent(activity, TurboLinkEventType.DEFAULT, TurboLinkDefaultEvent.INSTALL.getEvent());
        }

        @NotNull
        public static final TurboLinkEvent login(@NotNull Activity activity, @NotNull String userId, @NotNull String nickName, @NotNull String avatar, @NotNull String[] tags, @NotNull String inviteCode) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(nickName, "nickName");
            Intrinsics.checkNotNullParameter(avatar, "avatar");
            Intrinsics.checkNotNullParameter(tags, "tags");
            Intrinsics.checkNotNullParameter(inviteCode, "inviteCode");
            SDKAccessInfo sDKAccessInfo = SDKAccessInfo.INSTANCE;
            sDKAccessInfo.getSdkLaunchEventSequence().put(TurboLinkUtil.INSTANCE.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.LOGIN.getEventSeq()));
            sDKAccessInfo.setLoginEventStatus(1);
            TurboLinkEvent turboLinkEvent = new TurboLinkEvent(activity, TurboLinkEventType.DEFAULT, TurboLinkDefaultEvent.LOGIN.getEvent());
            TurboLink.Companion.setAppUserInfo(userId, nickName, avatar, tags, inviteCode);
            return turboLinkEvent.setUserId(userId);
        }

        public static /* synthetic */ TurboLinkEvent login$default(Activity activity, String str, String str2, String str3, String[] strArr, String str4, int i10, Object obj) {
            String str5;
            String str6;
            String str7;
            if ((i10 & 4) != 0) {
                str5 = "";
            } else {
                str5 = str2;
            }
            if ((i10 & 8) != 0) {
                str6 = "";
            } else {
                str6 = str3;
            }
            if ((i10 & 16) != 0) {
                strArr = new String[0];
            }
            String[] strArr2 = strArr;
            if ((i10 & 32) != 0) {
                str7 = "";
            } else {
                str7 = str4;
            }
            return login(activity, str, str5, str6, strArr2, str7);
        }

        @NotNull
        public static final TurboLinkEvent logout(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            SDKAccessInfo.INSTANCE.setLogoutEventStatus(1);
            TurboLink companion = TurboLink.Companion.getInstance();
            if (companion != null) {
                companion.userLogout();
            }
            return new TurboLinkEvent(activity, TurboLinkEventType.DEFAULT, TurboLinkDefaultEvent.LOGOUT.getEvent());
        }

        @NotNull
        public static final TurboLinkEvent open(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new TurboLinkEvent(activity, TurboLinkEventType.DEFAULT, TurboLinkDefaultEvent.OPEN.getEvent());
        }

        @NotNull
        public static final TurboLinkEvent register(@NotNull Activity activity, @NotNull String userId, @NotNull String nickName, @NotNull String avatar, @NotNull String[] tags, @NotNull String inviteCode) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(nickName, "nickName");
            Intrinsics.checkNotNullParameter(avatar, "avatar");
            Intrinsics.checkNotNullParameter(tags, "tags");
            Intrinsics.checkNotNullParameter(inviteCode, "inviteCode");
            SDKAccessInfo sDKAccessInfo = SDKAccessInfo.INSTANCE;
            sDKAccessInfo.getSdkLaunchEventSequence().put(TurboLinkUtil.INSTANCE.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.REGISTER.getEventSeq()));
            sDKAccessInfo.setRegisterEventStatus(1);
            TurboLinkEvent turboLinkEvent = new TurboLinkEvent(activity, TurboLinkEventType.DEFAULT, TurboLinkDefaultEvent.REGISTER.getEvent());
            TurboLink.Companion.setAppUserInfo(userId, nickName, avatar, tags, inviteCode);
            return turboLinkEvent.setUserId(userId);
        }

        public static /* synthetic */ TurboLinkEvent register$default(Activity activity, String str, String str2, String str3, String[] strArr, String str4, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                str = "";
            }
            if ((i10 & 4) != 0) {
                str2 = "";
            }
            if ((i10 & 8) != 0) {
                str3 = "";
            }
            if ((i10 & 16) != 0) {
                strArr = new String[0];
            }
            if ((i10 & 32) != 0) {
                str4 = "";
            }
            return register(activity, str, str2, str3, strArr, str4);
        }

        @NotNull
        public static final TurboLinkEvent reopen(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new TurboLinkEvent(activity, TurboLinkEventType.DEFAULT, TurboLinkDefaultEvent.REOPEN.getEvent());
        }

        @NotNull
        public final TurboLinkEvent loadurl(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new TurboLinkEvent(activity, TurboLinkEventType.DEFAULT, TurboLinkDefaultEvent.LOADURL.getEvent());
        }

        @NotNull
        public static final TurboLinkEvent login(@NotNull Activity activity, @NotNull String userId) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(userId, "userId");
            SDKAccessInfo sDKAccessInfo = SDKAccessInfo.INSTANCE;
            sDKAccessInfo.getSdkLaunchEventSequence().put(TurboLinkUtil.INSTANCE.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.LOGIN.getEventSeq()));
            sDKAccessInfo.setLoginEventStatus(1);
            TurboLinkEvent turboLinkEvent = new TurboLinkEvent(activity, TurboLinkEventType.DEFAULT, TurboLinkDefaultEvent.LOGIN.getEvent());
            TurboLink.Companion.setAppUserInfo(userId, "", "", new String[0], "");
            return turboLinkEvent.setUserId(userId);
        }
    }
}
