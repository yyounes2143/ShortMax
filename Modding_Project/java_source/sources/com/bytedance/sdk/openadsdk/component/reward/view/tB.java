package com.bytedance.sdk.openadsdk.component.reward.view;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.model.Ry;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
import java.util.List;
/* loaded from: classes3.dex */
public class tB extends com.bytedance.sdk.openadsdk.core.so.oJ {
    private boolean PiB;
    private com.bytedance.sdk.openadsdk.core.ZYk.Pfn QSm;
    private FrameLayout RZ;
    private View Ry;
    private int WcQ;
    private int awB;
    private int eZI;
    private float oJ;

    /* renamed from: si  reason: collision with root package name */
    private View f13053si;

    public tB(@NonNull Context context, String str) {
        super(context, str);
        this.eZI = 1;
        this.ZYk = context;
    }

    private void BTZ() {
        com.bytedance.sdk.openadsdk.WcQ.cFZ cfz = new com.bytedance.sdk.openadsdk.WcQ.cFZ(this.ZYk);
        this.f13053si = cfz;
        ZYk(cfz);
        ex();
    }

    private void PiB() {
        com.bytedance.sdk.openadsdk.WcQ.jFA jfa = new com.bytedance.sdk.openadsdk.WcQ.jFA(this.ZYk);
        this.f13053si = jfa;
        ZYk(jfa);
        ex();
        ba();
    }

    private void cFZ() {
        com.bytedance.sdk.openadsdk.WcQ.ZYk zYk = new com.bytedance.sdk.openadsdk.WcQ.ZYk(this.ZYk);
        this.f13053si = zYk;
        ZYk(zYk);
        ex();
        ba();
    }

