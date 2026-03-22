package com.mbridge.msdk.video.module;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.videocommon.download.d;
import com.mbridge.msdk.videocommon.download.f;
import com.mbridge.msdk.videocommon.setting.b;
/* loaded from: classes6.dex */
public class MBridgeAlertWebview extends MBridgeH5EndCardView {
    private String P;

    public MBridgeAlertWebview(Context context) {
        super(context);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView
    protected RelativeLayout.LayoutParams getContentLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView
    public String getURL() {
        if (!TextUtils.isEmpty(this.unitId)) {
            String c10 = b.b().a(c.m().b(), this.unitId, false).c();
            this.P = c10;
            if (!TextUtils.isEmpty(c10)) {
                return d.a().a(this.P);
            }
            return "";
        }
        return "";
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView, com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        String url = getURL();
        if (this.f30929e && this.f30926b != null && !TextUtils.isEmpty(url)) {
            com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(this.f30926b);
            aVar.a(this.f30926b.getAppName());
            this.f30976p.setDownloadListener(aVar);
            this.f30976p.setCampaignId(this.f30926b.getId());
            setCloseVisible(8);
            this.f30976p.setApiManagerJSFactory(bVar);
            this.f30976p.setWebViewListener(new a());
            setHtmlSource(f.a().a(url));
            this.f30980t = false;
            if (TextUtils.isEmpty(this.f30979s)) {
                p0.a(MBridgeBaseView.TAG, "load url:" + url);
                this.f30976p.loadUrl(url);
            } else {
                p0.a(MBridgeBaseView.TAG, "load html...");
                this.f30976p.loadDataWithBaseURL(url, this.f30979s, "text/html", "UTF-8", null);
            }
            this.f30976p.setBackgroundColor(0);
            setBackgroundColor(0);
            return;
        }
        this.notifyListener.a(101, "");
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView, com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void webviewshow() {
        RelativeLayout relativeLayout = this.f30974n;
        if (relativeLayout != null) {
            relativeLayout.setBackgroundColor(0);
        }
        super.webviewshow();
        j.a(this.f30925a, this.f30926b, this.P, this.unitId, 2, 1);
    }

    public MBridgeAlertWebview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.mbridge.msdk.mbsignalcommon.listener.b {
        a() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            p0.b("MBridgeAlertWebview", "finish+" + str);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            p0.b("MBridgeAlertWebview", "onReceivedError");
            if (MBridgeAlertWebview.this.f30981u) {
                return;
            }
            p0.a(MBridgeBaseView.TAG, "onReceivedError,url:" + str2);
            MBridgeAlertWebview mBridgeAlertWebview = MBridgeAlertWebview.this;
            j.a(mBridgeAlertWebview.f30925a, mBridgeAlertWebview.f30926b, mBridgeAlertWebview.P, MBridgeAlertWebview.this.unitId, 2, str, 1);
            MBridgeAlertWebview.this.f30981u = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10) {
            String str;
            super.a(webView, i10);
            p0.b("MBridgeAlertWebview", "readyState  :  " + i10);
            MBridgeAlertWebview mBridgeAlertWebview = MBridgeAlertWebview.this;
            if (mBridgeAlertWebview.f30981u) {
                return;
            }
            boolean z10 = i10 == 1;
            mBridgeAlertWebview.f30980t = z10;
            if (z10) {
                str = "readyState state is " + i10;
            } else {
                str = "";
            }
            String str2 = str;
            MBridgeAlertWebview mBridgeAlertWebview2 = MBridgeAlertWebview.this;
            j.a(mBridgeAlertWebview2.f30925a, mBridgeAlertWebview2.f30926b, mBridgeAlertWebview2.P, MBridgeAlertWebview.this.unitId, i10, str2, 1);
        }
    }
}
