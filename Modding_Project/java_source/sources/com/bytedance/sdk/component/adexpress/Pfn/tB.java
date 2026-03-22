package com.bytedance.sdk.component.adexpress.Pfn;

import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class tB {
    private WeakReference<ZYk> oJ;

    public tB(ZYk zYk) {
        this.oJ = new WeakReference<>(zYk);
    }

    @JavascriptInterface
    public void adAnalysisData(String str) {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get();
        }
    }

    @JavascriptInterface
    public String adInfo() {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            return this.oJ.get().adInfo();
        }
        return "";
    }

    @JavascriptInterface
    public String appInfo() {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            return this.oJ.get().appInfo();
        }
        return "";
    }

    @JavascriptInterface
    public void changeVideoState(String str) {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().changeVideoState(str);
        }
    }

    @JavascriptInterface
    public void clickEvent(String str) {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().clickEvent(str);
        }
    }

    @JavascriptInterface
    public void dynamicTrack(String str) {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().dynamicTrack(str);
        }
    }

    @JavascriptInterface
    public String getCurrentVideoState() {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            return this.oJ.get().getCurrentVideoState();
        }
        return "";
    }

    @JavascriptInterface
    public String getData(String str) {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            return this.oJ.get().getData(str);
        }
        return "";
    }

    @JavascriptInterface
    public String getTemplateInfo() {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            return this.oJ.get().getTemplateInfo();
        }
        return "";
    }

    @JavascriptInterface
    public void initRenderFinish() {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().initRenderFinish();
        }
    }

    @JavascriptInterface
    public void muteVideo(String str) {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().muteVideo(str);
        }
    }

    public void oJ(ZYk zYk) {
        this.oJ = new WeakReference<>(zYk);
    }

    @JavascriptInterface
    public void renderDidFinish(String str) {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().renderDidFinish(str);
        }
    }

    @JavascriptInterface
    public void requestPauseVideo(String str) {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().oJ(str);
        }
    }

    @JavascriptInterface
    public void skipVideo() {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().skipVideo();
        }
    }

    @JavascriptInterface
    public void videoFrameChanged(String str) {
        WeakReference<ZYk> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().videoFrameChanged(str);
        }
    }
}
