package ai.turbolink.sdk.helpers;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.device.DeviceId;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppPrefHelper.kt */
@Metadata
/* loaded from: classes.dex */
public final class AppPrefHelper {
    @NotNull
    private static final String APP_CAMPAIGN_BLACKBOX_TAG;
    @NotNull
    private static final String APP_CAMPAIGN_CUSTOM_PARAMS;
    @NotNull
    private static final String APP_CAMPAIGN_FULL_SCREEN;
    @NotNull
    private static final String APP_CAMPAIGN_LANGUAGE_TAG;
    @NotNull
    private static final String APP_CAMPAIGN_LV_TAG;
    @NotNull
    private static final String APP_CAMPAIGN_PLATFORM_TAG;
    @NotNull
    private static final String APP_CAMPAIGN_TIME_TAG;
    @NotNull
    private static final String APP_CAMPAIGN_TOKEN_TAG;
    @NotNull
    private static final String APP_CAMPAIGN_USER_TAG;
    @NotNull
    private static final String APP_CAMPAIGN_VERSION_TAG;
    private static final int CONNECT_TIMEOUT;
    @NotNull
    private static final String CURRENT_ENCRYPT_VERSION;
    private static final int EXECUTE_TIMEOUT;
    @NotNull
    private static final String[] IS_TURBOLINK_LINK_IDENTIFY;
    @NotNull
    private static final String[] IS_TURBOLINK_URL_IDENTIFY;
    @NotNull
    private static String KEY_APPKEY;
    @NotNull
    private static String KEY_APPSECRET;
    @NotNull
    private static String KEY_SESSION_ID;
    @Nullable
    private static Uri LAST_INTENT_VALUE;
    private static final int MAX_RETRIES;
    @NotNull
    private static final String NO_STRING_VALUE;
    @NotNull
    private static String PROJECT_ID;
    private static final int READ_TIMEOUT;
    private static final int RETRIES_INTERVAL;
    @NotNull
    private static final String[] TURBOLINK_ATTRIBUTION_DOMAIN;
    @NotNull
    private static final String TURBOLINK_BASE_URL_V2;
    @NotNull
    private static final String TURBOLINK_BASE_URL_V3;
    @NotNull
    private static final String WEBVIEW_INTENT_EXTRA_KEY;
    @Nullable
    private static AppPrefHelper _appPrefHelper;
    @NotNull
    private final String SHARED_PREFE_FILE;
    @NotNull
    private final SharedPreferences _appSharedPreferences;
    @NotNull
    private final SharedPreferences.Editor _appSharedpreferencesEditor;
    @NotNull
    private final Context _context;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TURBOLINK_BASE_URL_V1 = "https://www.allapp.link/";

