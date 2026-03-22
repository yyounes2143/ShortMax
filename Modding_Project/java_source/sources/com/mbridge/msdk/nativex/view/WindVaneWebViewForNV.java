package com.mbridge.msdk.nativex.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.n;
import com.mbridge.msdk.foundation.same.report.g;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.nativex.listener.b;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class WindVaneWebViewForNV extends WindVaneWebView {

    /* renamed from: r  reason: collision with root package name */
    private b f28393r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f28394s;

    public WindVaneWebViewForNV(Context context) {
        super(context);
        this.f28394s = false;
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        b bVar;
        if (i10 == 4 && (bVar = this.f28393r) != null) {
            bVar.a();
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView, android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f28394s) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void orientation(boolean z10) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (z10) {
                jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, "landscape");
            } else {
                jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, "portrait");
            }
            f.a().a((WebView) this, AdUnitActivity.EXTRA_ORIENTATION, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setBackListener(b bVar) {
        this.f28393r = bVar;
    }

    public void setInterceptTouch(boolean z10) {
        this.f28394s = z10;
    }

    public void webViewShow(CampaignEx campaignEx, String str) {
        int i10;
        try {
            f.a().a((WebView) this, "webviewshow", "");
            n nVar = new n();
            nVar.n(campaignEx.getRequestId());
            nVar.o(campaignEx.getRequestIdNotice());
            if (getContext() != null && getContext().getApplicationContext() != null) {
                nVar.b(campaignEx.getId());
                if (campaignEx.isMraid()) {
                    i10 = n.N;
                } else {
                    i10 = n.O;
                }
                nVar.b(i10);
                g.d(nVar, getContext().getApplicationContext(), str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public WindVaneWebViewForNV(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28394s = false;
    }

    public WindVaneWebViewForNV(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f28394s = false;
    }
}
