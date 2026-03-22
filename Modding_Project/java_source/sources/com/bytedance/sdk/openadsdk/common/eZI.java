package com.bytedance.sdk.openadsdk.common;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.oJ.ba;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class eZI {
    private final Context Pfn;
    private final com.bytedance.sdk.component.jFA.ba ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private ImageView f12961ba;
    private ImageView cFZ;
    private final String ex;
    private final LinearLayout oJ;

    /* renamed from: so  reason: collision with root package name */
    private ba.oJ f12962so;
    private final cY tB;

    public eZI(Context context, LinearLayout linearLayout, com.bytedance.sdk.component.jFA.ba baVar, cY cYVar, String str) {
        this.Pfn = context;
        this.oJ = linearLayout;
        this.ZYk = baVar;
        this.tB = cYVar;
        this.ex = str;
        tB();
    }

    private void tB() {
        this.f12961ba = (ImageView) this.oJ.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.VJm);
        this.cFZ = (ImageView) this.oJ.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.bD);
        this.f12961ba.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.eZI.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (eZI.this.ZYk != null && eZI.this.ZYk.jFA()) {
                    if (eZI.this.f12962so != null) {
                        eZI.this.f12962so.oJ();
                    }
                    eZI.this.oJ(ToolBar.BACKWARD);
                    eZI.this.ZYk.kkU();
                }
            }
        });
        this.cFZ.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.eZI.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (eZI.this.ZYk != null && eZI.this.ZYk.dLZ()) {
                    eZI.this.oJ(ToolBar.FORWARD);
                    eZI.this.ZYk.BTZ();
                }
            }
        });
        ((ImageView) this.oJ.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.oCU)).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.eZI.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (eZI.this.ZYk != null) {
                    eZI.this.ZYk(ToolBar.REFRESH);
                    eZI.this.ZYk.so();
                }
            }
        });
        ((ImageView) this.oJ.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.EP)).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.eZI.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (eZI.this.ZYk != null) {
                    eZI.this.ZYk("external_btn_click");
                    Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
                    String url = eZI.this.ZYk.getUrl();
                    if (!TextUtils.isEmpty(url)) {
                        intent.setData(Uri.parse(url));
                        com.bytedance.sdk.component.utils.ZYk.oJ(eZI.this.Pfn, intent, null);
                    }
                }
            }
        });
        this.oJ.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.eZI.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.f12961ba.setClickable(false);
        this.cFZ.setClickable(false);
        ImageView imageView = this.f12961ba;
        int parseColor = Color.parseColor("#A8FFFFFF");
        PorterDuff.Mode mode = PorterDuff.Mode.ADD;
        imageView.setColorFilter(parseColor, mode);
        this.cFZ.setColorFilter(Color.parseColor("#A8FFFFFF"), mode);
    }

    public void ZYk() {
        if (this.oJ.getAlpha() == 1.0f) {
            ObjectAnimator.ofFloat(this.oJ, "alpha", 1.0f, 0.0f).setDuration(300L).start();
        }
    }

    public void oJ(WebView webView, ba.oJ oJVar) {
        this.f12962so = oJVar;
        try {
            if (this.f12961ba != null) {
                if (webView.canGoBack()) {
                    this.f12961ba.setClickable(true);
                    this.f12961ba.clearColorFilter();
                } else {
                    this.f12961ba.setClickable(false);
                    this.f12961ba.setColorFilter(Color.parseColor("#A8FFFFFF"), PorterDuff.Mode.ADD);
                }
            }
            if (this.cFZ != null) {
                if (webView.canGoForward()) {
                    this.cFZ.setClickable(true);
                    this.cFZ.clearColorFilter();
                    return;
                }
                this.cFZ.setClickable(false);
                this.cFZ.setColorFilter(Color.parseColor("#A8FFFFFF"), PorterDuff.Mode.ADD);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(String str) {
        WebBackForwardList copyBackForwardList;
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.ZYk.getWebView() != null && (copyBackForwardList = this.ZYk.getWebView().copyBackForwardList()) != null) {
                String url = copyBackForwardList.getItemAtIndex(copyBackForwardList.getCurrentIndex()).getUrl();
                if (TextUtils.isEmpty(url)) {
                    url = this.ZYk.getUrl();
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("url", url);
                jSONObject2.putOpt("first_page", Integer.valueOf(copyBackForwardList.getCurrentIndex() == 0 ? 1 : 0));
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        } catch (Exception unused) {
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), this.tB, this.ex, str, jSONObject, (com.bytedance.sdk.openadsdk.ex.cFZ) null, (com.bytedance.sdk.openadsdk.ex.ZYk.oJ) null);
    }

    public void oJ() {
        if (this.oJ.getAlpha() == 0.0f) {
            ObjectAnimator.ofFloat(this.oJ, "alpha", 0.0f, 1.0f).setDuration(300L).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(String str) {
        WebBackForwardList copyBackForwardList;
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.ZYk.getWebView() != null && (copyBackForwardList = this.ZYk.getWebView().copyBackForwardList()) != null) {
                int currentIndex = copyBackForwardList.getCurrentIndex();
                String url = copyBackForwardList.getItemAtIndex(currentIndex).getUrl();
                if (TextUtils.isEmpty(url)) {
                    url = this.ZYk.getUrl();
                }
                String str2 = "";
                if (str.equals(ToolBar.BACKWARD)) {
                    str2 = copyBackForwardList.getItemAtIndex(currentIndex - 1).getUrl();
                }
                int i10 = 1;
                if (str.equals(ToolBar.FORWARD)) {
                    str2 = copyBackForwardList.getItemAtIndex(currentIndex + 1).getUrl();
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("url", url);
                jSONObject2.putOpt("next_url", str2);
                if (copyBackForwardList.getCurrentIndex() != 0) {
                    i10 = 0;
                }
                jSONObject2.putOpt("first_page", Integer.valueOf(i10));
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        } catch (Exception unused) {
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), this.tB, this.ex, str, jSONObject, (com.bytedance.sdk.openadsdk.ex.cFZ) null, (com.bytedance.sdk.openadsdk.ex.ZYk.oJ) null);
    }
}
