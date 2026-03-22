package com.mbridge.msdk.out;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.error.b;
import com.mbridge.msdk.foundation.same.report.metrics.c;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBBannerView extends RelativeLayout implements BaseExtraInterfaceForHandler {
    private String bidToken;
    private com.mbridge.msdk.mbbanner.controll.a controller;
    private boolean hadAttached;
    private boolean isVisible;
    private BannerAdListener mBannerAdListener;
    private MBridgeIds mBridgeIds;
    private String unitId;

    public MBBannerView(Context context) {
        this(context, null);
    }

    private void callbackAndReportFail(c cVar, b bVar) {
        String str = "";
        if (bVar != null) {
            try {
                str = bVar.g();
            } catch (Throwable th2) {
                p0.b("BannerView", th2.getMessage());
            }
        }
        cVar.a(bVar);
        cVar.b(true);
        com.mbridge.msdk.mbbanner.common.report.a.a("2000047", cVar, (e) null);
        BannerAdListener bannerAdListener = this.mBannerAdListener;
        if (bannerAdListener != null) {
            bannerAdListener.onLoadFailed(this.mBridgeIds, str);
        }
    }

    private void delayedNotify() {
        postDelayed(new Runnable() { // from class: com.mbridge.msdk.out.MBBannerView.1
            @Override // java.lang.Runnable
            public void run() {
                if (MBBannerView.this.controller != null && !com.mbridge.msdk.foundation.feedback.b.f26979f) {
                    MBBannerView.this.controller.c(true);
                }
            }
        }, 200L);
    }

    private void updateAttachedState(boolean z10) {
        this.hadAttached = z10;
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.b(z10);
        }
    }

    public String getCreativeIdWithUnitId() {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            return aVar.d();
        }
        return "";
    }

    public String getRequestId() {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            return aVar.e();
        }
        return "";
    }

    public void init(BannerSize bannerSize, String str, String str2) {
        String str3;
        this.unitId = str2;
        if (TextUtils.isEmpty(str)) {
            str3 = "";
        } else {
            str3 = str;
        }
        this.mBridgeIds = new MBridgeIds(str3, str2);
        String e10 = u0.e(str2);
        if (!TextUtils.isEmpty(e10)) {
            u0.b(str2, e10);
        }
        com.mbridge.msdk.mbbanner.controll.a aVar = new com.mbridge.msdk.mbbanner.controll.a(this, bannerSize, str, str2);
        this.controller = aVar;
        aVar.c(this.isVisible);
        this.controller.b(this.hadAttached);
    }

    public void load() {
        String b10 = com.mbridge.msdk.mbbanner.common.report.a.b(this.bidToken);
        c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(this.unitId, b10);
        a10.h(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.b(this.hadAttached);
            this.controller.a("", b10);
            return;
        }
        b bVar = new b(880042);
        bVar.b(b10);
        callbackAndReportFail(a10, bVar);
    }

    public void loadFromBid(String str) {
        this.bidToken = str;
        String b10 = com.mbridge.msdk.mbbanner.common.report.a.b(str);
        c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(this.unitId, b10);
        a10.h("1");
        if (this.controller != null) {
            if (!TextUtils.isEmpty(str)) {
                this.controller.b(this.hadAttached);
                this.controller.b(0);
                this.controller.a(str, b10);
                return;
            }
            b bVar = new b(880035);
            bVar.b(b10);
            callbackAndReportFail(a10, bVar);
            return;
        }
        b bVar2 = new b(880042);
        bVar2.b(b10);
        callbackAndReportFail(a10, bVar2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateAttachedState(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        updateAttachedState(false);
    }

    public void onPause() {
        if (this.controller != null && TextUtils.isEmpty(this.bidToken)) {
            this.controller.g();
        }
    }

    public void onResume() {
        if (this.controller != null && TextUtils.isEmpty(this.bidToken) && !com.mbridge.msdk.foundation.feedback.b.f26979f) {
            this.controller.h();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        boolean z10;
        super.onVisibilityChanged(view, i10);
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.isVisible = z10;
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            if (i10 == 0) {
                delayedNotify();
            } else {
                aVar.c(false);
            }
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        boolean z10;
        super.onWindowVisibilityChanged(i10);
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.isVisible = z10;
        if (this.controller != null) {
            if (i10 == 0) {
                delayedNotify();
            } else if (com.mbridge.msdk.foundation.feedback.b.f26979f) {
            } else {
                this.controller.c(false);
            }
        }
    }

    public void release() {
        if (this.mBannerAdListener != null) {
            this.mBannerAdListener = null;
        }
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a((BannerAdListener) null);
            this.controller.i();
        }
        removeAllViews();
    }

    public void setAllowShowCloseBtn(boolean z10) {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a(z10);
        }
    }

    public void setBannerAdListener(BannerAdListener bannerAdListener) {
        this.mBannerAdListener = bannerAdListener;
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a(bannerAdListener);
        }
    }

    @Override // com.mbridge.msdk.out.BaseExtraInterfaceForHandler
    public void setExtraInfo(JSONObject jSONObject) {
        com.mbridge.msdk.foundation.controller.c.m().a(this.unitId, jSONObject);
    }

    public void setRefreshTime(int i10) {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null && i10 >= 0) {
            aVar.b(i10);
        }
    }

    public void updateBannerSize(BannerSize bannerSize) {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a(bannerSize);
        }
    }

    public MBBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBBannerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.hadAttached = false;
        this.isVisible = false;
        com.mbridge.msdk.foundation.controller.c.m().a(context);
    }
}
