package com.bytedance.sdk.component.oJ;

import android.webkit.WebView;
import com.bytedance.sdk.component.oJ.ex;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class si {
    static Id oJ;
    private final List<WcQ> Pfn;
    private final oJ ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private volatile boolean f12804ba;
    private final kkU ex;
    private final WebView tB;

    /* JADX INFO: Access modifiers changed from: package-private */
    public si(kkU kku) {
        ArrayList arrayList = new ArrayList();
        this.Pfn = arrayList;
        this.f12804ba = false;
        this.ex = kku;
        if (kku.f12801so && oJ != null) {
            throw null;
        }
        if (kku.oJ != null) {
            oJ oJVar = kku.ZYk;
            if (oJVar == null) {
                this.ZYk = new Xe();
            } else {
                this.ZYk = oJVar;
            }
        } else {
            this.ZYk = kku.ZYk;
        }
        this.ZYk.oJ(kku, (oq) null);
        this.tB = kku.oJ;
        arrayList.add(kku.kkU);
        jr.oJ(kku.cFZ);
    }

    private void ZYk() {
        if (this.f12804ba) {
            jFA.oJ(new IllegalStateException("JsBridge2 is already released!!!"));
        }
    }

    public static kkU oJ(WebView webView) {
        return new kkU(webView);
    }

    public si oJ(String str, Pfn<?, ?> pfn) {
        return oJ(str, (String) null, pfn);
    }

    public si oJ(String str, String str2, Pfn<?, ?> pfn) {
        ZYk();
        this.ZYk.cFZ.oJ(str, pfn);
        return this;
    }

    public si oJ(String str, ex.ZYk zYk) {
        return oJ(str, (String) null, zYk);
    }

    public si oJ(String str, String str2, ex.ZYk zYk) {
        ZYk();
        this.ZYk.cFZ.oJ(str, zYk);
        return this;
    }

    public void oJ() {
        if (this.f12804ba) {
            return;
        }
        this.ZYk.ZYk();
        this.f12804ba = true;
        Iterator<WcQ> it = this.Pfn.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }
}
