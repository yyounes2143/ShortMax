package com.bytedance.sdk.openadsdk.core.so;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.Ln;
import com.bytedance.sdk.openadsdk.core.so.Pfn;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class tB {
    private QSm Pfn;
    private final Context ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f13278ba;
    private int cFZ;
    private com.bytedance.sdk.component.adexpress.ZYk.awB ex;
    private int jFA;
    com.bytedance.sdk.openadsdk.core.model.cY oJ;

    /* renamed from: so  reason: collision with root package name */
    private ScheduledFuture<?> f13279so;
    private oJ tB;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ZYk implements Runnable {
        InterfaceC0227tB oJ;

        public ZYk(InterfaceC0227tB interfaceC0227tB) {
            this.oJ = interfaceC0227tB;
        }

        @Override // java.lang.Runnable
        public void run() {
            InterfaceC0227tB interfaceC0227tB = this.oJ;
            if (interfaceC0227tB != null) {
                interfaceC0227tB.oJ(107, 107);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class oJ implements com.bytedance.sdk.component.adexpress.ZYk.ex<View>, Pfn.ZYk {
        private Pfn BTZ;
        private final Context Pfn;
        private int PiB;
        private com.bytedance.sdk.component.adexpress.ZYk.cFZ WcQ;
        private com.bytedance.sdk.openadsdk.tB.tB ZYk;
        private PAGExpressAdWrapperListener awB;

        /* renamed from: ba  reason: collision with root package name */
        private final int f13280ba;
        private final int cFZ;
        private String dLZ;
        private String ex;
        private com.bytedance.sdk.openadsdk.core.model.cY jFA;
        private final int kkU;
        AtomicBoolean oJ = new AtomicBoolean(false);

        /* renamed from: so  reason: collision with root package name */
        private FrameLayout f13281so;
        private TTDislikeDialogAbstract tB;

        public oJ(Context context, com.bytedance.sdk.openadsdk.core.model.cY cYVar, int i10, int i11, String str, int i12) {
            this.dLZ = str;
            if (cYVar != null && cYVar.RQ()) {
                this.dLZ = "fullscreen_interstitial_ad";
            }
            this.Pfn = context;
            this.f13280ba = i10;
            this.cFZ = i11;
            this.jFA = cYVar;
            this.kkU = cdg.ZYk(context, 3.0f);
            this.PiB = i12;
            ba();
        }

        private void ba() {
            FrameLayout frameLayout = new FrameLayout(this.Pfn);
            this.f13281so = frameLayout;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(this.f13280ba, this.cFZ);
            }
            layoutParams.width = this.f13280ba;
            layoutParams.height = this.cFZ;
            layoutParams.gravity = 17;
            this.f13281so.setLayoutParams(layoutParams);
            Pfn so2 = so();
            this.f13281so.addView(so2);
            View cFZ = cFZ();
            this.f13281so.addView(cFZ);
            com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.jFA;
            if (cYVar != null && cYVar.RQ()) {
                so2.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                so2.oJ(((Activity) this.Pfn).findViewById(com.bytedance.sdk.openadsdk.utils.eZI.Efd), FriendlyObstructionPurpose.OTHER);
            }
            FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
            so2.oJ(cFZ, friendlyObstructionPurpose);
            Context context = this.Pfn;
            if (context != null && (context instanceof Activity)) {
                View findViewById = ((Activity) context).findViewById(com.bytedance.sdk.openadsdk.utils.eZI.jA);
                if (findViewById != null) {
                    so2.oJ(findViewById, friendlyObstructionPurpose);
                }
                View findViewById2 = ((Activity) this.Pfn).findViewById(com.bytedance.sdk.openadsdk.utils.eZI.eGo);
                if (findViewById2 != null) {
                    so2.oJ(findViewById2, friendlyObstructionPurpose);
                }
            }
        }

        private View cFZ() {
            PAGLogoView createPAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(this.Pfn, this.jFA);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.jFA;
            if (cYVar != null && cYVar.RQ()) {
                layoutParams.leftMargin = cdg.ZYk(this.Pfn, 20.0f);
                layoutParams.bottomMargin = cdg.ZYk(this.Pfn, 20.0f);
                layoutParams.gravity = 8388691;
            } else {
                int i10 = this.kkU;
                layoutParams.topMargin = i10;
                layoutParams.leftMargin = i10;
            }
            createPAGLogoViewByMaterial.setLayoutParams(layoutParams);
            createPAGLogoViewByMaterial.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.so.tB.oJ.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTWebsiteActivity.oJ(oJ.this.Pfn, oJ.this.jFA, oJ.this.dLZ);
                }
            });
            return createPAGLogoViewByMaterial;
        }

        @SuppressLint({"ClickableViewAccessibility"})
        private Pfn so() {
            Pfn ZYk = ex.oJ().ZYk();
            this.BTZ = ZYk;
            if (ZYk == null) {
                this.BTZ = new Pfn(this.Pfn);
            }
            ex.oJ().tB(this.BTZ);
            this.BTZ.oJ(this.jFA, this, this.dLZ);
            this.BTZ.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            return this.BTZ;
        }

        @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
        public View Pfn() {
            return this.f13281so;
        }

        @Override // com.bytedance.sdk.openadsdk.core.so.Pfn.ZYk
        @SuppressLint({"ClickableViewAccessibility"})
        public void k_() {
            if (this.WcQ != null) {
                com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ = new com.bytedance.sdk.component.adexpress.ZYk.WcQ();
                wcQ.oJ(true);
                wcQ.oJ(cdg.tB(this.Pfn, this.f13280ba));
                wcQ.ZYk(cdg.tB(this.Pfn, this.cFZ));
                this.WcQ.oJ(this.f13281so, wcQ);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.so.Pfn.ZYk
        public View oJ() {
            return null;
        }

        @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
        public int tB() {
            return 5;
        }

        @Override // com.bytedance.sdk.openadsdk.core.so.Pfn.ZYk
        public View ZYk() {
            FrameLayout frameLayout = this.f13281so;
            if (frameLayout == null) {
                return null;
            }
            return (View) frameLayout.getParent();
        }

        public void ex() {
            this.f13281so = null;
            this.ZYk = null;
            this.tB = null;
            this.WcQ = null;
            this.jFA = null;
            Pfn pfn = this.BTZ;
            if (pfn != null) {
                pfn.eZI();
                ex.oJ().oJ(this.BTZ);
            }
            this.oJ.set(true);
        }

        @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
        public void oJ(com.bytedance.sdk.component.adexpress.ZYk.cFZ cfz) {
            com.bytedance.sdk.openadsdk.core.model.cY cYVar;
            if (this.oJ.get()) {
                return;
            }
            if (this.Pfn != null && (cYVar = this.jFA) != null) {
                this.WcQ = cfz;
                if (TextUtils.isEmpty(cYVar.OP())) {
                    cfz.oJ(106, "dsp data is null");
                    return;
                } else {
                    this.BTZ.QSm();
                    return;
                }
            }
            cfz.oJ(106, "material null");
        }

        public void oJ(Ln ln2) {
            if (ln2 instanceof com.bytedance.sdk.openadsdk.tB.tB) {
                this.ZYk = (com.bytedance.sdk.openadsdk.tB.tB) ln2;
            }
        }

        public void oJ(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
            com.bytedance.sdk.openadsdk.core.model.cY cYVar;
            if (tTDislikeDialogAbstract != null && (cYVar = this.jFA) != null) {
                tTDislikeDialogAbstract.setMaterialMeta(cYVar.pe(), this.jFA.rJ());
            }
            this.tB = tTDislikeDialogAbstract;
        }

        public void oJ(String str) {
            this.ex = str;
        }

        @Override // com.bytedance.sdk.openadsdk.core.so.Pfn.ZYk
        public void oJ(View view, int i10) {
            PAGExpressAdWrapperListener pAGExpressAdWrapperListener = this.awB;
            if (pAGExpressAdWrapperListener != null) {
                pAGExpressAdWrapperListener.onAdClicked();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.so.Pfn.ZYk
        public void oJ(int i10, int i11) {
            com.bytedance.sdk.component.adexpress.ZYk.cFZ cfz = this.WcQ;
            if (cfz != null) {
                cfz.oJ(i10, "render fail");
            }
        }

        public void oJ(PAGExpressAdWrapperListener pAGExpressAdWrapperListener) {
            this.awB = pAGExpressAdWrapperListener;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.core.so.tB$tB  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0227tB {
        void ZYk(String str);

        void oJ();

        void oJ(int i10, int i11);

        void oJ(String str);
    }

    public tB(Context context, QSm qSm, com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str) {
        this.oJ = cYVar;
        this.ZYk = context;
        this.Pfn = qSm;
        oJ(qSm);
        this.tB = new oJ(context, cYVar, this.f13278ba, this.cFZ, str, this.jFA);
    }

    private void oJ(QSm qSm) {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.oJ;
        if (cYVar != null && cYVar.RQ()) {
            this.f13278ba = -1;
            this.cFZ = -1;
            return;
        }
        Ry oJ2 = com.bytedance.sdk.openadsdk.core.tB.ZYk.oJ(qSm.getExpectExpressWidth(), qSm.getExpectExpressHeight());
        this.jFA = oJ2.oJ;
        if (qSm.getExpectExpressWidth() > 0 && qSm.getExpectExpressHeight() > 0) {
            this.f13278ba = cdg.ZYk(this.ZYk, qSm.getExpectExpressWidth());
            this.cFZ = cdg.ZYk(this.ZYk, qSm.getExpectExpressHeight());
        } else {
            int tB = cdg.tB(this.ZYk);
            this.f13278ba = tB;
            this.cFZ = Float.valueOf(tB / oJ2.ZYk).intValue();
        }
        int i10 = this.f13278ba;
        if (i10 <= 0 || i10 <= cdg.tB(this.ZYk)) {
            return;
        }
        float tB2 = cdg.tB(this.ZYk) / this.f13278ba;
        this.f13278ba = cdg.tB(this.ZYk);
        this.cFZ = Float.valueOf(this.cFZ * tB2).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB() {
        try {
            ScheduledFuture<?> scheduledFuture = this.f13279so;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.f13279so.cancel(false);
            this.f13279so = null;
        } catch (Throwable unused) {
        }
    }

    public void ZYk() {
        oJ oJVar = this.tB;
        if (oJVar != null) {
            oJVar.ex();
            this.tB = null;
        }
        tB();
        this.ex = null;
        this.Pfn = null;
    }

    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.awB awb) {
        this.ex = awb;
    }

    public void oJ() {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.oJ;
        if (cYVar != null && cYVar.RQ()) {
            this.f13279so = ofl.oJ().schedule(new ZYk(this.tB.BTZ), com.bytedance.sdk.openadsdk.core.si.ex().jr(), TimeUnit.MILLISECONDS);
        }
        oJ oJVar = this.tB;
        if (oJVar != null) {
            oJVar.oJ(new com.bytedance.sdk.component.adexpress.ZYk.cFZ() { // from class: com.bytedance.sdk.openadsdk.core.so.tB.1
                @Override // com.bytedance.sdk.component.adexpress.ZYk.cFZ
                public void oJ(View view, com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ) {
                    if (tB.this.Pfn == null || view == null) {
                        if (tB.this.ex != null) {
                            tB.this.ex.a_(106);
                        }
                    } else if (tB.this.ex != null) {
                        tB.this.ex.oJ(tB.this.tB, wcQ);
                    }
                    tB.this.tB();
                }

                @Override // com.bytedance.sdk.component.adexpress.ZYk.cFZ
                public void oJ(int i10, String str) {
                    if (tB.this.ex != null) {
                        tB.this.ex.a_(106);
                    }
                    tB.this.tB();
                }
            });
            View Pfn = this.tB.Pfn();
            this.Pfn.removeView(Pfn);
            if (Pfn.getParent() != null) {
                ((ViewGroup) Pfn.getParent()).removeView(Pfn);
            }
            this.Pfn.addView(Pfn, new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        com.bytedance.sdk.component.adexpress.ZYk.awB awb = this.ex;
        if (awb != null) {
            awb.a_(106);
        }
    }

    public void oJ(Ln ln2) {
        oJ oJVar = this.tB;
        if (oJVar != null) {
            oJVar.oJ(ln2);
        }
    }

    public void oJ(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        oJ oJVar = this.tB;
        if (oJVar != null) {
            oJVar.oJ(tTDislikeDialogAbstract);
        }
    }

    public void oJ(String str) {
        oJ oJVar = this.tB;
        if (oJVar != null) {
            oJVar.oJ(str);
        }
    }

    public void oJ(PAGExpressAdWrapperListener pAGExpressAdWrapperListener) {
        oJ oJVar = this.tB;
        if (oJVar != null) {
            oJVar.oJ(pAGExpressAdWrapperListener);
        }
    }
}