    private void dLZ() {
        View pfn = new com.bytedance.sdk.openadsdk.WcQ.Pfn(this.ZYk);
        this.f13053si = pfn;
        ZYk(pfn);
        this.RZ = (FrameLayout) this.f13053si.findViewById(eZI.hwh);
        ImageView imageView = (ImageView) this.f13053si.findViewById(eZI.f13408ib);
        TextView textView = (TextView) this.f13053si.findViewById(eZI.Qzd);
        View findViewById = this.f13053si.findViewById(520093739);
        oJ(this.RZ, imageView);
        textView.setText(getDescription());
        tB(this.RZ);
        tB(imageView);
        tB(textView);
        if (findViewById instanceof PAGLogoView) {
            ((PAGLogoView) findViewById).initData(this.tB);
        }
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.tB.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.oJ(((com.bytedance.sdk.openadsdk.core.so.oJ) tB.this).ZYk, ((com.bytedance.sdk.openadsdk.core.so.oJ) tB.this).tB, ((com.bytedance.sdk.openadsdk.core.so.oJ) tB.this).f13275ba);
                } catch (Throwable th2) {
                    QSm.tB("FullInteractionStyleView", th2.getMessage());
                }
            }
        });
    }

    private float getHeightDp() {
        return cdg.tB(this.ZYk, cdg.BTZ(this.ZYk));
    }

    private float getWidthDp() {
        return cdg.tB(this.ZYk, cdg.PiB(this.ZYk));
    }

    private void jFA() {
        com.bytedance.sdk.openadsdk.WcQ.ba baVar = new com.bytedance.sdk.openadsdk.WcQ.ba(this.ZYk);
        this.f13053si = baVar;
        ZYk(baVar);
        ex();
        ba();
    }

    private void kkU() {
        com.bytedance.sdk.openadsdk.WcQ.so soVar = new com.bytedance.sdk.openadsdk.WcQ.so(this.ZYk);
        this.f13053si = soVar;
        ZYk(soVar);
        ex();
    }

    private void so() {
        com.bytedance.sdk.openadsdk.WcQ.ex exVar = new com.bytedance.sdk.openadsdk.WcQ.ex(this.ZYk);
        this.f13053si = exVar;
        ZYk(exVar);
        ex();
    }

    public FrameLayout getVideoContainer() {
        return this.RZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.oJ
    protected void oJ(View view, int i10, com.bytedance.sdk.openadsdk.core.model.eZI ezi) {
    }

    public void setDownloadListener(com.bytedance.sdk.openadsdk.core.ZYk.Pfn pfn) {
        this.QSm = pfn;
    }

    public void setIsMute(boolean z10) {
        this.PiB = z10;
        View view = this.Ry;
        if (view != null && (view instanceof com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba)) {
            ((com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba) view).oJ(z10, "interactionStyle");
        }
    }

    private void Pfn() {
        com.bytedance.sdk.openadsdk.WcQ.tB tBVar = new com.bytedance.sdk.openadsdk.WcQ.tB(this.ZYk);
        this.f13053si = tBVar;
        ZYk(tBVar);
        ex();
        ba();
    }

    private void ZYk() {
        this.cFZ = cdg.ZYk(this.ZYk, this.WcQ);
        this.f13276so = cdg.ZYk(this.ZYk, this.awB);
        int i10 = (int) (this.oJ * 1000.0f);
        if (this.eZI == 1) {
            if (i10 == 666) {
                Pfn();
            } else if (i10 == 1000) {
                tB();
            } else if (i10 == 1500) {
                dLZ();
            } else if (i10 != 1777) {
                oJ(0.562f);
                BTZ();
            } else {
                PiB();
            }
        } else if (i10 == 562) {
            jFA();
        } else if (i10 == 666) {
            cFZ();
        } else if (i10 == 1000) {
            tB();
        } else if (i10 != 1500) {
            oJ(1.777f);
            kkU();
        } else {
            so();
        }
    }

    private void ba() {
        TextView textView = (TextView) this.f13053si.findViewById(eZI.BWx);
        if (textView != null) {
            textView.setText(getDescription());
            tB(textView);
        }
    }

    private void ex() {
        this.RZ = (FrameLayout) this.f13053si.findViewById(eZI.hwh);
        ImageView imageView = (ImageView) this.f13053si.findViewById(eZI.JJ);
        si siVar = (si) this.f13053si.findViewById(eZI.yQF);
        TextView textView = (TextView) this.f13053si.findViewById(eZI.YF);
        TextView textView2 = (TextView) this.f13053si.findViewById(eZI.eXp);
        View findViewById = this.f13053si.findViewById(520093739);
        if (!TextUtils.isEmpty(this.tB.ypD())) {
            textView2.setText(this.tB.ypD());
        }
        oJ(this.RZ, imageView);
        if (this.tB.Zjw() != null && !TextUtils.isEmpty(this.tB.Zjw().oJ())) {
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.tB.Zjw().oJ(), this.tB.Zjw().ZYk(), this.tB.Zjw().tB(), siVar, this.tB);
        }
        textView.setText(getTitle());
        tB(this.RZ);
        tB(imageView);
        tB(siVar);
        tB(textView);
        tB(textView2);
        if (findViewById instanceof PAGLogoView) {
            ((PAGLogoView) findViewById).initData(this.tB);
        }
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.tB.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.oJ(((com.bytedance.sdk.openadsdk.core.so.oJ) tB.this).ZYk, ((com.bytedance.sdk.openadsdk.core.so.oJ) tB.this).tB, ((com.bytedance.sdk.openadsdk.core.so.oJ) tB.this).f13275ba);
                } catch (Throwable th2) {
                    QSm.tB("FullInteractionStyleView", th2.getMessage());
                }
            }
        });
    }

    private void tB() {
        com.bytedance.sdk.openadsdk.WcQ.oJ oJVar = new com.bytedance.sdk.openadsdk.WcQ.oJ(this.ZYk);
        this.f13053si = oJVar;
        ZYk(oJVar);
        ex();
        ba();
    }

    public void oJ(cY cYVar, float f10, int i10, int i11, int i12) {
        this.oJ = f10;
        this.eZI = i10;
        this.tB = cYVar;
        this.f13275ba = "fullscreen_interstitial_ad";
        this.WcQ = i11;
        this.awB = i12;
        oJ(this.jFA);
        ZYk();
    }

    private void tB(View view) {
        if (view == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar = this.QSm;
        if (oJVar == null) {
            Context context = this.ZYk;
            cY cYVar = this.tB;
            String str = this.f13275ba;
            oJVar = new com.bytedance.sdk.openadsdk.core.ZYk.oJ(context, cYVar, str, HyG.oJ(str));
            oJVar.oJ(oJ(this.tB, this.ZYk));
        }
        view.setOnTouchListener(oJVar);
        view.setOnClickListener(oJVar);
    }

    private void oJ(FrameLayout frameLayout, ImageView imageView) {
        cY cYVar = this.tB;
        if (cYVar == null) {
            return;
        }
        boolean Pfn = cY.Pfn(cYVar);
        if (this.tB.ib() != null && Pfn) {
            cdg.oJ((View) imageView, 8);
            cdg.oJ((View) frameLayout, 0);
            return;
        }
        oJ(imageView);
        cdg.oJ((View) imageView, 0);
        cdg.oJ((View) frameLayout, 8);
    }

    private void ZYk(View view) {
        if (view.getParent() == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            view.setLayoutParams(layoutParams);
            layoutParams.gravity = 17;
            addView(view);
        }
    }

    public View getInteractionStyleRootView() {
        return this;
    }

    private void oJ(ImageView imageView) {
        List<Ry> yB;
        Ry ry;
        cY cYVar = this.tB;
        if (cYVar == null || (yB = cYVar.yB()) == null || yB.size() <= 0 || (ry = yB.get(0)) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.jFA.ex.oJ(ry).tB(1).oJ(com.bytedance.sdk.openadsdk.jFA.tB.oJ(this.tB, ry.oJ(), imageView));
    }

    private com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba oJ(cY cYVar, Context context) {
        if (cYVar != null && cYVar.sQ() == 4) {
            return new com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ex(context, this.f13275ba);
        }
        return null;
    }

    private void oJ(float f10) {
        float min;
        float max;
        int max2;
        int i10;
        int i11;
        float heightDp = getHeightDp();
        float widthDp = getWidthDp();
        if (this.eZI == 2) {
            min = Math.max(heightDp, widthDp);
            max = Math.min(heightDp, widthDp);
        } else {
            min = Math.min(heightDp, widthDp);
            max = Math.max(heightDp, widthDp);
        }
        if (this.eZI != 2 && cdg.tB((Activity) this.ZYk)) {
            max -= cdg.tB(this.ZYk, cdg.oJ());
        }
        int i12 = 20;
        if (this.eZI != 2) {
            if (f10 != 0.0f && f10 != 100.0f) {
                i11 = (int) Math.max((max - (((min - 20.0f) - 20.0f) / f10)) / 2.0f, 0.0f);
                max2 = 20;
                i10 = 20;
                i12 = i11;
            }
            i12 = 0;
            i11 = 0;
            max2 = 0;
            i10 = 0;
        } else {
            if (f10 != 0.0f && f10 != 100.0f) {
                max2 = (int) Math.max((min - (((max - 20.0f) - 20.0f) * f10)) / 2.0f, 0.0f);
                i10 = max2;
                i11 = 20;
            }
            i12 = 0;
            i11 = 0;
            max2 = 0;
            i10 = 0;
        }
        ((Activity) this.ZYk).getWindow().getDecorView().setPadding(cdg.ZYk(this.ZYk, max2), cdg.ZYk(this.ZYk, i12), cdg.ZYk(this.ZYk, i10), cdg.ZYk(this.ZYk, i11));
    }
}
