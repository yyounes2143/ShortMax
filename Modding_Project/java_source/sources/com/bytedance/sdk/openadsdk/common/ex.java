package com.bytedance.sdk.openadsdk.common;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex implements IUZ.oJ {
    private tB Pfn;
    private int PiB;
    private String QSm;
    private int RZ;
    private boolean WcQ;
    private final boolean ZYk;
    private long awB;
    private boolean eZI;
    private final com.bytedance.sdk.component.jFA.ba ex;
    private int jFA;
    private long kkU;
    private final cY oJ;

    /* renamed from: so  reason: collision with root package name */
    private float f12965so;
    private WebView tB;

    /* renamed from: ba  reason: collision with root package name */
    private String f12963ba = "landingpage";
    private final Handler cFZ = new IUZ(com.bytedance.sdk.openadsdk.core.WcQ.ZYk().getLooper(), this);
    private final AtomicBoolean dLZ = new AtomicBoolean(false);
    private Pattern BTZ = null;
    private long Ry = -1;

    /* renamed from: si  reason: collision with root package name */
    private final List<Integer> f12964si = new ArrayList();

    public ex(cY cYVar, com.bytedance.sdk.component.jFA.ba baVar, String str, boolean z10) {
        this.oJ = cYVar;
        this.ex = baVar;
        this.ZYk = z10;
        ZYk();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void Pfn() {
        this.WcQ = false;
        if (this.dLZ.getAndSet(true)) {
            return;
        }
        this.kkU = SystemClock.elapsedRealtime();
        this.awB = System.currentTimeMillis();
        so();
        if (this.Pfn == null) {
            return;
        }
        WebView webView = this.tB;
        if (webView != null) {
            this.QSm = webView.getUrl();
        }
        this.Pfn.setVisibility(0);
        this.Pfn.oJ(this.oJ);
        this.Pfn.oJ();
        this.Pfn.setAlpha(this.f12965so);
        this.Pfn.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.common.ex.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        ex();
        tB();
    }

    private void ZYk() {
        com.bytedance.sdk.component.jFA.ba baVar = this.ex;
        if (baVar != null) {
            this.tB = baVar.getWebView();
            View arbitrageLoadingView = this.ex.getArbitrageLoadingView();
            if (arbitrageLoadingView instanceof tB) {
                this.Pfn = (tB) arbitrageLoadingView;
            }
        }
        this.jFA = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().SWT();
        this.f12965so = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().zGT();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ba() {
        return cFZ() > 0 && !this.dLZ.get();
    }

    private int cFZ() {
        try {
            return this.tB.copyBackForwardList().getCurrentIndex() + 1;
        } catch (Throwable unused) {
            return 0;
        }
    }

    private void ex() {
        Handler handler = this.cFZ;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    private void so() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("loading_show_interval", SystemClock.elapsedRealtime() - this.Ry);
            jSONObject.put("loading_show_timestamp", this.awB);
            WebView webView = this.tB;
            jSONObject.put("arbi_current_url", webView != null ? webView.getUrl() : "");
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.oJ, this.f12963ba, jSONObject);
    }

    public void tB(WebView webView, String str, boolean z10) {
        this.f12964si.clear();
        this.eZI = z10;
        if (z10) {
            this.WcQ = true;
        }
        this.RZ = cFZ();
    }

    public void oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f12963ba = str;
    }

    public void oJ(WebView webView, String str, boolean z10) {
        if (z10 && ba()) {
            oJ();
        }
    }

    private void tB() {
        Handler handler = this.cFZ;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(1, this.jFA);
        }
    }

    public void oJ(WebView webView, String str) {
        cY cYVar = this.oJ;
        if (cYVar == null || !com.bytedance.sdk.component.jFA.ZYk.oJ(cYVar.QSm().ZYk(), str)) {
            return;
        }
        this.PiB++;
        com.bytedance.sdk.component.utils.jFA.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.ex.1
            @Override // java.lang.Runnable
            public void run() {
                if (ex.this.ba()) {
                    ex.this.oJ();
                }
            }
        });
    }

    public void ZYk(WebView webView, String str, boolean z10) {
        if (!z10 || this.Pfn == null) {
            return;
        }
        oJ(1);
    }

    public void oJ(WebView webView, int i10) {
        tB tBVar = this.Pfn;
        if (tBVar != null) {
            tBVar.oJ(i10);
        }
        if (this.eZI) {
            if (oJ(i10, 30)) {
                oJ(30, webView);
            }
            if (oJ(i10, 50)) {
                oJ(50, webView);
            }
            if (oJ(i10, 70)) {
                oJ(70, webView);
            }
        }
        if (this.Pfn == null || i10 != 100) {
            return;
        }
        oJ(1);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void oJ() {
        if (ofl.ba()) {
            Pfn();
        } else {
            com.bytedance.sdk.component.utils.jFA.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.ex.2
                @Override // java.lang.Runnable
                public void run() {
                    ex.this.Pfn();
                }
            });
        }
    }

    private void oJ(final int i10) {
        WebView webView = this.tB;
        if (webView != null && i10 == 1) {
            String url = webView.getUrl();
            if (TextUtils.isEmpty(url) || url.equals(this.QSm)) {
                return;
            }
        }
        com.bytedance.sdk.component.utils.jFA.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.ex.4
            @Override // java.lang.Runnable
            public void run() {
                if (ex.this.Pfn != null) {
                    ex.this.dLZ.set(false);
                    ex.this.Pfn.oJ(ex.this.oJ, ex.this.f12963ba, i10, ex.this.QSm, ex.this.kkU, ex.this.WcQ, ex.this.PiB, ex.this.awB);
                    ex.this.PiB = 0;
                }
            }
        });
        ex();
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        if (message.what == 1) {
            oJ(0);
        }
    }

    public void oJ(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.Ry = SystemClock.elapsedRealtime();
        }
    }

    private boolean oJ(int i10, int i11) {
        if (i10 < i11 || this.f12964si.contains(Integer.valueOf(i11)) || this.RZ < 2) {
            return false;
        }
        this.f12964si.add(Integer.valueOf(i11));
        return true;
    }

    private void oJ(int i10, WebView webView) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_progress", i10);
            jSONObject.put("progress_timestamp", System.currentTimeMillis());
            jSONObject.put("arbi_current_url", webView.getUrl());
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.ex.tB.tB(this.oJ, this.f12963ba, jSONObject);
    }
}
