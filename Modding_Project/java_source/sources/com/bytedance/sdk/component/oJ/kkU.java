package com.bytedance.sdk.component.oJ;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.component.oJ.dLZ;
import com.ss.texturerender.TextureRenderKeys;
import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes3.dex */
public class kkU {
    Context Pfn;
    boolean WcQ;
    oJ ZYk;
    boolean awB;

    /* renamed from: ba  reason: collision with root package name */
    boolean f12800ba;
    boolean cFZ;
    dLZ.oJ eZI;
    so ex;
    PiB jFA;
    WcQ kkU;
    WebView oJ;

    /* renamed from: so  reason: collision with root package name */
    boolean f12801so;
    String tB = "IESJSBridge";
    String dLZ = TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST;
    final Set<String> BTZ = new LinkedHashSet();
    final Set<String> PiB = new LinkedHashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public kkU(WebView webView) {
        this.oJ = webView;
    }

    private void tB() {
        if ((this.oJ != null || this.WcQ || this.ZYk != null) && ((!TextUtils.isEmpty(this.tB) || this.oJ == null) && this.ex != null)) {
            return;
        }
        throw new IllegalArgumentException("Requested arguments aren't set properly when building JsBridge.");
    }

    public kkU ZYk(boolean z10) {
        this.cFZ = z10;
        return this;
    }

    public kkU oJ(oJ oJVar) {
        this.ZYk = oJVar;
        return this;
    }

    public si ZYk() {
        tB();
        return new si(this);
    }

    public kkU oJ(String str) {
        this.tB = str;
        return this;
    }

    public kkU oJ(BTZ btz) {
        this.ex = so.oJ(btz);
        return this;
    }

    public kkU oJ(boolean z10) {
        this.f12800ba = z10;
        return this;
    }

    public kkU oJ() {
        this.awB = true;
        return this;
    }

    kkU() {
    }
}
