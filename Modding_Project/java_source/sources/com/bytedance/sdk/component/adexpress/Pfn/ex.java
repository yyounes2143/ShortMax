package com.bytedance.sdk.component.adexpress.Pfn;

import android.webkit.JavascriptInterface;
import com.bytedance.sdk.component.oJ.Xe;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class ex {
    private WeakReference<Xe> oJ;

    public ex(Xe xe2) {
        this.oJ = new WeakReference<>(xe2);
    }

    @JavascriptInterface
    public void invokeMethod(String str) {
        WeakReference<Xe> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().invokeMethod(str);
        }
    }

    public void oJ(Xe xe2) {
        this.oJ = new WeakReference<>(xe2);
    }
}
