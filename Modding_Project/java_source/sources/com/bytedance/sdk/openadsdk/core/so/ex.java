package com.bytedance.sdk.openadsdk.core.so;

import android.annotation.SuppressLint;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ex {
    private static int ZYk;
    private static volatile ex tB;
    private final List<Pfn> oJ = new ArrayList();

    public static ex oJ() {
        if (tB == null) {
            synchronized (ex.class) {
                try {
                    if (tB == null) {
                        tB = new ex();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return tB;
    }

    @Nullable
    public Pfn ZYk() {
        Pfn remove;
        if (tB() > 0 && (remove = this.oJ.remove(0)) != null) {
            return remove;
        }
        return null;
    }

    public int tB() {
        return this.oJ.size();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void tB(Pfn pfn) {
        if (pfn == null || pfn.getWebView() == null) {
            return;
        }
        if (pfn.getParent() != null) {
            ((ViewGroup) pfn.getParent()).removeView(pfn);
        }
        try {
            pfn.removeAllViews();
            pfn.cFZ();
            pfn.setWebChromeClient(null);
            pfn.setWebViewClient(null);
            pfn.setDownloadListener(null);
            pfn.setDefaultTextEncodingName("UTF-8");
            pfn.setAllowFileAccess(false);
            pfn.setJavaScriptEnabled(true);
            pfn.setCacheMode(-1);
            pfn.setDatabaseEnabled(true);
            pfn.setSupportZoom(false);
            pfn.getWebView().setLayerType(0, null);
            pfn.setBackgroundColor(0);
            pfn.getWebView().setHorizontalScrollBarEnabled(false);
            pfn.getWebView().setHorizontalScrollbarOverlay(false);
            pfn.getWebView().setVerticalScrollBarEnabled(false);
            pfn.getWebView().setVerticalScrollbarOverlay(false);
            com.bytedance.sdk.openadsdk.core.widget.oJ.tB.oJ(pfn);
            pfn.WcQ();
            pfn.setMixedContentMode(0);
        } catch (Exception unused) {
        }
    }

    public void ZYk(Pfn pfn) {
        if (pfn != null) {
            if (this.oJ.size() >= ZYk) {
                pfn.eZI();
            } else if (this.oJ.contains(pfn)) {
            } else {
                tB(pfn);
                this.oJ.add(pfn);
            }
        }
    }

    @UiThread
    public void oJ(Pfn pfn) {
        if (pfn != null) {
            ZYk(pfn);
        }
    }
}
