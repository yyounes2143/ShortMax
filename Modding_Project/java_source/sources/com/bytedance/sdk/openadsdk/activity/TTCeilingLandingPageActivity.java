package com.bytedance.sdk.openadsdk.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.RZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.oJ.ba;
import com.bytedance.sdk.openadsdk.ex.BTZ;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.oq;
/* loaded from: classes3.dex */
public class TTCeilingLandingPageActivity extends TTBaseLandingPageActivity {
    private String Pfn;
    private cY ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f12870ba;
    private String cFZ;
    private com.bytedance.sdk.component.jFA.ba dLZ;
    private String ex;
    private BTZ jFA;
    private com.bytedance.sdk.openadsdk.common.ex kkU;
    oJ oJ;
    private UN tB;

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ();
    }

    private void tB() {
        UN un2 = new UN(this);
        this.tB = un2;
        un2.ZYk(this.dLZ).tB(this.ex).ex(this.Pfn).oJ(this.ZYk).ZYk(this.f12870ba).oJ(this.ZYk.oG()).Pfn(this.ZYk.ZiK()).oJ(this.dLZ).ZYk("landingpage_split_ceiling");
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!WcQ.Pfn()) {
            finish();
            return;
        }
        Intent intent = getIntent();
        this.f12870ba = intent.getIntExtra("source", -1);
        cY oJ2 = IUZ.oJ().oJ(IUZ.oJ(intent));
        this.ZYk = oJ2;
        if (oJ2 == null) {
            finish();
            return;
        }
        this.cFZ = oJ2.so();
        this.ex = this.ZYk.edj();
        this.Pfn = this.ZYk.pe();
        int i10 = 7;
        if (this.ZYk.BHY().getDurationSlotType() != 7) {
            i10 = 5;
        }
        this.f12870ba = i10;
        FrameLayout tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(this);
        oJ(this, tBVar);
        setContentView(tBVar);
        tB();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        BTZ btz = this.jFA;
        if (btz != null) {
            btz.so();
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void oJ(Context context, FrameLayout frameLayout) {
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar;
        this.dLZ = new com.bytedance.sdk.component.jFA.ba(context);
        frameLayout.addView(this.dLZ, new FrameLayout.LayoutParams(-1, -1));
        View ZYk = com.bytedance.sdk.openadsdk.core.widget.ba.ZYk(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 8388661;
        layoutParams.topMargin = cdg.ZYk(context, 18.0f);
        layoutParams.rightMargin = cdg.ZYk(context, 18.0f);
        frameLayout.addView(ZYk, layoutParams);
        final int cFZ = this.ZYk.oq().cFZ();
        if (cFZ != 3) {
            exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(cdg.ZYk(context, 28.0f), cdg.ZYk(context, 28.0f));
            layoutParams2.gravity = 8388659;
            layoutParams2.topMargin = cdg.ZYk(context, 18.0f);
            layoutParams2.leftMargin = cdg.ZYk(context, 18.0f);
            int ZYk2 = cdg.ZYk(context, 5.0f);
            exVar.setPadding(ZYk2, ZYk2, ZYk2, ZYk2);
            exVar.setScaleType(ImageView.ScaleType.FIT_XY);
            exVar.setBackground(com.bytedance.sdk.openadsdk.core.widget.ex.oJ());
            exVar.setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(context, "tt_white_lefterbackicon_titlebar"));
            frameLayout.addView(exVar, layoutParams2);
        } else {
            exVar = null;
        }
        oq.oJ(this.dLZ, this.cFZ);
        final WebView webView = this.dLZ.getWebView();
        ZYk.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTCeilingLandingPageActivity.this.finish();
            }
        });
        BTZ btz = new BTZ(this.ZYk, webView, true);
        this.jFA = btz;
        btz.oJ("landingpage_split_ceiling");
        final ba.oJ oJVar = this.jFA.oJ;
        if (exVar != null) {
            exVar.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    int i10 = cFZ;
                    if (i10 != 1) {
                        if (i10 != 2) {
                            return;
                        }
                    } else {
                        TTCeilingLandingPageActivity.this.finish();
                    }
                    WebView webView2 = webView;
                    if (webView2 != null && webView2.canGoBack()) {
                        webView.goBack();
                        ba.oJ oJVar2 = oJVar;
                        if (oJVar2 != null) {
                            oJVar2.oJ();
                            return;
                        }
                        return;
                    }
                    TTCeilingLandingPageActivity.this.finish();
                }
            });
        }
        com.bytedance.sdk.openadsdk.common.ex oJ2 = HyG.oJ(this.ZYk, this.dLZ, this, "landingpage_split_ceiling");
        this.kkU = oJ2;
        if (oJ2 != null) {
            oJ2.oJ("landingpage_split_ceiling");
            this.kkU.oJ();
        }
        HyG.oJ(this.ZYk, this.dLZ, true);
        this.oJ = new oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.3
            @Override // com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.oJ
            public void oJ() {
                if (TTCeilingLandingPageActivity.this.ZYk.oq().so() == RZ.ZYk) {
                    TTCeilingLandingPageActivity.this.finish();
                }
            }
        };
        com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn pfn = new com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn(this, this.tB, this.ex, this.kkU, this.jFA, true, true, this.oJ) { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.4
            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                super.onPageFinished(webView2, str);
            }
        };
        pfn.oJ(this.ZYk);
        com.bytedance.sdk.openadsdk.core.widget.oJ.ex exVar2 = new com.bytedance.sdk.openadsdk.core.widget.oJ.ex(this.tB, this.jFA, this.kkU) { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.5
            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.ex, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView2, int i10) {
                super.onProgressChanged(webView2, i10);
            }
        };
        com.bytedance.sdk.component.jFA.ba baVar = this.dLZ;
        if (baVar != null) {
            baVar.setWebViewClient(pfn);
            this.dLZ.setWebChromeClient(exVar2);
        }
        if (webView != null) {
            webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.6
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (TTCeilingLandingPageActivity.this.jFA != null) {
                        TTCeilingLandingPageActivity.this.jFA.oJ(motionEvent);
                        return false;
                    }
                    return false;
                }
            });
            webView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity.7
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i10, int i11, int i12, int i13) {
                    if (TTCeilingLandingPageActivity.this.jFA != null) {
                        TTCeilingLandingPageActivity.this.jFA.ZYk(i11);
                    }
                }
            });
        }
    }
}
