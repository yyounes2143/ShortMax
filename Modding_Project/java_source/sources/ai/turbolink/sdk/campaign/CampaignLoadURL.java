package ai.turbolink.sdk.campaign;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.request.ServerResponse;
import ai.turbolink.sdk.request.TurboLinkCampaignEventType;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CampaignLoadURL.kt */
@Metadata
/* loaded from: classes.dex */
public final class CampaignLoadURL {
    @NotNull
    public static final CampaignLoadURL INSTANCE = new CampaignLoadURL();

    private CampaignLoadURL() {
    }

    public static /* synthetic */ void appLaunch$default(CampaignLoadURL campaignLoadURL, ServerResponse serverResponse, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        campaignLoadURL.appLaunch(serverResponse, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: openProcess$lambda-0  reason: not valid java name */
    public static final void m1openProcess$lambda0(CampaignLoadURL this$0, int i10, String toUrl, Activity activity) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(toUrl, "$toUrl");
        this$0.startCampaignView(i10, toUrl, activity);
    }

    private final void startCampaignView(int i10, String str, Activity activity) {
        String str2;
        if (i10 > 0) {
            TurboLink companion = TurboLink.Companion.getInstance();
            if (companion == null) {
                TurboLinkLogger.w("The turboLink object wat not initialized.");
                return;
            }
            Activity currentActivity = companion.getCurrentActivity();
            TurboLink.Campaign campaign = TurboLink.Campaign.INSTANCE;
            HashSet<String> launchCampaignActivity = campaign.getLaunchCampaignActivity();
            if (launchCampaignActivity.size() > 0) {
                if (currentActivity != null) {
                    str2 = currentActivity.getClass().getName();
                } else {
                    str2 = null;
                }
                if (!CollectionsKt.g0(launchCampaignActivity, str2)) {
                    campaign.setLastNotLaunchCampaignUrl(str);
                    return;
                }
            }
        }
        try {
            Intent intent = new Intent(activity, CampaignWebviewActivity.class);
            intent.putExtra(AppPrefHelper.Companion.getWEBVIEW_INTENT_EXTRA_KEY(), str);
            intent.setFlags(67108864);
            TurboLink.Companion.setLastOpenWebViewUrl(str);
            TurboLink.Campaign.INSTANCE.setLastNotLaunchCampaignUrl(null);
            if (activity != null) {
                activity.startActivity(intent);
            }
        } catch (Exception e10) {
            TurboLinkLogger.e("Start campaign activity exception. exception info:" + e10);
        }
    }

    public final void appLaunch(@NotNull ServerResponse response, boolean z10) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        TurboLink companion = TurboLink.Companion.getInstance();
        if (companion == null) {
            TurboLinkLogger.w("The turboLink object wat not initialized.");
            return;
        }
        String customKey = response.getEventResponse().getCustomKey(TurboLinkCampaignEventType.PRECAMPAIGN.getType());
        String customKey2 = response.getEventResponse().getCustomKey(TurboLinkCampaignEventType.CODECAMPAIGN.getType());
        if (!TextUtils.isEmpty(customKey2)) {
            customKey = customKey2;
        }
        if (!TextUtils.isEmpty(customKey)) {
            TurboLink.Campaign campaign = TurboLink.Campaign.INSTANCE;
            int launchCampaignDelay = campaign.getLaunchCampaignDelay();
            HashSet<String> launchCampaignActivity = campaign.getLaunchCampaignActivity();
            int size = launchCampaignActivity.size();
            Activity currentActivity = companion.getCurrentActivity();
            Activity intentActivity = companion.getIntentActivity();
            if (z10) {
                launchCampaignDelay = 0;
            }
            if (size > 0) {
                String str2 = null;
                if (currentActivity != null) {
                    str = currentActivity.getClass().getName();
                } else {
                    str = null;
                }
                if (!CollectionsKt.g0(launchCampaignActivity, str)) {
                    if (intentActivity != null) {
                        str2 = intentActivity.getClass().getName();
                    }
                    if (!CollectionsKt.g0(launchCampaignActivity, str2)) {
                        campaign.setLastNotLaunchCampaignUrl(customKey);
                        return;
                    }
                }
                openProcess(launchCampaignDelay, customKey, currentActivity);
                return;
            }
            openProcess(launchCampaignDelay, customKey, currentActivity);
        }
    }

    public final void openProcess(final int i10, @NotNull final String toUrl, @Nullable final Activity activity) {
        Intrinsics.checkNotNullParameter(toUrl, "toUrl");
        if (i10 > 0) {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: ai.turbolink.sdk.campaign.a
                @Override // java.lang.Runnable
                public final void run() {
                    CampaignLoadURL.m1openProcess$lambda0(CampaignLoadURL.this, i10, toUrl, activity);
                }
            }, i10 * 1000);
        } else if (i10 == 0) {
            startCampaignView(i10, toUrl, activity);
        } else {
            TurboLink.Campaign.INSTANCE.setLastNotLaunchCampaignUrl(toUrl);
        }
    }
}
