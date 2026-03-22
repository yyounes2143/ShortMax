package com.bytedance.sdk.openadsdk.component.reward.oJ;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.bytedance.sdk.component.jFA.ba;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.ofl;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Ry implements com.bytedance.sdk.openadsdk.BTZ.so {
    private boolean Pfn;
    private final cY ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.ZYk.cFZ f12999ba;
    private final AtomicBoolean cFZ = new AtomicBoolean(false);
    private ImageView ex;
    private final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ jFA;
    private int kkU;
    private final Activity oJ;

    /* renamed from: so  reason: collision with root package name */
    private volatile boolean f13000so;
    private com.bytedance.sdk.component.jFA.ba tB;

    public Ry(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        this.jFA = oJVar;
        this.ZYk = oJVar.ZYk;
        this.oJ = oJVar.HyG;
    }

    private void ex() {
        this.tB.Pfn();
        oJ(this.tB);
        this.tB.setDisplayZoomControls(false);
        this.tB.setWebChromeClient(new WebChromeClient() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.Ry.3
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i10) {
                super.onProgressChanged(webView, i10);
                if (i10 == 100) {
                    Ry.this.tB();
                }
            }
        });
        this.tB.setWebViewClient(new ba.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.Ry.4
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                Ry.this.tB();
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                String str;
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                if (!webResourceRequest.isForMainFrame()) {
                    return;
                }
                int statusCode = webResourceResponse.getStatusCode();
                if (webResourceRequest.getUrl() != null) {
                    str = webResourceRequest.getUrl().toString();
                } else {
                    str = null;
                }
                Ry.this.oJ(statusCode, str);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (Ry.this.oJ(str)) {
                    return true;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB() {
        oJ(Integer.MAX_VALUE, (String) null);
    }

    public void ZYk() {
        DeviceUtils.AudioInfoReceiver.ZYk(this);
        com.bytedance.sdk.component.jFA.ba baVar = this.tB;
        if (baVar != null) {
            ofl.oJ(baVar.getWebView());
        }
    }

    public void oJ() {
        DeviceUtils.AudioInfoReceiver.oJ(this);
        this.kkU = DeviceUtils.cFZ();
        if (this.ZYk.Du() != null) {
            this.f12999ba = new com.bytedance.sdk.openadsdk.core.ZYk.cFZ("VAST_END_CARD", this.ZYk.Du()) { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.Ry.1
            };
            com.bytedance.sdk.openadsdk.core.dLZ.tB tB = this.ZYk.Du().tB();
            if (tB != null) {
                String Pfn = tB.Pfn();
                if (!TextUtils.isEmpty(Pfn)) {
                    this.Pfn = true;
                    this.ex = (ImageView) this.jFA.f13027wd.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.f13418so);
                    oJ(tB.ZYk(), tB.tB());
                    com.bytedance.sdk.openadsdk.jFA.ex.oJ(Pfn).oJ(tB.ZYk()).ZYk(tB.tB()).Pfn(cdg.Pfn(com.bytedance.sdk.openadsdk.core.si.oJ())).ex(cdg.tB(com.bytedance.sdk.openadsdk.core.si.oJ())).tB(1).oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(this.ZYk, Pfn, new oJ(this.ex, Pfn, this, this.cFZ)));
                    return;
                }
                com.bytedance.sdk.component.jFA.ba baVar = (com.bytedance.sdk.component.jFA.ba) this.jFA.f13027wd.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.jFA);
                this.tB = baVar;
                if (baVar == null) {
                    return;
                }
                ex();
                String ex = tB.ex();
                if (ex != null) {
                    this.Pfn = true;
                    if (ex.startsWith(ProxyConfig.MATCH_HTTP)) {
                        this.tB.a_(ex);
                        return;
                    }
                    String oJ2 = com.bytedance.sdk.openadsdk.core.dLZ.Pfn.oJ(ex);
                    String str = TextUtils.isEmpty(oJ2) ? ex : oJ2;
                    this.tB.setDefaultTextEncodingName("UTF -8");
                    this.tB.oJ(null, str, "text/html", "UTF-8", null);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.BTZ.so
    public void ZYk(int i10) {
        int i11 = this.kkU;
        if (i11 == 0 && i10 > 0) {
            this.ZYk.Du().oJ().jFA(this.jFA.cY.BTZ());
        } else if (i11 > 0 && i10 == 0) {
            this.ZYk.Du().oJ().so(this.jFA.cY.BTZ());
        }
        this.kkU = i10;
    }

    /* loaded from: classes3.dex */
    private static class oJ implements com.bytedance.sdk.component.Pfn.eZI {
        private final String ZYk;
        private final AtomicBoolean ex;
        private final WeakReference<ImageView> oJ;
        private final WeakReference<Ry> tB;

        public oJ(ImageView imageView, String str, Ry ry, AtomicBoolean atomicBoolean) {
            this.oJ = new WeakReference<>(imageView);
            this.ZYk = str;
            this.tB = new WeakReference<>(ry);
            this.ex = atomicBoolean;
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
            Ry ry;
            ImageView imageView = this.oJ.get();
            if (imageView == null || (ry = this.tB.get()) == null || dlz == null) {
                return;
            }
            Object ZYk = dlz.ZYk();
            if (ZYk == null) {
                ry.oJ(-1, this.ZYk);
                return;
            }
            if (ZYk instanceof Bitmap) {
                imageView.setImageBitmap((Bitmap) ZYk);
            } else if (ZYk instanceof Drawable) {
                if (Build.VERSION.SDK_INT >= 28 && b.a(ZYk)) {
                    c.a(ZYk).start();
                }
                imageView.setImageDrawable((Drawable) ZYk);
            }
            this.ex.set(true);
            ry.tB();
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(int i10, String str, @Nullable Throwable th2) {
            Ry ry;
            ImageView imageView = this.oJ.get();
            if (imageView == null || (ry = this.tB.get()) == null) {
                return;
            }
            imageView.setVisibility(8);
            ry.oJ(-2, this.ZYk);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final int i10, final String str) {
        if (this.f13000so) {
            return;
        }
        this.f13000so = true;
        if (i10 == Integer.MAX_VALUE) {
            cY cYVar = this.ZYk;
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, cYVar.ex(), "load_vast_endcard_success", (JSONObject) null);
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(new com.bytedance.sdk.component.so.so("load_vast_endcard_fail") { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.Ry.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("reason_code", i10);
                    jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i10);
                    String str2 = str;
                    if (str2 != null) {
                        jSONObject.put("url", str2);
                    }
                    com.bytedance.sdk.openadsdk.ex.tB.ZYk(Ry.this.ZYk, Ry.this.ZYk.ex(), "load_vast_endcard_fail", jSONObject);
                } catch (Exception unused) {
                }
            }
        });
    }

    private void oJ(com.bytedance.sdk.component.jFA.ba baVar) {
        baVar.setVerticalScrollBarEnabled(false);
        baVar.setHorizontalScrollBarEnabled(false);
        baVar.setMixedContentMode(0);
        baVar.setJavaScriptEnabled(true);
        baVar.setJavaScriptCanOpenWindowsAutomatically(true);
        baVar.setDomStorageEnabled(true);
        baVar.setDatabaseEnabled(true);
        baVar.setCacheMode(-1);
        baVar.setAllowFileAccess(false);
        baVar.setSupportZoom(true);
        baVar.setBuiltInZoomControls(true);
        baVar.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        baVar.setUseWideViewPort(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean oJ(String str) {
        cY cYVar;
        if (str == null || (cYVar = this.ZYk) == null || cYVar.Du() == null || this.f12999ba == null) {
            return false;
        }
        this.ZYk.Du().ba(str);
        this.f12999ba.onClick(this.tB);
        return true;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void oJ(int i10, int i11) {
        float f10;
        float f11;
        if (i10 == 0 || i11 == 0 || this.ex == null) {
            return;
        }
        int tB = cdg.tB((Context) this.oJ);
        int Pfn = cdg.Pfn(this.oJ);
        if (i10 / i11 <= tB / Pfn) {
            tB = (int) Math.ceil(f11 * f10);
        } else {
            Pfn = (int) Math.ceil(f11 / f10);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.ex.getLayoutParams();
        layoutParams.width = tB;
        layoutParams.height = Pfn;
        layoutParams.gravity = 17;
        this.ex.setLayoutParams(layoutParams);
        this.ex.setOnClickListener(this.f12999ba);
        this.ex.setOnTouchListener(this.f12999ba);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public boolean oJ(eZI ezi) {
        com.bytedance.sdk.openadsdk.core.dLZ.tB tB;
        if (this.Pfn) {
            if (this.ex != null && this.cFZ.get()) {
                this.ex.setVisibility(0);
            } else {
                com.bytedance.sdk.component.jFA.ba baVar = this.tB;
                if (baVar != null) {
                    baVar.setVisibility(0);
                    if (this.tB.getWebView() != null) {
                        this.tB.getWebView().setOnTouchListener(this.f12999ba);
                    }
                }
            }
            cY cYVar = this.ZYk;
            if (cYVar == null || cYVar.Du() == null || (tB = this.ZYk.Du().tB()) == null) {
                return true;
            }
            tB.ZYk(ezi != null ? ezi.BTZ() : -1L);
            return true;
        }
        return false;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.ZYk.Pfn pfn) {
        com.bytedance.sdk.openadsdk.core.ZYk.cFZ cfz = this.f12999ba;
        if (cfz != null) {
            cfz.oJ(pfn);
        }
    }
}
