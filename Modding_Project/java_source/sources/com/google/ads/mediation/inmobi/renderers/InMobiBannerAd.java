package com.google.ads.mediation.inmobi.renderers;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdViewHolder;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiBannerWrapper;
import com.google.ads.mediation.inmobi.InMobiConstants;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.InMobiMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.WatermarkData;
import com.inmobi.ads.listeners.BannerAdEventListener;
import java.util.Map;
/* loaded from: classes4.dex */
public abstract class InMobiBannerAd extends BannerAdEventListener implements MediationBannerAd {
    private InMobiAdFactory inMobiAdFactory;
    private InMobiAdViewHolder inMobiAdViewHolder;
    protected InMobiInitializer inMobiInitializer;
    protected final MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback;
    private MediationBannerAdCallback mediationBannerAdCallback;
    protected final MediationBannerAdConfiguration mediationBannerAdConfiguration;

    public InMobiBannerAd(@NonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @NonNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback, @NonNull InMobiInitializer inMobiInitializer, @NonNull InMobiAdFactory inMobiAdFactory) {
        this.mediationBannerAdConfiguration = mediationBannerAdConfiguration;
        this.mediationAdLoadCallback = mediationAdLoadCallback;
        this.inMobiInitializer = inMobiInitializer;
        this.inMobiAdFactory = inMobiAdFactory;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void createAndLoadBannerAd(Context context, long j10, AdSize adSize) {
        InMobiAdapterUtils.setIsAgeRestricted();
        InMobiAdapterUtils.configureGlobalTargeting(this.mediationBannerAdConfiguration.getMediationExtras());
        InMobiBannerWrapper createInMobiBannerWrapper = this.inMobiAdFactory.createInMobiBannerWrapper(context, Long.valueOf(j10));
        createInMobiBannerWrapper.setEnableAutoRefresh(Boolean.FALSE);
        createInMobiBannerWrapper.setAnimationType(InMobiBanner.AnimationType.ANIMATION_OFF);
        createInMobiBannerWrapper.setListener(this);
        String watermark = this.mediationBannerAdConfiguration.getWatermark();
        if (!TextUtils.isEmpty(watermark)) {
            createInMobiBannerWrapper.setWatermarkData(new WatermarkData(watermark, 0.3f));
        }
        InMobiAdViewHolder createInMobiAdViewHolder = this.inMobiAdFactory.createInMobiAdViewHolder(context);
        this.inMobiAdViewHolder = createInMobiAdViewHolder;
        createInMobiAdViewHolder.setLayoutParams(new FrameLayout.LayoutParams(adSize.getWidthInPixels(context), adSize.getHeightInPixels(context)));
        createInMobiBannerWrapper.setLayoutParams(new LinearLayout.LayoutParams(adSize.getWidthInPixels(context), adSize.getHeightInPixels(context)));
        this.inMobiAdViewHolder.addView(createInMobiBannerWrapper);
        internalLoadAd(createInMobiBannerWrapper);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    @NonNull
    public View getView() {
        return this.inMobiAdViewHolder.getFrameLayout();
    }

    protected abstract void internalLoadAd(InMobiBannerWrapper inMobiBannerWrapper);

    public abstract void loadAd();

    @Override // com.inmobi.ads.listeners.AdEventListener
    public /* bridge */ /* synthetic */ void onAdClicked(@NonNull InMobiBanner inMobiBanner, Map map) {
        onAdClicked2(inMobiBanner, (Map<Object, Object>) map);
    }

    @Override // com.inmobi.ads.listeners.BannerAdEventListener
    public void onAdDismissed(@NonNull InMobiBanner inMobiBanner) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.onAdClosed();
        }
    }

    @Override // com.inmobi.ads.listeners.BannerAdEventListener
    public void onAdDisplayed(@NonNull InMobiBanner inMobiBanner) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.onAdOpened();
        }
    }

    @Override // com.inmobi.ads.listeners.BannerAdEventListener
    public void onUserLeftApplication(@NonNull InMobiBanner inMobiBanner) {
        this.mediationBannerAdCallback.onAdLeftApplication();
    }

    /* renamed from: onAdClicked  reason: avoid collision after fix types in other method */
    public void onAdClicked2(@NonNull InMobiBanner inMobiBanner, Map<Object, Object> map) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.reportAdClicked();
        }
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdImpression(@NonNull InMobiBanner inMobiBanner) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.reportAdImpression();
        }
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdLoadFailed(@NonNull InMobiBanner inMobiBanner, @NonNull InMobiAdRequestStatus inMobiAdRequestStatus) {
        AdError createSdkError = InMobiConstants.createSdkError(InMobiAdapterUtils.getMediationErrorCode(inMobiAdRequestStatus), inMobiAdRequestStatus.getMessage());
        Log.w(InMobiMediationAdapter.TAG, createSdkError.toString());
        this.mediationAdLoadCallback.onFailure(createSdkError);
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdLoadSucceeded(@NonNull InMobiBanner inMobiBanner, @NonNull AdMetaInfo adMetaInfo) {
        this.mediationBannerAdCallback = this.mediationAdLoadCallback.onSuccess(this);
    }

    @Override // com.inmobi.ads.listeners.BannerAdEventListener
    public void onRewardsUnlocked(@NonNull InMobiBanner inMobiBanner, Map<Object, Object> map) {
    }
}
