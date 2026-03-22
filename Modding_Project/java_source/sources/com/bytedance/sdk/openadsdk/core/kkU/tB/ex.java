package com.bytedance.sdk.openadsdk.core.kkU.tB;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import com.bytedance.sdk.component.adexpress.ZYk.WcQ;
import com.bytedance.sdk.component.adexpress.ZYk.dLZ;
import com.bytedance.sdk.component.jFA.ba;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.si;
import com.bytedance.sdk.openadsdk.core.so.awB;
import com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn;
import com.bytedance.sdk.openadsdk.utils.RZ;
import com.bytedance.sdk.openadsdk.utils.Rl;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex implements dLZ, tB<ba> {
    private String Pfn;
    private cY ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private oJ f13173ba;
    private int cFZ;
    private UN ex;
    private Context oJ;
    private ba tB;

    public ex(Context context, cY cYVar) {
        this.cFZ = 1;
        this.oJ = context;
        this.ZYk = cYVar;
        this.cFZ = cYVar.Tt();
        this.Pfn = si.ZYk(this.ZYk).oJ(this.cFZ == 1);
    }

    private void cFZ() {
        this.tB.setBackgroundColor(0);
        this.tB.setBackgroundResource(17170445);
        this.tB.setVisibility(8);
        oJ(this.tB);
        if (this.ZYk != null) {
            this.tB.setWebViewClient(new Pfn(this.oJ, this.ex, this.ZYk.edj(), null, false));
        }
        com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().oJ(this.tB, this.ex);
        this.tB.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.ex(this.ex));
    }

    private void so() {
        UN un2 = new UN(this.oJ);
        this.ex = un2;
        un2.ZYk(this.tB).oJ(this.ZYk).tB(this.ZYk.edj()).ex(this.ZYk.pe()).Pfn(this.ZYk.ZiK()).oJ(com.bytedance.sdk.openadsdk.core.so.oJ.ZYk.oJ(0.0f, 0.0f, false, this.ZYk, null, null)).oJ(this).oJ(this.tB);
    }

    public UN Pfn() {
        return this.ex;
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.tB.tB
    public void ZYk() {
        if (TextUtils.isEmpty(this.Pfn)) {
            this.tB.setVisibility(8);
        } else {
            this.tB.a_(this.Pfn);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.tB.tB
    /* renamed from: ba */
    public ba ex() {
        return this.tB;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.dLZ
    public void oJ(View view, int i10, com.bytedance.sdk.component.adexpress.tB tBVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.tB.tB
    public void tB() {
        UN un2 = this.ex;
        if (un2 != null) {
            un2.tB();
        }
        this.ex = null;
        try {
            ba baVar = this.tB;
            if (baVar != null) {
                ViewGroup viewGroup = (ViewGroup) baVar.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.tB);
                }
                this.tB.eZI();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.dLZ
    public void oJ(WcQ wcQ) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.tB.tB
    public void oJ() {
        this.tB = new ba(this.oJ);
        cFZ();
        so();
        Rl.oJ(this.tB, false, this.ZYk.TxP(), false, new Rl.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.kkU.tB.ex.1
            @Override // com.bytedance.sdk.openadsdk.utils.Rl.ZYk
            public void ZYk() {
                ex.this.oJ(false);
            }

            @Override // com.bytedance.sdk.openadsdk.utils.Rl.ZYk
            public void oJ(View view, boolean z10) {
            }

            @Override // com.bytedance.sdk.openadsdk.utils.Rl.ZYk
            public void oJ(boolean z10) {
                ex.this.oJ(z10);
            }

            @Override // com.bytedance.sdk.openadsdk.utils.Rl.ZYk
            public void oJ() {
                ex.this.oJ(true);
            }
        }, null);
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.tB.tB
    public void oJ(oJ oJVar) {
        this.f13173ba = oJVar;
    }

    private void oJ(ba baVar) {
        if (baVar == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.widget.oJ.tB.oJ(this.oJ).oJ(false).oJ(baVar.getWebView());
            baVar.setVerticalScrollBarEnabled(false);
            baVar.setHorizontalScrollBarEnabled(false);
            com.bytedance.sdk.openadsdk.core.widget.oJ.tB.oJ(baVar);
            baVar.WcQ();
            baVar.setUserAgentString(RZ.oJ(baVar.getWebView(), 7504));
            baVar.setMixedContentMode(0);
            baVar.setJavaScriptEnabled(true);
            baVar.setJavaScriptCanOpenWindowsAutomatically(true);
            baVar.setDomStorageEnabled(true);
            baVar.setDatabaseEnabled(true);
            baVar.setAllowFileAccess(false);
            baVar.setSupportZoom(true);
            baVar.setBuiltInZoomControls(true);
            baVar.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            baVar.setUseWideViewPort(true);
            baVar.setCacheMode(-1);
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.tB.tB
    public void oJ(awB awb) {
        UN un2 = this.ex;
        if (un2 != null) {
            un2.oJ(awb);
        }
    }

    public void oJ(boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("visibleState", !z10 ? 1 : 0);
        } catch (Exception e10) {
            e10.getMessage();
        }
        this.ex.oJ("visibleStateChange", jSONObject);
    }
}
