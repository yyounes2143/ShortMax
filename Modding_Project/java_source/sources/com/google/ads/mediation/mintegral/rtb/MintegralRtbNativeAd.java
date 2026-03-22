package com.google.ads.mediation.mintegral.rtb;

import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.ads.mediation.mintegral.MintegralMediationAdapter;
import com.google.ads.mediation.mintegral.MintegralUtils;
import com.google.ads.mediation.mintegral.mediation.MintegralNativeAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.nativead.MediaView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.nativex.view.MBMediaView;
import com.mbridge.msdk.out.MBBidNativeHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class MintegralRtbNativeAd extends MintegralNativeAd {
    private MBBidNativeHandler mbBidNativeHandler;

    public MintegralRtbNativeAd(@NonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NonNull MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        super(mediationNativeAdConfiguration, mediationAdLoadCallback);
    }

    @Override // com.google.ads.mediation.mintegral.mediation.MintegralNativeAd
    public void loadAd() {
        String string = this.adConfiguration.getServerParameters().getString("ad_unit_id");
        String string2 = this.adConfiguration.getServerParameters().getString("placement_id");
        String bidResponse = this.adConfiguration.getBidResponse();
        AdError validateMintegralAdLoadParams = MintegralUtils.validateMintegralAdLoadParams(string, string2, bidResponse);
        if (validateMintegralAdLoadParams != null) {
            this.adLoadCallback.onFailure(validateMintegralAdLoadParams);
            return;
        }
        Map<String, Object> nativeProperties = MBBidNativeHandler.getNativeProperties(string2, string);
        nativeProperties.put(MBridgeConstans.NATIVE_VIDEO_SUPPORT, Boolean.TRUE);
        nativeProperties.put("ad_num", 1);
        this.mbBidNativeHandler = new MBBidNativeHandler(nativeProperties, this.adConfiguration.getContext());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MBridgeConstans.EXTRA_KEY_WM, this.adConfiguration.getWatermark());
            this.mbBidNativeHandler.setExtraInfo(jSONObject);
        } catch (JSONException e10) {
            Log.w(MintegralMediationAdapter.TAG, "Failed to apply watermark to Mintegral bidding native ad.", e10);
        }
        this.mbBidNativeHandler.setAdListener(this.mintegralNativeAdListener);
        this.mbBidNativeHandler.bidLoad(bidResponse);
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void trackViews(@NonNull View view, @NonNull Map<String, View> map, @NonNull Map<String, View> map2) {
        HashMap hashMap = new HashMap(map);
        hashMap.remove("3011");
        hashMap.remove("3012");
        ArrayList arrayList = new ArrayList(hashMap.values());
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i11 >= arrayList.size()) {
                break;
            }
            View view2 = (View) arrayList.get(i11);
            if (view2 instanceof MediaView) {
                MediaView mediaView = (MediaView) view2;
                while (true) {
                    if (i10 >= mediaView.getChildCount()) {
                        break;
                    }
                    View childAt = mediaView.getChildAt(i10);
                    if (childAt instanceof MBMediaView) {
                        ((MBMediaView) childAt).setOnMediaViewListener(this);
                        break;
                    }
                    i10++;
                }
            } else {
                i11++;
            }
        }
        MBBidNativeHandler mBBidNativeHandler = this.mbBidNativeHandler;
        if (mBBidNativeHandler != null) {
            mBBidNativeHandler.registerView(view, arrayList, this.campaign);
        }
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void untrackView(View view) {
        MBBidNativeHandler mBBidNativeHandler = this.mbBidNativeHandler;
        if (mBBidNativeHandler != null) {
            mBBidNativeHandler.unregisterView(view, traversalView(view), this.campaign);
        }
    }
}
