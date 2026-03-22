package com.bytedance.sdk.openadsdk.component.reward.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.adexpress.ZYk.WcQ;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.component.reward.oJ.awB;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BTZ {
    awB BTZ;
    private Pfn Id;
    ImageView Pfn;
    private int QSm;
    private final String RZ;
    private final boolean Ry;
    final Activity ZYk;
    public QSm awB;

    /* renamed from: ba  reason: collision with root package name */
    FrameLayout f13043ba;
    View cFZ;
    @Nullable
    private com.bytedance.sdk.openadsdk.core.widget.dLZ cY;
    RelativeLayout dLZ;
    com.bytedance.sdk.openadsdk.core.Pfn.ba eZI;
    final cY ex;
    PAGLogoView jFA;
    ImageView kkU;

    /* renamed from: oq  reason: collision with root package name */
    private boolean f13044oq;

    /* renamed from: so  reason: collision with root package name */
    View f13046so;
    protected final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ tB;
    int oJ = 3;
    protected int PiB = 0;
    protected final AtomicBoolean WcQ = new AtomicBoolean(false);

    /* renamed from: si  reason: collision with root package name */
    Runnable f13045si = new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.BTZ.2
        @Override // java.lang.Runnable
        public void run() {
            ImageView imageView;
            try {
                cY cYVar = BTZ.this.ex;
                if ((cYVar == null || !cYVar.RQ()) && (imageView = BTZ.this.Pfn) != null) {
                    int[] iArr = new int[2];
                    imageView.getLocationOnScreen(iArr);
                    BTZ.this.tB.f13022mu.oJ(iArr[0]);
                }
            } catch (Exception unused) {
            }
        }
    };

    public BTZ(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        this.tB = oJVar;
        this.ZYk = oJVar.HyG;
        this.ex = oJVar.ZYk;
        this.RZ = oJVar.Pfn;
        this.Ry = oJVar.ex;
    }

    private void Ry() {
        RelativeLayout relativeLayout;
        Pfn pfn = (Pfn) this.tB.f13027wd.findViewById(eZI.BTZ);
        this.Id = pfn;
        pfn.oJ(this.tB);
        com.bytedance.sdk.openadsdk.core.widget.dLZ dlz = (com.bytedance.sdk.openadsdk.core.widget.dLZ) this.tB.f13027wd.findViewById(eZI.Uf);
        this.cY = dlz;
        if (dlz != null) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
            dlz.oJ(oJVar.ZYk, oJVar.Pfn, null);
        }
        this.jFA = (PAGLogoView) this.tB.f13027wd.findViewById(520093757);
        this.kkU = (ImageView) this.tB.f13027wd.findViewById(eZI.JC);
        this.Pfn = (ImageView) this.tB.f13027wd.findViewById(520093708);
        this.f13043ba = (FrameLayout) this.tB.f13027wd.findViewById(eZI.dLZ);
        this.cFZ = this.tB.f13027wd.findViewById(eZI.f13417si);
        this.f13046so = this.tB.f13027wd.findViewById(eZI.SCr);
        this.dLZ = (RelativeLayout) this.tB.f13027wd.findViewById(eZI.eGo);
        awB awb = this.BTZ;
        if (awb != null && awb.ex() != null && (relativeLayout = this.dLZ) != null) {
            relativeLayout.addView(this.BTZ.ex(), new LinearLayout.LayoutParams(-1, -1));
            this.BTZ.ZYk();
        }
    }

    public void BTZ() {
        try {
            awB awb = this.BTZ;
            if (awb != null) {
                awb.tB();
            }
            RelativeLayout relativeLayout = this.dLZ;
            if (relativeLayout != null) {
                relativeLayout.removeAllViews();
            }
        } catch (Throwable unused) {
            RelativeLayout relativeLayout2 = this.dLZ;
            if (relativeLayout2 != null) {
                relativeLayout2.setAlpha(0.0f);
            }
        }
    }

    void Pfn() {
        int zGT = this.ex.zGT();
        this.oJ = zGT;
        if (zGT == -200) {
            this.oJ = si.ex().WcQ(String.valueOf(this.ex.uv()));
        }
        if (this.oJ != -1 || oJ()) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB.UK;
        if ((zYk instanceof com.bytedance.sdk.openadsdk.component.reward.ZYk.ex) || (zYk instanceof com.bytedance.sdk.openadsdk.component.reward.ZYk.tB)) {
            return;
        }
        ZYk(0);
    }

    public void PiB() {
        try {
            Activity activity = this.tB.HyG;
            Animation loadAnimation = AnimationUtils.loadAnimation(activity, com.bytedance.sdk.component.utils.cY.jFA(activity, "tt_fade_out"));
            if (loadAnimation != null) {
                loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.BTZ.3
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        BTZ.this.tB.ofl.BTZ();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                this.tB.ofl.oJ(loadAnimation);
                return;
            }
            this.tB.ofl.BTZ();
        } catch (Throwable unused) {
            this.tB.ofl.BTZ();
        }
    }

    public void WcQ() {
        QSm qSm = this.awB;
        if (qSm != null) {
            qSm.ba();
        }
        ImageView imageView = this.Pfn;
        if (imageView != null) {
            imageView.removeCallbacks(this.f13045si);
        }
    }

    public void ZYk() {
        if (this.f13044oq) {
            return;
        }
        this.f13044oq = true;
        this.QSm = this.tB.oTd;
        if (oJ()) {
            awB awb = new awB(this.tB);
            this.BTZ = awb;
            awb.oJ();
        }
        Ry();
        Activity activity = this.ZYk;
        cY cYVar = this.ex;
        String str = this.RZ;
        FrameLayout frameLayout = this.f13043ba;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
        QSm qSm = new QSm(activity, cYVar, str, frameLayout, oJVar.cdg, oJVar.f13027wd);
        this.awB = qSm;
        qSm.oJ();
    }

    public void awB() {
        QSm qSm = this.awB;
        if (qSm != null) {
            qSm.cFZ();
        }
    }

    public FrameLayout ba() {
        return this.f13043ba;
    }

    public void cFZ() {
        if (this.kkU.getVisibility() == 0) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.kkU.getLayoutParams();
            marginLayoutParams.setMargins(0, 0, 11, 16);
            marginLayoutParams.setMarginStart(0);
            marginLayoutParams.setMarginEnd(11);
            this.kkU.setLayoutParams(marginLayoutParams);
        }
    }

    public View dLZ() {
        return this.Id;
    }

    public void eZI() {
        QSm qSm = this.awB;
        if (qSm != null) {
            qSm.so();
        }
    }

    public void ex() {
        if (this.tB.ZYk.nYE() && Ln.tB(this.tB.ZYk)) {
            return;
        }
        cdg.oJ((View) this.f13043ba, 8);
        cdg.oJ((View) this.cY, 8);
        cdg.oJ(this.cFZ, 8);
        cdg.oJ(this.f13046so, 8);
        ZYk(8);
        cdg.oJ((View) this.Pfn, 8);
        cdg.oJ((View) this.jFA, 8);
        cdg.oJ((View) this.dLZ, 8);
        cdg.oJ((View) this.kkU, 8);
    }

    public boolean jFA() {
        ImageView imageView = this.Pfn;
        if (imageView == null || imageView.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public View kkU() {
        return this.Pfn;
    }

    protected boolean oJ() {
        return true;
    }

    public void si() {
        com.bytedance.sdk.openadsdk.core.ZYk.Pfn Pfn = this.tB.IUZ.Pfn();
        View view = this.Id;
        if (view == null) {
            view = this.tB.f13027wd;
        }
        Pfn.onClick(view);
    }

    protected void so() {
        Pfn pfn = this.Id;
        if (pfn == null) {
            return;
        }
        pfn.oJ();
    }

    public void tB() {
        this.f13043ba.removeAllViews();
    }

    public void ba(int i10) {
        cdg.oJ((View) this.Pfn, i10);
        if (i10 == 0 && !this.tB.kkU.get() && Ln.cFZ(this.tB.ZYk)) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.tB;
            com.bytedance.sdk.openadsdk.ex.tB.oJ(oJVar.ZYk, oJVar.Pfn, "show_close_button", (JSONObject) null, System.currentTimeMillis() - this.tB.oIC);
        }
    }

    public void tB(int i10) {
        cY cYVar = this.ex;
        if (cYVar != null && cYVar.nYE() && Ln.tB(this.ex)) {
            cdg.oJ((View) this.cY, i10);
        }
    }

    public void oJ(boolean z10) {
        int i10 = 0;
        cdg.oJ((View) this.jFA, Ln.tB(this.ex) ? 8 : 0);
        ImageView imageView = this.kkU;
        if (!this.ex.Br() || !this.ex.Ry()) {
            i10 = 8;
        }
        cdg.oJ((View) imageView, i10);
        ZYk(z10);
        if (this.Ry) {
            Pfn();
        }
    }

    public void Pfn(int i10) {
        int i11 = this.oJ;
        if (i11 == -1 || i10 != i11 || this.WcQ.get()) {
            return;
        }
        ZYk(0);
        this.WcQ.set(true);
        so();
    }

    public void oJ(int i10) {
        if (this.eZI == null) {
            this.eZI = new com.bytedance.sdk.openadsdk.core.Pfn.ba(this.tB.HyG);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(120, 120);
            layoutParams.gravity = 17;
            this.eZI.setLayoutParams(layoutParams);
            this.eZI.setIndeterminateDrawable(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(this.tB.HyG, "tt_video_loading_progress_bar"));
            this.tB.ofl.ba().addView(this.eZI);
        }
        this.eZI.setVisibility(i10);
    }

    void ZYk(boolean z10) {
        ImageView imageView;
        int oJ;
        if (this.QSm != 1 && (imageView = this.Pfn) != null && z10) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && (oJ = oJ("navigation_bar_height")) > 0) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                if (oJ > marginLayoutParams.rightMargin) {
                    marginLayoutParams.rightMargin = oJ;
                }
            }
        }
        com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk = this.tB.UK;
        if ((zYk instanceof com.bytedance.sdk.openadsdk.component.reward.ZYk.ex) || (zYk instanceof com.bytedance.sdk.openadsdk.component.reward.ZYk.tB)) {
            return;
        }
        ZYk(0);
    }

    public void ex(int i10) {
        cdg.oJ((View) this.jFA, i10);
    }

    public void oJ(int i10, int i11) {
        FrameLayout frameLayout;
        if (this.ex.EP() == 1 && (frameLayout = this.f13043ba) != null && (frameLayout.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
            int tB = cdg.tB((Context) this.ZYk);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f13043ba.getLayoutParams();
            layoutParams.width = tB;
            int i12 = (tB * 9) / 16;
            layoutParams.height = i12;
            this.f13043ba.setLayoutParams(layoutParams);
            this.PiB = (cdg.Pfn(this.ZYk) - i12) / 2;
        }
    }

    public void ZYk(int i10) {
        cY cYVar = this.ex;
        if (cYVar != null && cYVar.Br() && com.bytedance.sdk.openadsdk.core.model.awB.oJ(this.ex)) {
            cdg.oJ((View) this.Id, 8);
        } else {
            cdg.oJ((View) this.Id, i10);
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.ZYk.tB tBVar, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        View view;
        View view2;
        cY cYVar;
        if (this.f13043ba != null && (cYVar = this.ex) != null && cYVar.YQ() != null) {
            if (this.ex.YQ().f13224ba && !QSm.ZYk(this.ex)) {
                oJ((View.OnClickListener) tBVar);
                oJ(tBVar);
            } else {
                oJ(onClickListener);
            }
        }
        cY cYVar2 = this.ex;
        if (cYVar2 != null && cYVar2.EP() == 1) {
            if (this.ex.YQ() != null && (view2 = this.cFZ) != null) {
                cdg.oJ(view2, 0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.cFZ.getLayoutParams();
                layoutParams.height = this.PiB;
                this.cFZ.setLayoutParams(layoutParams);
                if (this.ex.YQ().ZYk) {
                    this.cFZ.setOnClickListener(tBVar);
                    this.cFZ.setOnTouchListener(onTouchListener);
                } else {
                    this.cFZ.setOnClickListener(onClickListener);
                }
            }
            if (this.ex.YQ() != null && (view = this.f13046so) != null) {
                cdg.oJ(view, 0);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f13046so.getLayoutParams();
                layoutParams2.height = this.PiB;
                this.f13046so.setLayoutParams(layoutParams2);
                if (this.ex.YQ().ex) {
                    this.f13046so.setOnClickListener(tBVar);
                    this.f13046so.setOnTouchListener(onTouchListener);
                } else {
                    this.f13046so.setOnClickListener(onClickListener);
                }
            }
        }
        PAGLogoView pAGLogoView = this.jFA;
        if (pAGLogoView != null) {
            pAGLogoView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.BTZ.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    try {
                        BTZ btz = BTZ.this;
                        TTWebsiteActivity.oJ(btz.ZYk, btz.ex, btz.RZ);
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.QSm.tB("TTAD.RFullVideoLayout", th2.getMessage());
                    }
                }
            });
        }
        ImageView imageView = this.kkU;
        if (imageView != null) {
            imageView.setClickable(true);
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ((int) cdg.oJ(si.oJ(), 14.0f, true), this.kkU, this.tB.ZYk);
        }
    }

    private int oJ(String str) {
        Resources resources = this.ZYk.getResources();
        if (resources != null) {
            return resources.getDimensionPixelSize(resources.getIdentifier(str, "dimen", "android"));
        }
        return 0;
    }

    public void oJ(View.OnClickListener onClickListener) {
        cdg.oJ(this.f13043ba, onClickListener, "TTBaseVideoActivity#mVideoNativeFrame");
    }

    private void oJ(com.bytedance.sdk.openadsdk.core.ZYk.tB tBVar) {
        cdg.oJ((View) this.f13043ba, (View.OnTouchListener) tBVar, "TTBaseVideoActivity#mVideoNativeFrame");
    }

    public void oJ(float f10) {
        cdg.oJ(this.Pfn, f10);
    }

    public void oJ(Animation animation) {
        RelativeLayout relativeLayout = this.dLZ;
        if (relativeLayout != null) {
            relativeLayout.startAnimation(animation);
        }
    }

    public void oJ(int i10, WcQ wcQ) {
        QSm qSm = this.awB;
        if (qSm != null) {
            qSm.oJ(i10, wcQ);
        }
    }
}
