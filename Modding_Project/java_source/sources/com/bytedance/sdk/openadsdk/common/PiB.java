package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.oJ.ba;
/* loaded from: classes3.dex */
public class PiB {
    private ImageView Pfn;
    private RelativeLayout ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final String f12956ba;
    private Ry cFZ;
    private com.bytedance.sdk.component.jFA.ba ex;
    private final cY oJ;

    /* renamed from: so  reason: collision with root package name */
    private eZI f12957so;
    private final Context tB;

    public PiB(Context context, cY cYVar, String str) {
        this.tB = context;
        this.oJ = cYVar;
        this.f12956ba = str;
        ba();
    }

    private void ba() {
        RelativeLayout oJ = oJ(this.tB);
        this.ZYk = oJ;
        this.ex = (com.bytedance.sdk.component.jFA.ba) oJ.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.nQI);
        Ry ry = new Ry(this.tB, (RelativeLayout) this.ZYk.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.TA), this.oJ);
        this.cFZ = ry;
        this.Pfn = ry.tB();
        this.f12957so = new eZI(this.tB, (LinearLayout) this.ZYk.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.UF), this.ex, this.oJ, this.f12956ba);
    }

    private static RelativeLayout oJ(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setBackgroundColor(-1);
        relativeLayout.addView(new jFA(context));
        com.bytedance.sdk.component.jFA.ba baVar = new com.bytedance.sdk.component.jFA.ba(context);
        baVar.setId(com.bytedance.sdk.openadsdk.utils.eZI.nQI);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(12);
        layoutParams.addRule(3, com.bytedance.sdk.openadsdk.utils.eZI.TA);
        relativeLayout.addView(baVar, layoutParams);
        so soVar = new so(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(soVar.getLayoutParams());
        layoutParams2.addRule(12);
        relativeLayout.addView(soVar, layoutParams2);
        return relativeLayout;
    }

    public View Pfn() {
        return this.ZYk;
    }

    public void ZYk() {
        Ry ry = this.cFZ;
        if (ry != null) {
            ry.ZYk();
        }
        eZI ezi = this.f12957so;
        if (ezi != null) {
            ezi.ZYk();
        }
    }

    public com.bytedance.sdk.component.jFA.ba ex() {
        return this.ex;
    }

    public ImageView tB() {
        return this.Pfn;
    }

    public void oJ() {
        Ry ry = this.cFZ;
        if (ry != null) {
            ry.oJ();
        }
        eZI ezi = this.f12957so;
        if (ezi != null) {
            ezi.oJ();
        }
    }

    public void oJ(WebView webView, int i10, ba.oJ oJVar) {
        Ry ry = this.cFZ;
        if (ry != null) {
            ry.oJ(i10);
        }
        eZI ezi = this.f12957so;
        if (ezi != null) {
            ezi.oJ(webView, oJVar);
        }
    }
}
