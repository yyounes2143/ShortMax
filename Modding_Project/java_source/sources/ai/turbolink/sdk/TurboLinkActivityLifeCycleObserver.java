package ai.turbolink.sdk;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.CampaignLoadURL;
import ai.turbolink.sdk.campaign.CampaignWebviewActivity;
import ai.turbolink.sdk.events.TurboLinkEvent;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TurboLinkActivityLifeCycleObserver.kt */
@Metadata
/* loaded from: classes.dex */
public final class TurboLinkActivityLifeCycleObserver implements Application.ActivityLifecycleCallbacks {
    @NotNull
    private HashSet<String> _activitiesStack = new HashSet<>();
    @Nullable
    private TurboLinkEvent.TurboLinkEventCallback _callback;
    private int activityCount;
    private boolean isGotoBackground;

    public TurboLinkActivityLifeCycleObserver(@Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback, boolean z10) {
        this._callback = turboLinkEventCallback == null ? TurboLink.Companion.getEventCallback() : turboLinkEventCallback;
        if (z10) {
            this.activityCount = 1;
        }
    }

    @Nullable
    public final TurboLinkEvent.TurboLinkEventCallback getInstanceEventCallback() {
        return this._callback;
    }

    public final boolean isCurrentActivityLaunchedFromStack() {
        TurboLink companion = TurboLink.Companion.getInstance();
        if (companion != null && companion.getCurrentActivity() != null) {
            return this._activitiesStack.contains(String.valueOf(companion.getCurrentActivity()));
        }
        return false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        TurboLinkLogger.v("onActivityCreated, activity:" + activity);
        AppPrefHelper.Companion companion = AppPrefHelper.Companion;
        Intent intent = activity.getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "activity.intent");
        boolean haveAndIsTurboLinkIntentUrl = companion.haveAndIsTurboLinkIntentUrl(intent);
        TurboLink.Companion companion2 = TurboLink.Companion;
        TurboLink companion3 = companion2.getInstance();
        if (companion3 == null) {
            return;
        }
        Intent intent2 = activity.getIntent();
        Intrinsics.checkNotNullExpressionValue(intent2, "activity.intent");
        companion3.onIntentRead(intent2, haveAndIsTurboLinkIntentUrl);
        if (haveAndIsTurboLinkIntentUrl) {
            companion3.setIntentActivity(activity);
            if (companion3.getSessionInitState() != TurboLink.SESSION_STATE.UNINITIALISED) {
                TurboLink.DefaultEvent.reopen(activity).build(this._callback);
            } else {
                companion2.activitySessionBuilder(activity).withCallback(this._callback).sessionInit();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NotNull Activity activity) {
        WeakReference<Activity> weakReference;
        Intrinsics.checkNotNullParameter(activity, "activity");
        TurboLinkLogger.v("onActivityDestroyed, activity:" + activity + ':' + activity);
        TurboLink companion = TurboLink.Companion.getInstance();
        if (companion == null) {
            return;
        }
        if (this.isGotoBackground) {
            this.isGotoBackground = false;
        }
        if (Intrinsics.areEqual(companion.getCurrentActivity(), activity) && (weakReference = companion.get_currentActivityReference()) != null) {
            weakReference.clear();
        }
        this._activitiesStack.remove(activity.toString());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        TurboLinkLogger.v("onActivityPaused, activity:" + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        TurboLinkLogger.v("onActivityResumed, activity:" + activity + ':' + activity.getIntent().getData());
        TurboLink.Companion companion = TurboLink.Companion;
        TurboLink companion2 = companion.getInstance();
        if (companion2 == null) {
            return;
        }
        companion2.setCurrentActivity(activity);
        if (this.isGotoBackground) {
            TurboLink.SessionObj sessionObj = TurboLink.SessionObj.INSTANCE;
            sessionObj.setAndGetSessionId();
            sessionObj.setLastBackgroundTime(0L);
        }
        AppPrefHelper.Companion companion3 = AppPrefHelper.Companion;
        Intent intent = activity.getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "activity.intent");
        boolean haveAndIsTurboLinkIntentUrl = companion3.haveAndIsTurboLinkIntentUrl(intent);
        if (!companion.getDisableAutoSessionInitialization() && !haveAndIsTurboLinkIntentUrl) {
            if (companion2.getSessionInitState() == TurboLink.SESSION_STATE.UNINITIALISED) {
                companion.activitySessionBuilder(activity).isAutoInitialization(true).withCallback(this._callback).sessionInit();
            } else if (this.isGotoBackground && companion3.getLAST_INTENT_VALUE() == null) {
                this.isGotoBackground = false;
                if (!(activity instanceof CampaignWebviewActivity)) {
                    TurboLink.DefaultEvent.reopen(activity).build(this._callback);
                }
            }
        } else if (haveAndIsTurboLinkIntentUrl && companion3.getLAST_INTENT_VALUE() == null && this.isGotoBackground) {
            Intent intent2 = activity.getIntent();
            Intrinsics.checkNotNullExpressionValue(intent2, "activity.intent");
            companion2.onIntentRead(intent2, haveAndIsTurboLinkIntentUrl);
            this.isGotoBackground = false;
            activity.getIntent().setData(null);
            companion2.setIntentActivity(activity);
            TurboLink.DefaultEvent.reopen(activity).build(this._callback);
        }
        TurboLink.Campaign campaign = TurboLink.Campaign.INSTANCE;
        HashSet<String> launchCampaignActivity = campaign.getLaunchCampaignActivity();
        String lastNotLaunchCampaignUrl = campaign.getLastNotLaunchCampaignUrl();
        if (lastNotLaunchCampaignUrl != null && launchCampaignActivity.size() > 0 && launchCampaignActivity.contains(activity.getClass().getName())) {
            campaign.setLastNotLaunchCampaignUrl(null);
            CampaignLoadURL.INSTANCE.openProcess(campaign.getLaunchCampaignDelay(), lastNotLaunchCampaignUrl, activity);
        }
        this._activitiesStack.add(activity.toString());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
        TurboLinkLogger.v("onActivitySaveInstanceState, activity:" + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        TurboLinkLogger.v("onActivityStarted, activity:" + activity);
        this.activityCount = this.activityCount + 1;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NotNull Activity activity) {
        int i10;
        Intrinsics.checkNotNullParameter(activity, "activity");
        TurboLinkLogger.v("onActivityStopped, activity:" + activity + ",activityCount:" + this.activityCount);
        int i11 = this.activityCount;
        if (i11 <= 0) {
            i10 = 0;
        } else {
            i10 = i11 - 1;
        }
        this.activityCount = i10;
        if (i10 < 1) {
            this.isGotoBackground = true;
            AppPrefHelper.Companion.setLAST_INTENT_VALUE(null);
            TurboLink.SessionObj.INSTANCE.setLastBackgroundTime(System.currentTimeMillis());
        }
    }

    public final void setInstanceEventCallback(@NotNull TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
        Intrinsics.checkNotNullParameter(turboLinkEventCallback, "turboLinkEventCallback");
        this._callback = turboLinkEventCallback;
    }
}
