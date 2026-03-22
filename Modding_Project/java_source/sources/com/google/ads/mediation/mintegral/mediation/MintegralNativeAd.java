package com.google.ads.mediation.mintegral.mediation;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.google.ads.mediation.mintegral.MintegralUtils;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.nativead.MediaView;
import com.mbridge.msdk.nativex.view.MBMediaView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.OnMBMediaViewListener;
import com.mbridge.msdk.widget.MBAdChoice;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public abstract class MintegralNativeAd extends UnifiedNativeAdMapper implements OnMBMediaViewListener {
    protected static final double MINTEGRAL_SDK_IMAGE_SCALE = 1.0d;
    protected final MediationNativeAdConfiguration adConfiguration;
    protected final MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> adLoadCallback;
    protected Campaign campaign;
    public MintegralNativeAdListener mintegralNativeAdListener = new MintegralNativeAdListener(this);

    /* loaded from: classes4.dex */
    public class MBridgeNativeMappedImage extends NativeAd.Image {
        private final Drawable drawable;
        private final Uri imageUri;
        private final double scale;

        public MBridgeNativeMappedImage(Drawable drawable, Uri uri, double d10) {
            this.drawable = drawable;
            this.imageUri = uri;
            this.scale = d10;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Drawable getDrawable() {
            return this.drawable;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public double getScale() {
            return this.scale;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        @NonNull
        public Uri getUri() {
            return this.imageUri;
        }
    }

    public MintegralNativeAd(@NonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NonNull MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        this.adConfiguration = mediationNativeAdConfiguration;
        this.adLoadCallback = mediationAdLoadCallback;
    }

    public abstract void loadAd();

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public void mapNativeAd(@NonNull Campaign campaign) {
        this.campaign = campaign;
        if (campaign.getAppName() != null) {
            setHeadline(this.campaign.getAppName());
        }
        if (this.campaign.getAppDesc() != null) {
            setBody(this.campaign.getAppDesc());
        }
        if (this.campaign.getAdCall() != null) {
            setCallToAction(this.campaign.getAdCall());
        }
        setStarRating(Double.valueOf(this.campaign.getRating()));
        if (!TextUtils.isEmpty(this.campaign.getIconUrl())) {
            setIcon(new MBridgeNativeMappedImage(null, Uri.parse(this.campaign.getIconUrl()), 1.0d));
        }
        MBMediaView mBMediaView = new MBMediaView(this.adConfiguration.getContext());
        mBMediaView.setVideoSoundOnOff(!MintegralUtils.shouldMuteAudio(this.adConfiguration.getMediationExtras()));
        mBMediaView.setNativeAd(this.campaign);
        setMediaView(mBMediaView);
        MBAdChoice mBAdChoice = new MBAdChoice(this.adConfiguration.getContext());
        mBAdChoice.setCampaign(this.campaign);
        setAdChoicesContent(mBAdChoice);
        setOverrideClickHandling(true);
    }

    @Override // com.mbridge.msdk.out.OnMBMediaViewListener
    public void onEnterFullscreen() {
        MediationNativeAdCallback mediationNativeAdCallback = this.mintegralNativeAdListener.nativeCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.onAdOpened();
        }
    }

    @Override // com.mbridge.msdk.out.OnMBMediaViewListener
    public void onExitFullscreen() {
        MediationNativeAdCallback mediationNativeAdCallback = this.mintegralNativeAdListener.nativeCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.onAdClosed();
        }
    }

    @Override // com.mbridge.msdk.out.OnMBMediaViewListener
    public void onVideoAdClicked(Campaign campaign) {
        MediationNativeAdCallback mediationNativeAdCallback = this.mintegralNativeAdListener.nativeCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.reportAdClicked();
        }
    }

    @Override // com.mbridge.msdk.out.OnMBMediaViewListener
    public void onVideoStart() {
        MediationNativeAdCallback mediationNativeAdCallback = this.mintegralNativeAdListener.nativeCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.onVideoPlay();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List traversalView(View view) {
        ArrayList arrayList = new ArrayList();
        if (view == null) {
            return arrayList;
        }
        if (view instanceof MediaView) {
            arrayList.add(view);
        } else if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                if (viewGroup.getChildAt(i10) instanceof ViewGroup) {
                    arrayList.addAll(traversalView(viewGroup.getChildAt(i10)));
                } else {
                    arrayList.add(viewGroup.getChildAt(i10));
                }
            }
        } else {
            arrayList.add(view);
        }
        return arrayList;
    }

    @Override // com.mbridge.msdk.out.OnMBMediaViewListener
    public void onFinishRedirection(Campaign campaign, String str) {
    }

    @Override // com.mbridge.msdk.out.OnMBMediaViewListener
    public void onRedirectionFailed(Campaign campaign, String str) {
    }

    @Override // com.mbridge.msdk.out.OnMBMediaViewListener
    public void onStartRedirection(Campaign campaign, String str) {
    }
}
