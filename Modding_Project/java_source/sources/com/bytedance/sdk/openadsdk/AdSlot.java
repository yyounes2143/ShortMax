package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.oJ.oJ.oJ.cFZ.ZYk;
import com.bytedance.sdk.component.utils.awB;
import com.ss.ttm.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class AdSlot {
    public static final int ANCHORED_BANNER = 2;
    public static final int FIX_BANNER = 1;
    public static final int INLINE_BANNER = 3;
    public static final int TYPE_BANNER = 1;
    public static final int TYPE_CACHED_SPLASH = 4;
    public static final int TYPE_FEED = 5;
    public static final int TYPE_FULL_SCREEN_VIDEO = 8;
    public static final int TYPE_INTERACTION_AD = 2;
    public static final int TYPE_OPEN_AD = 3;
    public static final int TYPE_REWARD_VIDEO = 7;
    private int BTZ;
    private int Id;
    private float Pfn;
    private boolean PiB;
    private int QSm;
    private String RZ;
    private String Ry;
    private boolean WcQ;
    private boolean Xe;
    private int ZYk;
    private String awB;

    /* renamed from: ba  reason: collision with root package name */
    private int f12817ba;
    private boolean cFZ;
    private int cY;
    private String dLZ;
    private String eZI;
    private float ex;
    private int jFA;

    /* renamed from: jr  reason: collision with root package name */
    private int f12818jr;
    private String kkU;
    private String oJ;

    /* renamed from: oq  reason: collision with root package name */
    private int f12819oq;

    /* renamed from: si  reason: collision with root package name */
    private String f12820si;

    /* renamed from: so  reason: collision with root package name */
    private String f12821so;
    private int tB;

    /* renamed from: tb  reason: collision with root package name */
    private Map<String, Object> f12822tb;

    public static int getPosition(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 == 2) {
            return 4;
        }
        if (i10 != 3 && i10 != 4 && i10 != 7 && i10 != 8) {
            return 3;
        }
        return 5;
    }

    public static AdSlot getSlot(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Builder builder = new Builder();
        try {
            int optInt = jSONObject.optInt("mImgAcceptedWidth", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK);
            int optInt2 = jSONObject.optInt("mImgAcceptedHeight", 320);
            double optDouble = jSONObject.optDouble("mExpressViewAcceptedWidth", 0.0d);
            double optDouble2 = jSONObject.optDouble("mExpressViewAcceptedHeight", 0.0d);
            builder.setCodeId(jSONObject.optString("mCodeId", null));
            builder.setAdCount(jSONObject.optInt("mAdCount", 1));
            builder.setIsAutoPlay(jSONObject.optBoolean("mIsAutoPlay"));
            builder.setImageAcceptedSize(optInt, optInt2);
            builder.setExpressViewAcceptedSize(Double.valueOf(optDouble).floatValue(), Double.valueOf(optDouble2).floatValue());
            builder.setSupportDeepLink(jSONObject.optBoolean("mSupportDeepLink", false));
            builder.setRewardName(jSONObject.optString("mRewardName", null));
            builder.setRewardAmount(jSONObject.optInt("mRewardAmount"));
            builder.setMediaExtra(jSONObject.optString("mMediaExtra", null));
            builder.setUserID(jSONObject.optString("mUserID", null));
            builder.setNativeAdType(jSONObject.optInt("mNativeAdType"));
            builder.isExpressAd(jSONObject.optBoolean("mIsExpressAd"));
            builder.withBid(jSONObject.optString("mBidAdm"));
            builder.setAdId(jSONObject.optString("mAdId"));
            builder.setCreativeId(jSONObject.optString("mCreativeId"));
            builder.setExt(jSONObject.optString("mExt"));
            builder.setMediaExtra(jSONObject.optString("mMediaExtra"));
            builder.setBannerType(jSONObject.optInt("mBannerType"));
        } catch (Exception unused) {
        }
        AdSlot build = builder.build();
        build.setDurationSlotType(jSONObject.optInt("mDurationSlotType"));
        return build;
    }

    public int getAdCount() {
        return this.f12817ba;
    }

    public String getAdId() {
        return this.eZI;
    }

    public int getBannerType() {
        return this.f12818jr;
    }

    public String getBidAdm() {
        return this.awB;
    }

    public String getCodeId() {
        return this.oJ;
    }

    public String getCreativeId() {
        return this.f12820si;
    }

    public int getDurationSlotType() {
        return this.cY;
    }

    public float getExpressViewAcceptedHeight() {
        return this.Pfn;
    }

    public float getExpressViewAcceptedWidth() {
        return this.ex;
    }

    public String getExt() {
        return this.Ry;
    }

    public int getImgAcceptedHeight() {
        return this.tB;
    }

    public int getImgAcceptedWidth() {
        return this.ZYk;
    }

    public int getIsRotateBanner() {
        return this.QSm;
    }

    public String getMediaExtra() {
        return this.kkU;
    }

    @Nullable
    public Map<String, Object> getRequestExtraMap() {
        return this.f12822tb;
    }

    public int getRewardAmount() {
        return this.jFA;
    }

    public String getRewardName() {
        return this.f12821so;
    }

    public int getRotateOrder() {
        return this.Id;
    }

    public int getRotateTime() {
        return this.f12819oq;
    }

    public String getUserData() {
        return this.RZ;
    }

    public String getUserID() {
        return this.dLZ;
    }

    public boolean isAutoPlay() {
        return this.PiB;
    }

    public boolean isExpressAd() {
        return this.WcQ;
    }

    public boolean isPreload() {
        return this.Xe;
    }

    public boolean isSupportDeepLink() {
        return this.cFZ;
    }

    public void setAdCount(int i10) {
        this.f12817ba = i10;
    }

    public void setDurationSlotType(int i10) {
        this.cY = i10;
    }

    public void setExpressViewAccepted(float f10, float f11) {
        this.ex = f10;
        this.Pfn = f11;
    }

    public void setIsRotateBanner(int i10) {
        this.QSm = i10;
    }

    public void setPreload(boolean z10) {
        this.Xe = z10;
    }

    public void setRotateOrder(int i10) {
        this.Id = i10;
    }

    public void setRotateTime(int i10) {
        this.f12819oq = i10;
    }

    public void setUserData(String str) {
        this.RZ = str;
    }

    public JSONObject toJsonObj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mCodeId", this.oJ);
            jSONObject.put("mAdCount", this.f12817ba);
            jSONObject.put("mIsAutoPlay", this.PiB);
            jSONObject.put("mImgAcceptedWidth", this.ZYk);
            jSONObject.put("mImgAcceptedHeight", this.tB);
            jSONObject.put("mExpressViewAcceptedWidth", this.ex);
            jSONObject.put("mExpressViewAcceptedHeight", this.Pfn);
            jSONObject.put("mSupportDeepLink", this.cFZ);
            jSONObject.put("mRewardName", this.f12821so);
            jSONObject.put("mRewardAmount", this.jFA);
            jSONObject.put("mMediaExtra", this.kkU);
            jSONObject.put("mUserID", this.dLZ);
            jSONObject.put("mNativeAdType", this.BTZ);
            jSONObject.put("mIsExpressAd", this.WcQ);
            jSONObject.put("mAdId", this.eZI);
            jSONObject.put("mCreativeId", this.f12820si);
            jSONObject.put("mExt", this.Ry);
            jSONObject.put("mBidAdm", this.awB);
            jSONObject.put("mUserData", this.RZ);
            jSONObject.put("mDurationSlotType", this.cY);
            jSONObject.put("mBannerType", this.f12818jr);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String toString() {
        return super.toString();
    }

    private AdSlot() {
        this.PiB = true;
        this.WcQ = false;
        this.QSm = 0;
        this.f12819oq = 0;
        this.Id = 0;
        this.f12818jr = 1;
    }

    /* loaded from: classes3.dex */
    public static class Builder {
        private float BTZ;
        private boolean PiB;
        private String Ry;
        private String WcQ;
        private String awB;
        private float dLZ;
        private String eZI;
        private int kkU;
        private String oJ;

        /* renamed from: oq  reason: collision with root package name */
        private int f12824oq;

        /* renamed from: si  reason: collision with root package name */
        private String f12825si;

        /* renamed from: so  reason: collision with root package name */
        private String f12826so;
        private int ZYk = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK;
        private int tB = 320;
        private final boolean ex = true;
        private int Pfn = 1;

        /* renamed from: ba  reason: collision with root package name */
        private final String f12823ba = "";
        private final int cFZ = 0;
        private String jFA = "defaultUser";
        private boolean RZ = true;
        private Map<String, Object> QSm = null;
        private int Id = 1;

        public AdSlot build() {
            AdSlot adSlot = new AdSlot();
            adSlot.oJ = this.oJ;
            adSlot.f12817ba = this.Pfn;
            adSlot.cFZ = true;
            adSlot.ZYk = this.ZYk;
            adSlot.tB = this.tB;
            float f10 = this.dLZ;
            if (f10 <= 0.0f) {
                adSlot.ex = this.ZYk;
                adSlot.Pfn = this.tB;
            } else {
                adSlot.ex = f10;
                adSlot.Pfn = this.BTZ;
            }
            adSlot.f12821so = "";
            adSlot.jFA = 0;
            adSlot.kkU = this.f12826so;
            adSlot.dLZ = this.jFA;
            adSlot.BTZ = this.kkU;
            adSlot.PiB = this.RZ;
            adSlot.WcQ = this.PiB;
            adSlot.awB = this.WcQ;
            adSlot.eZI = this.awB;
            adSlot.f12820si = this.eZI;
            adSlot.Ry = this.f12825si;
            adSlot.RZ = this.Ry;
            adSlot.f12822tb = this.QSm;
            adSlot.cY = this.f12824oq;
            adSlot.f12818jr = this.Id;
            return adSlot;
        }

        public Builder isExpressAd(boolean z10) {
            this.PiB = z10;
            return this;
        }

        public Builder setAdCount(int i10) {
            if (i10 <= 0) {
                i10 = 1;
            }
            if (i10 > 20) {
                i10 = 20;
            }
            this.Pfn = i10;
            return this;
        }

        public Builder setAdId(String str) {
            this.awB = str;
            return this;
        }

        public Builder setBannerType(int i10) {
            this.Id = i10;
            return this;
        }

        public Builder setCodeId(String str) {
            this.oJ = str;
            return this;
        }

        public Builder setCreativeId(String str) {
            this.eZI = str;
            return this;
        }

        public Builder setDurationSlotType(int i10) {
            this.f12824oq = i10;
            return this;
        }

        public Builder setExpressViewAcceptedSize(float f10, float f11) {
            this.dLZ = f10;
            this.BTZ = f11;
            return this;
        }

        public Builder setExt(String str) {
            this.f12825si = str;
            return this;
        }

        public Builder setImageAcceptedSize(int i10, int i11) {
            this.ZYk = i10;
            this.tB = i11;
            return this;
        }

        public Builder setIsAutoPlay(boolean z10) {
            this.RZ = z10;
            return this;
        }

        public Builder setMediaExtra(String str) {
            this.f12826so = str;
            return this;
        }

        public Builder setNativeAdType(int i10) {
            this.kkU = i10;
            return this;
        }

        public Builder setRequestExtraMap(Map<String, Object> map) {
            this.QSm = map;
            return this;
        }

        public Builder setUserData(String str) {
            this.Ry = str;
            return this;
        }

        public Builder setUserID(String str) {
            this.jFA = str;
            return this;
        }

        public Builder withBid(String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            if (awB.ex()) {
                ZYk.oJ(str);
            }
            this.WcQ = str;
            return this;
        }

        public Builder setRewardAmount(int i10) {
            return this;
        }

        public Builder setRewardName(String str) {
            return this;
        }

        public Builder setSupportDeepLink(boolean z10) {
            return this;
        }
    }
}
