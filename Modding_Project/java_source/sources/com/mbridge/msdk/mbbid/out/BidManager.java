package com.mbridge.msdk.mbbid.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.authoritycontroller.c;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbbid.common.middle.b;
import com.ss.ttm.player.MediaPlayer;
import java.util.Map;
/* loaded from: classes5.dex */
public class BidManager {

    /* renamed from: a  reason: collision with root package name */
    private b f27920a;

    /* renamed from: b  reason: collision with root package name */
    private BidListennning f27921b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27922c;

    public BidManager(String str, String str2) {
        this(str, str2, MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    private void a(String str) {
        BidListennning bidListennning = this.f27921b;
        if (bidListennning != null) {
            bidListennning.onFailed(str);
        }
    }

    public static String getBuyerUid(Context context) {
        if (com.mbridge.msdk.util.b.a()) {
            try {
                c.c(true);
            } catch (Throwable th2) {
                p0.b("BidManager", th2.getMessage());
            }
        }
        return com.mbridge.msdk.mbbid.common.b.a(context, "");
    }

    public void bid() {
        b bVar = this.f27920a;
        if (bVar != null) {
            bVar.a(this.f27922c);
        } else {
            a("you need init the class :BidManager");
        }
    }

    public void setBidListener(BidListennning bidListennning) {
        this.f27921b = bidListennning;
        b bVar = this.f27920a;
        if (bVar != null) {
            bVar.a(bidListennning);
        }
    }

    public void setRewardPlus(boolean z10) {
        this.f27922c = z10;
    }

    public BidManager(String str, String str2, String str3) {
        this.f27922c = false;
        this.f27920a = new b(str, str2, str3);
    }

    public <T extends CommonBidRequestParams> BidManager(T t10) {
        this(t10 == null ? "" : t10.getmPlacementId(), t10 == null ? "" : t10.getmUnitId(), t10 != null ? t10.getmFloorPrice() : "");
        if (t10 instanceof BannerBidRequestParams) {
            BannerBidRequestParams bannerBidRequestParams = (BannerBidRequestParams) t10;
            this.f27920a.a(bannerBidRequestParams.getHeight());
            this.f27920a.b(bannerBidRequestParams.getWidth());
            this.f27920a.a(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL);
            if (t10 instanceof SplashBidRequestParams) {
                SplashBidRequestParams splashBidRequestParams = (SplashBidRequestParams) t10;
                this.f27920a.b(splashBidRequestParams.a());
                this.f27920a.b(splashBidRequestParams.getOrientation());
                this.f27920a.a(MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT);
            }
        } else if (t10 instanceof AdvancedNativeBidRequestParams) {
            AdvancedNativeBidRequestParams advancedNativeBidRequestParams = (AdvancedNativeBidRequestParams) t10;
            this.f27920a.a(advancedNativeBidRequestParams.getHeight());
            this.f27920a.b(advancedNativeBidRequestParams.getWidth());
            this.f27920a.a(MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX);
        }
    }

    public static String getBuyerUid(Context context, String str) {
        if (com.mbridge.msdk.util.b.a()) {
            try {
                c.c(true);
            } catch (Throwable th2) {
                p0.b("BidManager", th2.getMessage());
            }
        }
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        return com.mbridge.msdk.mbbid.common.b.a(context, str);
    }

    public static String getBuyerUid(Context context, Map<String, String> map) {
        if (com.mbridge.msdk.util.b.a()) {
            try {
                c.c(true);
            } catch (Throwable th2) {
                p0.b("BidManager", th2.getMessage());
            }
        }
        return com.mbridge.msdk.mbbid.common.b.a(context, map);
    }
}
