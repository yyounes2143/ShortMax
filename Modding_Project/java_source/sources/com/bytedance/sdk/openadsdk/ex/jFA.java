package com.bytedance.sdk.openadsdk.ex;

import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class jFA {
    private final boolean Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private int f13344ba;
    private int cFZ;
    private long kkU;
    private final cY oJ;

    /* renamed from: so  reason: collision with root package name */
    private final WebView f13345so;
    private String jFA = "landingpage";
    private final Map<Integer, Long> ZYk = new HashMap();
    private final List<Integer> tB = new ArrayList();
    private final Map<Integer, String> ex = new HashMap();

    public jFA(cY cYVar, WebView webView, boolean z10) {
        this.oJ = cYVar;
        this.f13345so = webView;
        this.Pfn = z10;
    }

    public void ZYk(String str) {
        String str2 = this.ex.get(Integer.valueOf(this.f13344ba));
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        String str3 = str2;
        int i10 = this.f13344ba;
        if (i10 > 0) {
            tB.oJ(this.oJ, this.jFA, i10, str3, str, 1);
        }
    }

    public void oJ(String str, int i10) {
        if (this.Pfn) {
            i10++;
        }
        if (oJ(true)) {
            tB.oJ(this.oJ, this.jFA, this.f13344ba, str, i10);
            this.ex.put(Integer.valueOf(this.f13344ba), str);
            this.kkU = SystemClock.elapsedRealtime();
        }
    }

    public void tB(String str) {
        this.jFA = str;
    }

    private void ZYk(boolean z10) {
        try {
            WebBackForwardList copyBackForwardList = this.f13345so.copyBackForwardList();
            if (copyBackForwardList != null) {
                if (z10) {
                    int currentIndex = copyBackForwardList.getCurrentIndex();
                    this.f13344ba = currentIndex + 1;
                    if (this.Pfn) {
                        this.f13344ba = currentIndex + 2;
                        return;
                    }
                    return;
                }
                int currentIndex2 = copyBackForwardList.getCurrentIndex();
                this.cFZ = currentIndex2 + 1;
                if (this.Pfn) {
                    this.cFZ = currentIndex2 + 2;
                }
            }
        } catch (Throwable th2) {
            QSm.tB("ArbitrageLandingLog", th2.toString());
        }
    }

    public void oJ(String str) {
        if (oJ(false)) {
            tB.oJ(this.oJ, this.jFA, this.f13344ba, str, (float) (SystemClock.elapsedRealtime() - this.kkU));
        }
    }

    public void oJ(WebView webView, String str) {
        cY cYVar = this.oJ;
        if (cYVar == null || !com.bytedance.sdk.component.jFA.ZYk.oJ(cYVar.QSm().ZYk(), str)) {
            return;
        }
        String str2 = this.ex.get(Integer.valueOf(this.f13344ba));
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        tB.oJ(this.oJ, this.jFA, this.f13344ba, str2, str, 2);
    }

    private boolean oJ(boolean z10) {
        int i10 = z10 ? this.f13344ba : this.cFZ;
        ZYk(z10);
        int i11 = z10 ? this.f13344ba : this.cFZ;
        return i11 > 0 && i11 != i10;
    }
}