    /* compiled from: AppPrefHelper.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getAPP_CAMPAIGN_BLACKBOX_TAG() {
            return AppPrefHelper.APP_CAMPAIGN_BLACKBOX_TAG;
        }

        @NotNull
        public final String getAPP_CAMPAIGN_CUSTOM_PARAMS() {
            return AppPrefHelper.APP_CAMPAIGN_CUSTOM_PARAMS;
        }

        @NotNull
        public final String getAPP_CAMPAIGN_FULL_SCREEN() {
            return AppPrefHelper.APP_CAMPAIGN_FULL_SCREEN;
        }

        @NotNull
        public final String getAPP_CAMPAIGN_LANGUAGE_TAG() {
            return AppPrefHelper.APP_CAMPAIGN_LANGUAGE_TAG;
        }

        @NotNull
        public final String getAPP_CAMPAIGN_LV_TAG() {
            return AppPrefHelper.APP_CAMPAIGN_LV_TAG;
        }

        @NotNull
        public final String getAPP_CAMPAIGN_PLATFORM_TAG() {
            return AppPrefHelper.APP_CAMPAIGN_PLATFORM_TAG;
        }

        @NotNull
        public final String getAPP_CAMPAIGN_TIME_TAG() {
            return AppPrefHelper.APP_CAMPAIGN_TIME_TAG;
        }

        @NotNull
        public final String getAPP_CAMPAIGN_TOKEN_TAG() {
            return AppPrefHelper.APP_CAMPAIGN_TOKEN_TAG;
        }

        @NotNull
        public final String getAPP_CAMPAIGN_USER_TAG() {
            return AppPrefHelper.APP_CAMPAIGN_USER_TAG;
        }

        @NotNull
        public final String getAPP_CAMPAIGN_VERSION_TAG() {
            return AppPrefHelper.APP_CAMPAIGN_VERSION_TAG;
        }

        public final int getCONNECT_TIMEOUT() {
            return AppPrefHelper.CONNECT_TIMEOUT;
        }

        @NotNull
        public final String getCURRENT_ENCRYPT_VERSION() {
            return AppPrefHelper.CURRENT_ENCRYPT_VERSION;
        }

        public final int getEXECUTE_TIMEOUT() {
            return AppPrefHelper.EXECUTE_TIMEOUT;
        }

        @NotNull
        public final String[] getIS_TURBOLINK_LINK_IDENTIFY() {
            return AppPrefHelper.IS_TURBOLINK_LINK_IDENTIFY;
        }

        @NotNull
        public final String[] getIS_TURBOLINK_URL_IDENTIFY() {
            return AppPrefHelper.IS_TURBOLINK_URL_IDENTIFY;
        }

        @Nullable
        public final AppPrefHelper getInstance(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (get_appPrefHelper() == null) {
                set_appPrefHelper(new AppPrefHelper(context));
            }
            return get_appPrefHelper();
        }

        @NotNull
        public final String getKEY_APPKEY() {
            return AppPrefHelper.KEY_APPKEY;
        }

        @NotNull
        public final String getKEY_APPSECRET() {
            return AppPrefHelper.KEY_APPSECRET;
        }

        @NotNull
        public final String getKEY_SESSION_ID() {
            return AppPrefHelper.KEY_SESSION_ID;
        }

        @Nullable
        public final Uri getLAST_INTENT_VALUE() {
            return AppPrefHelper.LAST_INTENT_VALUE;
        }

        public final int getMAX_RETRIES() {
            return AppPrefHelper.MAX_RETRIES;
        }

        @NotNull
        public final String getNO_STRING_VALUE() {
            return AppPrefHelper.NO_STRING_VALUE;
        }

        @NotNull
        public final String getPROJECT_ID() {
            return AppPrefHelper.PROJECT_ID;
        }

        public final int getREAD_TIMEOUT() {
            return AppPrefHelper.READ_TIMEOUT;
        }

        public final int getRETRIES_INTERVAL() {
            return AppPrefHelper.RETRIES_INTERVAL;
        }

        @NotNull
        public final String[] getTURBOLINK_ATTRIBUTION_DOMAIN() {
            return AppPrefHelper.TURBOLINK_ATTRIBUTION_DOMAIN;
        }

        @NotNull
        public final String getTURBOLINK_BASE_URL_V1() {
            return AppPrefHelper.TURBOLINK_BASE_URL_V1;
        }

        @NotNull
        public final String getTURBOLINK_BASE_URL_V2() {
            return AppPrefHelper.TURBOLINK_BASE_URL_V2;
        }

        @NotNull
        public final String getTURBOLINK_BASE_URL_V3() {
            return AppPrefHelper.TURBOLINK_BASE_URL_V3;
        }

        @NotNull
        public final String getWEBVIEW_INTENT_EXTRA_KEY() {
            return AppPrefHelper.WEBVIEW_INTENT_EXTRA_KEY;
        }

        @Nullable
        public final AppPrefHelper get_appPrefHelper() {
            return AppPrefHelper._appPrefHelper;
        }

        public final boolean haveAndIsTurboLinkIntentUrl(@NotNull Intent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (intent.getData() != null) {
                for (String str : AppPrefHelper.Companion.getTURBOLINK_ATTRIBUTION_DOMAIN()) {
                    if (StringsKt.b0(String.valueOf(intent.getData()), str, false, 2, null)) {
                        return true;
                    }
                }
            }
            return false;
        }

        public final void setKEY_APPKEY(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            AppPrefHelper.KEY_APPKEY = str;
        }

        public final void setKEY_APPSECRET(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            AppPrefHelper.KEY_APPSECRET = str;
        }

        public final void setKEY_SESSION_ID(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            AppPrefHelper.KEY_SESSION_ID = str;
        }

        public final void setLAST_INTENT_VALUE(@Nullable Uri uri) {
            AppPrefHelper.LAST_INTENT_VALUE = uri;
        }

        public final void setPROJECT_ID(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            AppPrefHelper.PROJECT_ID = str;
        }

        public final void set_appPrefHelper(@Nullable AppPrefHelper appPrefHelper) {
            AppPrefHelper._appPrefHelper = appPrefHelper;
        }

        private Companion() {
        }
    }

    static {
        String str;
        String str2;
        TurboLink.Companion companion = TurboLink.Companion;
        if (Intrinsics.areEqual(companion.getRunEnvironment(), "test")) {
            str = "https://test.allapp.link/v2/";
        } else {
            str = "https://www.allapp.link/v2/";
        }
        TURBOLINK_BASE_URL_V2 = str;
        if (Intrinsics.areEqual(companion.getRunEnvironment(), "test")) {
            str2 = "https://test.allapp.link/v3/";
        } else {
            str2 = "https://www.allapp.link/v3/";
        }
        TURBOLINK_BASE_URL_V3 = str2;
        TURBOLINK_ATTRIBUTION_DOMAIN = new String[]{"allapp", "branchcn", "turbolink"};
        MAX_RETRIES = 3;
        RETRIES_INTERVAL = 1000;
        CONNECT_TIMEOUT = 5000;
        READ_TIMEOUT = 5000;
        EXECUTE_TIMEOUT = 5000;
        KEY_APPKEY = "";
        KEY_APPSECRET = "";
        KEY_SESSION_ID = "tl_session_id";
        PROJECT_ID = "";
        NO_STRING_VALUE = "";
        IS_TURBOLINK_LINK_IDENTIFY = new String[]{"$", "¥", "￥", "allapp", "branchcn", "turbolink", "c-"};
        IS_TURBOLINK_URL_IDENTIFY = new String[]{"allapp", "branchcn", "turbolink"};
        WEBVIEW_INTENT_EXTRA_KEY = "tl_webview_extra_key";
        CURRENT_ENCRYPT_VERSION = "1.2.0";
        APP_CAMPAIGN_USER_TAG = TTVideoEngineInterface.PLAY_API_KEY_USERID;
        APP_CAMPAIGN_LV_TAG = "lv";
        APP_CAMPAIGN_LANGUAGE_TAG = "lg";
        APP_CAMPAIGN_TIME_TAG = CrashHianalyticsData.TIME;
        APP_CAMPAIGN_BLACKBOX_TAG = "blackbox";
        APP_CAMPAIGN_VERSION_TAG = "version";
        APP_CAMPAIGN_PLATFORM_TAG = "platform";
        APP_CAMPAIGN_TOKEN_TAG = BidResponsed.KEY_TOKEN;
        APP_CAMPAIGN_FULL_SCREEN = "tl_full";
        APP_CAMPAIGN_CUSTOM_PARAMS = "tl_cps";
    }

    public AppPrefHelper(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.SHARED_PREFE_FILE = "turboLink_sdk_shared_pref";
        this._context = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("turboLink_sdk_shared_pref", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…LE, Context.MODE_PRIVATE)");
        this._appSharedPreferences = sharedPreferences;
        SharedPreferences.Editor edit = sharedPreferences.edit();
        Intrinsics.checkNotNullExpressionValue(edit, "_appSharedPreferences.edit()");
        this._appSharedpreferencesEditor = edit;
    }

    @Nullable
    public final String getString(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this._appSharedPreferences.getString(key, null);
    }

    public final boolean isAppNewInstall() {
        if (TextUtils.isEmpty(getString(DeviceId.Companion.getKEY_TURBOLINK_BUNDLE_DEVICEID()))) {
            return true;
        }
        return false;
    }

    public final boolean setAppKey(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        KEY_APPKEY = key;
        return true;
    }

    public final boolean setAppSecret(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        KEY_APPSECRET = key;
        return true;
    }

    public final boolean setProjectID(@NotNull String projectId) {
        Intrinsics.checkNotNullParameter(projectId, "projectId");
        PROJECT_ID = projectId;
        return true;
    }

    public final void setString(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this._appSharedpreferencesEditor.putString(key, value).apply();
    }
}
