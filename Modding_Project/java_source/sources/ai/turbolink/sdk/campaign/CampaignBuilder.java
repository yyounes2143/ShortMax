package ai.turbolink.sdk.campaign;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.properties.CampaignCallbackProperties;
import ai.turbolink.sdk.campaign.properties.ClientRewardsProperties;
import ai.turbolink.sdk.campaign.properties.ListenerEventProperties;
import ai.turbolink.sdk.campaign.properties.ListenerPointProperties;
import ai.turbolink.sdk.campaign.properties.ListenerRedirectProperties;
import ai.turbolink.sdk.campaign.properties.ListenerShareProperties;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CampaignBuilder.kt */
@Metadata
/* loaded from: classes.dex */
public final class CampaignBuilder {
    @Nullable
    private KClass<? extends Object> _appLoginActivityRef;
    @Nullable
    private KClass<? extends Object> _appRegActivityRef;
    @NotNull
    private final Context _context;
    @Nullable
    private EventListenerCallback eventListenerCallback;
    @NotNull
    private String url;

    /* compiled from: CampaignBuilder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface CampaignCreateCallback {
        void onSuccess(@NotNull Context context, @NotNull CampaignCallbackProperties campaignCallbackProperties);
    }

    /* compiled from: CampaignBuilder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface CampaignDestroyCallback {
        void onSuccess(@NotNull Context context, @NotNull CampaignCallbackProperties campaignCallbackProperties);
    }

    /* compiled from: CampaignBuilder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface CampaignPauseCallback {
        void onSuccess(@NotNull Context context, @NotNull CampaignCallbackProperties campaignCallbackProperties);
    }

    /* compiled from: CampaignBuilder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface CampaignResumeCallback {
        void onSuccess(@NotNull Context context, @NotNull CampaignCallbackProperties campaignCallbackProperties);
    }

    /* compiled from: CampaignBuilder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface ClientRewardsListener {
        void onSuccess(@Nullable Context context, @NotNull ClientRewardsProperties clientRewardsProperties);
    }

    /* compiled from: CampaignBuilder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface EventListenerCallback {
        void onSuccess(@NotNull Context context, @NotNull ListenerEventProperties listenerEventProperties);
    }

    /* compiled from: CampaignBuilder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface LoginListenerCallback {
        void onSuccess(@NotNull Context context);
    }

    /* compiled from: CampaignBuilder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface PointListenerCallback {
        void onSuccess(@NotNull Context context, @NotNull ListenerPointProperties listenerPointProperties);
    }

    /* compiled from: CampaignBuilder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface RedirectListenerCallback {
        void onSuccess(@NotNull Context context, @NotNull ListenerRedirectProperties listenerRedirectProperties);
    }

    /* compiled from: CampaignBuilder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface RegListenerCallback {
        void onSuccess(@NotNull Context context);
    }

    /* compiled from: CampaignBuilder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface ShareListenerCallback {
        void onSuccess(@NotNull Context context, @NotNull ListenerShareProperties listenerShareProperties);
    }

    public CampaignBuilder(@NotNull Context context, @NotNull String url) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        this._context = context;
        this.url = url;
    }

    public final void build() {
        TurboLink.Companion companion = TurboLink.Companion;
        if (companion.getInstance() == null) {
            TurboLinkLogger.v("TurboLink is not setup properly. make sure to call autoInstance.");
        } else if (TextUtils.isEmpty(this.url)) {
            TurboLinkLogger.e("The campaign URL passed cannot be empty.");
        } else {
            Intent intent = new Intent(this._context, CampaignWebviewActivity.class);
            intent.putExtra(AppPrefHelper.Companion.getWEBVIEW_INTENT_EXTRA_KEY(), this.url);
            companion.setLastOpenWebViewUrl(this.url);
            Context context = this._context;
            if (context instanceof Activity) {
                context.startActivity(intent);
            } else {
                TurboLinkLogger.e("The context is not an activity object.");
            }
        }
    }

    @Nullable
    public final KClass<? extends Object> getLoginActivityRef() {
        return this._appLoginActivityRef;
    }

    @Nullable
    public final KClass<? extends Object> getRegActivityRef() {
        return this._appRegActivityRef;
    }

    @NotNull
    public final CampaignBuilder withEventListenerCallback(@NotNull EventListenerCallback eventListenerCallback) {
        Intrinsics.checkNotNullParameter(eventListenerCallback, "eventListenerCallback");
        this.eventListenerCallback = eventListenerCallback;
        TurboLink.Companion.withEventListenerCallback(eventListenerCallback);
        return this;
    }

    @NotNull
    public final CampaignBuilder withLoginActivityRef(@NotNull KClass<? extends Object> activityRef) {
        Intrinsics.checkNotNullParameter(activityRef, "activityRef");
        this._appLoginActivityRef = activityRef;
        TurboLink.Companion.withLoginActivity(activityRef);
        return this;
    }

    @NotNull
    public final CampaignBuilder withRegActivityRef(@NotNull KClass<? extends Object> activityRef) {
        Intrinsics.checkNotNullParameter(activityRef, "activityRef");
        this._appRegActivityRef = activityRef;
        TurboLink.Companion.withRegActivity(activityRef);
        return this;
    }
}
