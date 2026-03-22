package ai.turbolink.sdk.request.assistance;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.properties.CampaignInfoProperties;
import ai.turbolink.sdk.device.SystemObserver;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.request.ServerRequestPath;
import ai.turbolink.sdk.request.ServerRequestSync;
import ai.turbolink.sdk.request.campaign.CampaignInfo;
import ai.turbolink.sdk.utils.TurboLinkUtil;
import android.content.Context;
import com.applovin.sdk.AppLovinEventTypes;
import com.bytedance.applog.game.GameReportHelper;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import com.ss.ttm.player.MediaFormat;
import gt.g;
import gt.q0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: SDKVerify.kt */
@Metadata
/* loaded from: classes.dex */
public final class SDKVerify {
    @NotNull
    public static final SDKVerify INSTANCE = new SDKVerify();
    @NotNull
    private static final String url = AppPrefHelper.Companion.getTURBOLINK_BASE_URL_V2() + ServerRequestPath.POST_SDK_VERIFY_INFO.getPath();

    /* compiled from: SDKVerify.kt */
    @Metadata
    /* loaded from: classes.dex */
    public enum SDKLaunchEventSeq {
        LAUNCH("launch"),
        LAUNCH_SCHEME("launchInScheme"),
        LAUNCH_IN_UNIVERSAL_LINK("launchInUniversalLink"),
        SET_USER_ID("setUserId"),
        SET_USER_ID_EMPTY("setUserIdEmpty"),
        SET_LAUNCH_CALLBACK("setLaunchCallBack"),
        DELAY_INIT("delayInit"),
        INIT_SESSION("initSession"),
        MATCH_LINK("matchLink"),
        RUN_CALLBACK_FUNC("runCallBackFunc"),
        LOGIN(AppLovinEventTypes.USER_LOGGED_IN),
        REGISTER(GameReportHelper.REGISTER);
        
        @NotNull
        private final String eventSeq;

        SDKLaunchEventSeq(String str) {
            this.eventSeq = str;
        }

        @NotNull
        public final String getEventSeq() {
            return this.eventSeq;
        }
    }

    private SDKVerify() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void check() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("project_id", AppPrefHelper.Companion.getPROJECT_ID());
        jSONObject.put("android", getAndroidObj());
        ServerRequestSync.INSTANCE.doFreedomReq(url, jSONObject, new CampaignInfo.TurboLinkCampaignCallback() { // from class: ai.turbolink.sdk.request.assistance.SDKVerify$check$1
            @Override // ai.turbolink.sdk.request.campaign.CampaignInfo.TurboLinkCampaignCallback
            public void onFailure(int i10, @NotNull String msg) {
                Intrinsics.checkNotNullParameter(msg, "msg");
            }

            @Override // ai.turbolink.sdk.request.campaign.CampaignInfo.TurboLinkCampaignCallback
            public void onSuccess(@NotNull CampaignInfoProperties response) {
                Intrinsics.checkNotNullParameter(response, "response");
            }
        });
    }

    private final JSONObject getAndroidObj() {
        String str;
        String str2;
        Context context;
        JSONObject jSONObject = new JSONObject();
        TurboLinkUtil turboLinkUtil = TurboLinkUtil.INSTANCE;
        AppPrefHelper.Companion companion = AppPrefHelper.Companion;
        jSONObject.put("app_key", turboLinkUtil.getMD5(companion.getKEY_APPKEY()));
        jSONObject.put("app_secret", turboLinkUtil.getMD5(companion.getKEY_APPSECRET()));
        TurboLink.SDKAccessInfo sDKAccessInfo = TurboLink.SDKAccessInfo.INSTANCE;
        jSONObject.put("enable_delay_init", sDKAccessInfo.getEnableDelayInit());
        jSONObject.put("install_event_status", sDKAccessInfo.getInstallEventStatus());
        jSONObject.put(MediaFormat.KEY_LANGUAGE, sDKAccessInfo.getAppLanguage());
        TurboLink.Companion companion2 = TurboLink.Companion;
        jSONObject.put(HianalyticsBaseData.SDK_TYPE, companion2.getSdkType());
        jSONObject.put("package_name", sDKAccessInfo.getPackageName());
        jSONObject.put("login_event_status", sDKAccessInfo.getLoginEventStatus());
        jSONObject.put("logout_event_status", sDKAccessInfo.getLogoutEventStatus());
        jSONObject.put("register_event_status", sDKAccessInfo.getRegisterEventStatus());
        jSONObject.put("set_callback_before_init", sDKAccessInfo.getSetCallbackBeforeInit());
        if (companion2.getInstance() != null) {
            TurboLink companion3 = companion2.getInstance();
            if (companion3 != null) {
                context = companion3.getApplicationContext();
            } else {
                context = null;
            }
            if (context != null) {
                TurboLink.SessionObj sessionObj = TurboLink.SessionObj.INSTANCE;
                str = turboLinkUtil.checkExistScheme(context, sessionObj.getVerifyScheme());
                str2 = turboLinkUtil.checkExistAppLinks(context, sessionObj.getVerifyAppLinks());
                jSONObject.put("device_id", SystemObserver.Companion.getDeviceId(context));
                sDKAccessInfo.getSchemes().put(str);
                sDKAccessInfo.getAppLinks().put(str2);
                jSONObject.put("schemes", sDKAccessInfo.getSchemes());
                jSONObject.put("app_links", sDKAccessInfo.getAppLinks());
                jSONObject.put("session_record", turboLinkUtil.getJsonArrayTopItems(sDKAccessInfo.getSdkLaunchEventSequence(), 20));
                return jSONObject;
            }
        }
        str = "";
        str2 = "";
        sDKAccessInfo.getSchemes().put(str);
        sDKAccessInfo.getAppLinks().put(str2);
        jSONObject.put("schemes", sDKAccessInfo.getSchemes());
        jSONObject.put("app_links", sDKAccessInfo.getAppLinks());
        jSONObject.put("session_record", turboLinkUtil.getJsonArrayTopItems(sDKAccessInfo.getSdkLaunchEventSequence(), 20));
        return jSONObject;
    }

    public final void launchCheck() {
        g.d(i.a(q0.b()), null, null, new SDKVerify$launchCheck$1(null), 3, null);
    }
}
