package com.bytedance.sdk.component.adexpress.Pfn;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.UiThread;
import com.bytedance.sdk.component.adexpress.ZYk.PiB;
import com.bytedance.sdk.component.adexpress.ZYk.cFZ;
import com.bytedance.sdk.component.adexpress.ZYk.dLZ;
import com.bytedance.sdk.component.adexpress.ZYk.so;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.jFA.ba;
import com.bytedance.sdk.component.utils.WcQ;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class oJ implements dLZ, com.bytedance.sdk.component.adexpress.ZYk.ex<ba>, com.bytedance.sdk.component.adexpress.oJ, com.bytedance.sdk.component.adexpress.theme.oJ {
    private PiB BTZ;
    private boolean PiB;
    private int WcQ;
    protected boolean ZYk;
    private Context cFZ;
    private so dLZ;
    protected ba ex;
    private String jFA;
    private volatile cFZ kkU;
    protected JSONObject oJ;

    /* renamed from: so  reason: collision with root package name */
    private String f12622so;
    protected boolean tB;
    protected int Pfn = 8;

    /* renamed from: ba  reason: collision with root package name */
    protected AtomicBoolean f12621ba = new AtomicBoolean(false);

    public oJ(Context context, PiB piB, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver) {
        this.ZYk = false;
        this.cFZ = context;
        this.BTZ = piB;
        this.f12622so = piB.ex();
        themeStatusBroadcastReceiver.oJ(this);
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            BTZ();
            return;
        }
        ba PiB = PiB();
        this.ex = PiB;
        if (PiB == null) {
            Log.d("WebViewRender", "initWebView: create WebView");
            if (com.bytedance.sdk.component.adexpress.ex.oJ() != null) {
                this.ex = new ba(com.bytedance.sdk.component.adexpress.ex.oJ());
                return;
            }
            return;
        }
        this.ZYk = true;
        Log.d("WebViewRender", "initWebView: reuse WebView");
    }

    private void BTZ() {
        if (this.cFZ == null && com.bytedance.sdk.component.adexpress.ex.oJ() != null) {
            this.cFZ = com.bytedance.sdk.component.adexpress.ex.oJ();
        }
        if (this.cFZ != null) {
            ba PiB = PiB();
            this.ex = PiB;
            if (PiB == null) {
                Log.d("WebViewRender", "initWebView: create WebView by act");
                this.ex = new ba(new MutableContextWrapper(this.cFZ.getApplicationContext()));
                return;
            }
            this.ZYk = true;
            Log.d("WebViewRender", "initWebView: reuse WebView");
        }
    }

    private ba PiB() {
        if (this.BTZ.cY()) {
            return Pfn.oJ().oJ(this.cFZ, this.f12622so);
        }
        return Pfn.oJ().ZYk(this.cFZ, this.f12622so);
    }

    private void WcQ() {
        if (this.BTZ.cY()) {
            Pfn.oJ().ZYk(this.ex);
        } else {
            Pfn.oJ().tB(this.ex);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
    /* renamed from: ZYk */
    public ba Pfn() {
        return oJ();
    }

    public void ba() {
        if (oJ() == null) {
            return;
        }
        try {
            oJ().getWebView().resumeTimers();
        } catch (Exception unused) {
        }
    }

    public abstract void cFZ();

    public PiB dLZ() {
        return this.BTZ;
    }

    public void ex() {
        if (this.f12621ba.get()) {
            return;
        }
        this.f12621ba.set(true);
        cFZ();
        if (this.ex.getParent() != null) {
            ((ViewGroup) this.ex.getParent()).removeView(this.ex);
        }
        if (this.tB) {
            WcQ();
        } else {
            Pfn.oJ().Pfn(this.ex);
        }
    }

    public abstract void oJ(int i10);

    public void so() {
        jFA();
        Activity oJ = com.bytedance.sdk.component.utils.ZYk.oJ(this.ex);
        if (oJ != null) {
            this.WcQ = ZYk(oJ);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
    public int tB() {
        return 0;
    }

    private int ZYk(Activity activity) {
        return activity.hashCode();
    }

    public void oJ(String str) {
        this.jFA = str;
    }

    public ba oJ() {
        return this.ex;
    }

    public void oJ(so soVar) {
        this.dLZ = soVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
    public void oJ(cFZ cfz) {
        String str;
        this.kkU = cfz;
        if (oJ() != null && oJ().getWebView() != null) {
            if (TextUtils.isEmpty(this.jFA)) {
                this.kkU.oJ(102, "url is empty");
                return;
            }
            if (!this.BTZ.cY()) {
                if (!com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.oJ(this.oJ)) {
                    cFZ cfz2 = this.kkU;
                    StringBuilder sb2 = new StringBuilder("data null is ");
                    sb2.append(this.oJ == null);
                    cfz2.oJ(103, sb2.toString());
                    return;
                }
            } else if (tB() == 9 && !com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.ZYk(this.oJ)) {
                cFZ cfz3 = this.kkU;
                StringBuilder sb3 = new StringBuilder("data null is ");
                sb3.append(this.oJ == null);
                cfz3.oJ(103, sb3.toString());
                return;
            }
            this.BTZ.Pfn().oJ(this.ZYk);
            if (this.ZYk) {
                try {
                    int Xe = this.BTZ.Xe();
                    if (this.BTZ.cY() && Xe == 1) {
                        this.BTZ.tB();
                        str = "javascript:window.SDK_RESET_RENDER();" + ("window.SDK_INJECT_DATA=" + this.BTZ.tB() + ";") + "window.SDK_TRIGGER_RENDER();";
                    } else {
                        str = "javascript:window.SDK_RESET_RENDER();window.SDK_TRIGGER_RENDER();";
                    }
                    this.ex.si();
                    this.BTZ.Pfn();
                    WcQ.oJ(this.ex.getWebView(), str);
                    return;
                } catch (Exception e10) {
                    Pfn.oJ().Pfn(this.ex);
                    this.kkU.oJ(102, "load exception is " + e10.getMessage());
                    return;
                }
            }
            ba oJ = oJ();
            oJ.si();
            this.BTZ.Pfn();
            oJ.a_(this.jFA);
            return;
        }
        cFZ cfz4 = this.kkU;
        StringBuilder sb4 = new StringBuilder("SSWebview null is ");
        sb4.append(oJ() == null);
        sb4.append(" or Webview is null");
        cfz4.oJ(102, sb4.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void jFA() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void kkU() {
    }

    public void oJ(boolean z10) {
        this.PiB = z10;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.dLZ
    public void oJ(final com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ) {
        if (wcQ == null) {
            if (this.kkU != null) {
                this.kkU.oJ(105, "renderResult is null");
                return;
            }
            return;
        }
        boolean ZYk = wcQ.ZYk();
        final float tB = (float) wcQ.tB();
        final float ex = (float) wcQ.ex();
        if (tB() == 0 && (tB <= 0.0f || ex <= 0.0f)) {
            if (this.kkU != null) {
                cFZ cfz = this.kkU;
                cfz.oJ(105, "width is " + tB + "height is " + ex);
                return;
            }
            return;
        }
        this.tB = ZYk;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            oJ(wcQ, tB, ex);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.Pfn.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    oJ.this.oJ(wcQ, tB, ex);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ, float f10, float f11) {
        wcQ.kkU();
        boolean z10 = this.tB;
        if (z10 && !this.PiB) {
            oJ(f10, f11);
            oJ(this.Pfn);
            if (this.kkU != null) {
                this.kkU.oJ(oJ(), wcQ);
                return;
            }
            return;
        }
        if (!z10) {
            Pfn.oJ().Pfn(this.ex);
        }
        oJ(wcQ.kkU(), wcQ.jFA());
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.dLZ
    public void oJ(View view, int i10, com.bytedance.sdk.component.adexpress.tB tBVar) {
        so soVar = this.dLZ;
        if (soVar != null) {
            soVar.oJ(view, i10, tBVar);
        }
    }

    @UiThread
    private void oJ(float f10, float f11) {
        this.BTZ.Pfn().Pfn();
        if (tB() == 9) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) oJ().getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            }
            layoutParams.width = -1;
            layoutParams.height = -1;
            oJ().setLayoutParams(layoutParams);
            return;
        }
        int oJ = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.cFZ, f10);
        int oJ2 = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.cFZ, f11);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) oJ().getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(oJ, oJ2);
        }
        layoutParams2.width = oJ;
        layoutParams2.height = oJ2;
        oJ().setLayoutParams(layoutParams2);
    }

    private void oJ(int i10, String str) {
        if (this.kkU != null) {
            this.kkU.oJ(i10, str);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.oJ
    public void oJ(Activity activity) {
        if (this.WcQ == 0 || activity == null || activity.hashCode() != this.WcQ) {
            return;
        }
        ex();
        kkU();
    }

    public void oJ(JSONObject jSONObject) {
        this.oJ = jSONObject;
    }
}
