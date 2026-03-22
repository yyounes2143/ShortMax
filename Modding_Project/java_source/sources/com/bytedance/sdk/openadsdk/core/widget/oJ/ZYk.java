package com.bytedance.sdk.openadsdk.core.widget.oJ;

import android.content.MutableContextWrapper;
import android.net.Uri;
import android.os.MessageQueue;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.RZ;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class ZYk implements oJ {
    private final boolean Pfn;
    private com.bytedance.sdk.component.jFA.ba ZYk;
    private final MessageQueue ex;
    UN oJ;
    private final AtomicInteger tB;

    public ZYk(int i10, boolean z10, MessageQueue messageQueue) {
        this.tB = new AtomicInteger(i10);
        this.Pfn = z10;
        this.ex = messageQueue;
    }

    private void oJ(com.bytedance.sdk.component.jFA.ba baVar) {
        if (baVar == null || baVar.getWebView() == null) {
            return;
        }
        try {
            tB.oJ(si.oJ()).oJ(false).oJ(baVar.getWebView());
            baVar.setVerticalScrollBarEnabled(false);
            baVar.setHorizontalScrollBarEnabled(false);
            tB.oJ(baVar);
            baVar.WcQ();
            baVar.setUserAgentString(RZ.oJ(baVar.getWebView(), 7504));
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
        } catch (Throwable th2) {
            QSm.tB("WebViewPool", th2.toString());
        }
    }

    public void ZYk() {
        if (this.tB.get() <= 0) {
            return;
        }
        Objects.toString(this.tB);
        String ex = com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.ex(null);
        if (this.Pfn) {
            String ex2 = com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.ex("v3");
            if (ex != null && ex.equals(ex2)) {
                return;
            }
            ex = ex2;
        }
        if (TextUtils.isEmpty(ex)) {
            return;
        }
        try {
            com.bytedance.sdk.component.jFA.ba baVar = new com.bytedance.sdk.component.jFA.ba(new MutableContextWrapper(si.oJ()));
            this.ZYk = baVar;
            if (baVar.getWebView() == null) {
                return;
            }
            this.ZYk.setWebViewClient(new WebViewClient() { // from class: com.bytedance.sdk.openadsdk.core.widget.oJ.ZYk.1
                @Override // android.webkit.WebViewClient
                public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                    return true;
                }
            });
            oJ(this.ZYk);
            Uri build = Uri.parse(ex).buildUpon().appendQueryParameter("isPreLoad", "1").build();
            UN un2 = new UN(this.ZYk.getContext());
            this.oJ = un2;
            un2.ZYk(this.ZYk).oJ(this).oJ(this.ZYk);
            com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().oJ(this.ZYk, this.oJ);
            this.ZYk.a_(build.toString());
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.oJ
    public void oJ() {
        MessageQueue messageQueue;
        if (this.Pfn) {
            com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().ZYk(this.ZYk);
        } else {
            com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().tB(this.ZYk);
        }
        try {
            this.tB.get();
            this.tB.decrementAndGet();
            if (this.tB.get() <= 0 || (messageQueue = this.ex) == null) {
                return;
            }
            messageQueue.addIdleHandler(new MessageQueue.IdleHandler() { // from class: com.bytedance.sdk.openadsdk.core.widget.oJ.ZYk.2
                @Override // android.os.MessageQueue.IdleHandler
                public boolean queueIdle() {
                    new ZYk(ZYk.this.tB.get(), ZYk.this.Pfn, ZYk.this.ex).ZYk();
                    return false;
                }
            });
        } catch (Exception e10) {
            e10.getMessage();
        }
    }
}
