package com.bytedance.sdk.openadsdk.oJ;

import android.text.TextUtils;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.api.PAGErrorCode;
import com.bytedance.sdk.openadsdk.api.PAGLoadListener;
import com.bytedance.sdk.openadsdk.api.PAGRequest;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.settings.jFA;
import com.bytedance.sdk.openadsdk.si.ex;
import com.bytedance.sdk.openadsdk.si.tB;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.Constants;
import java.util.Map;
/* loaded from: classes3.dex */
public class oJ {
    public static boolean oJ(PAGLoadListener pAGLoadListener) {
        if (jFA.oJ()) {
            return false;
        }
        if (pAGLoadListener != null) {
            pAGLoadListener.onError(1000, "Ad request is temporarily paused, Please contact your AM");
            return true;
        }
        return true;
    }

    public static void oJ(final so soVar, final PAGLoadListener pAGLoadListener, final AdSlot adSlot) {
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.openadsdk.oJ.oJ.1
            @Override // java.lang.Runnable
            public void run() {
                if (!WcQ.Pfn()) {
                    PAGLoadListener pAGLoadListener2 = PAGLoadListener.this;
                    if (pAGLoadListener2 != null) {
                        pAGLoadListener2.onError(10000, "Please exec TTAdSdk.init before load ad");
                    }
                } else if (com.bytedance.sdk.openadsdk.core.jFA.ZYk().BTZ()) {
                    PAGLoadListener pAGLoadListener3 = PAGLoadListener.this;
                    if (pAGLoadListener3 != null) {
                        pAGLoadListener3.onError(10004, com.bytedance.sdk.openadsdk.core.so.oJ(10004));
                    }
                } else {
                    tB.oJ(new ex() { // from class: com.bytedance.sdk.openadsdk.oJ.oJ.1.1
                        @Override // com.bytedance.sdk.openadsdk.si.ex
                        public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                            com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                            oJVar.ZYk(Constants.LOAD_AD);
                            oJVar.tB(adSlot.getCodeId());
                            oJVar.ex(HyG.tB(adSlot.getDurationSlotType()));
                            oJVar.oJ(BuildConfig.VERSION_NAME);
                            oJVar.cFZ(HyG.oJ(adSlot).toString());
                            return oJVar;
                        }
                    });
                    ofl.ex(soVar);
                }
            }
        };
        if (WcQ.Pfn()) {
            runnable.run();
        } else {
            WcQ.ZYk().post(runnable);
        }
    }

    public static void oJ(AdSlot.Builder builder, PAGRequest pAGRequest) {
        Map<String, Object> extraInfo;
        if (!WcQ.Pfn() || pAGRequest == null || builder == null || (extraInfo = pAGRequest.getExtraInfo()) == null) {
            return;
        }
        if (extraInfo.containsKey("ad_id") && extraInfo.get("ad_id") != null) {
            builder.setAdId(extraInfo.get("ad_id").toString());
        }
        if (extraInfo.containsKey(CampaignEx.JSON_KEY_CREATIVE_ID) && extraInfo.get(CampaignEx.JSON_KEY_CREATIVE_ID) != null) {
            builder.setCreativeId(extraInfo.get(CampaignEx.JSON_KEY_CREATIVE_ID).toString());
        }
        if (extraInfo.containsKey("ext") && extraInfo.get("ext") != null) {
            builder.setExt(extraInfo.get("ext").toString());
        }
        if (!extraInfo.containsKey("media_extra") || extraInfo.get("media_extra") == null) {
            return;
        }
        builder.setMediaExtra(extraInfo.get("media_extra").toString());
    }

    public static boolean oJ(String str, PAGRequest pAGRequest, PAGLoadListener pAGLoadListener) {
        if (TextUtils.isEmpty(str) && pAGLoadListener != null) {
            pAGLoadListener.onError(1, PAGErrorCode.PAGAdErrorCodeSlotIdNULLMsg);
            return true;
        } else if (pAGRequest != null || pAGLoadListener == null) {
            return false;
        } else {
            pAGLoadListener.onError(2, PAGErrorCode.PAGAdErrorCodeRequestNULLMsg);
            return true;
        }
    }
}
