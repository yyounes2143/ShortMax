package com.mbridge.msdk.mbbid.out;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.click.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.system.NoProGuard;
/* loaded from: classes5.dex */
public class BidResponsed implements NoProGuard {
    public static final String KEY_BID_ID = "bid";
    public static final String KEY_CUR = "cur";
    public static final String KEY_LN = "ln";
    public static final String KEY_PRICE = "price";
    public static final String KEY_TOKEN = "token";
    public static final String KEY_WN = "wn";
    private String bidId;
    private String bidToken;
    private String cur;

    /* renamed from: ln  reason: collision with root package name */
    protected String f27923ln;
    private String price;

    /* renamed from: wn  reason: collision with root package name */
    protected String f27924wn;

    public String getBidId() {
        return this.bidId;
    }

    public String getBidToken() {
        return this.bidToken;
    }

    public String getCur() {
        return this.cur;
    }

    public String getLn() {
        return this.f27923ln;
    }

    public String getPrice() {
        return this.price;
    }

    public String getWn() {
        return this.f27924wn;
    }

    public void sendLossNotice(Context context, BidLossCode bidLossCode) {
        if (!TextUtils.isEmpty(this.f27923ln) && context != null && bidLossCode != null) {
            StringBuilder sb2 = new StringBuilder(this.f27923ln);
            if (this.f27923ln.contains("?")) {
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            } else {
                sb2.append("?");
            }
            sb2.append("reason=");
            sb2.append(bidLossCode.getCurrentCode());
            a.a(context, (CampaignEx) null, "", sb2.toString(), false, false);
        }
    }

    public void sendWinNotice(Context context) {
        if (!TextUtils.isEmpty(this.f27924wn) && context != null) {
            a.a(context, (CampaignEx) null, "", this.f27924wn, false, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setBidId(String str) {
        this.bidId = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setBidToken(String str) {
        this.bidToken = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setCur(String str) {
        this.cur = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPrice(String str) {
        this.price = str;
    }
}
