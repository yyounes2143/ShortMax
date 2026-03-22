package com.bytedance.sdk.openadsdk.component;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.component.ba;
import com.bytedance.sdk.openadsdk.component.jFA.Pfn;
import com.bytedance.sdk.openadsdk.core.Pfn.so;
import com.bytedance.sdk.openadsdk.core.ZYk.ZYk;
import com.bytedance.sdk.openadsdk.core.model.Ry;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.eZI;
import com.bytedance.sdk.openadsdk.core.widget.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.si;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    protected final com.bytedance.sdk.openadsdk.component.so.oJ BTZ;
    private eZI HL;
    private View IUZ;
    private float Id;
    protected final com.bytedance.sdk.openadsdk.component.oJ Pfn;
    private RelativeLayout PiB;
    private so QSm;
    private so RZ;
    private si Ry;
    private ImageView WcQ;
    private so Xe;
    protected final cY ZYk;
    private PAGLogoView awB;

    /* renamed from: ba  reason: collision with root package name */
    protected final int f13054ba;
    protected int cFZ;
    @NonNull
    private final com.bytedance.sdk.openadsdk.component.jFA.so cY = new com.bytedance.sdk.openadsdk.component.jFA.so();
    protected so dLZ;
    private so eZI;
    protected final FrameLayout ex;
    protected View jFA;

    /* renamed from: jr  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.component.so.tB f13055jr;
    protected com.bytedance.sdk.openadsdk.core.Pfn.ex kkU;
    protected final Activity oJ;

    /* renamed from: oq  reason: collision with root package name */
    private float f13056oq;

    /* renamed from: si  reason: collision with root package name */
    private ImageView f13057si;

    /* renamed from: so  reason: collision with root package name */
    protected FrameLayout f13058so;
    protected final boolean tB;

    /* renamed from: tb  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.Pfn.ex f13059tb;

    /* loaded from: classes3.dex */
    public static class ZYk implements si.oJ {
        private final WeakReference<tB> oJ;

        public ZYk(tB tBVar) {
            this.oJ = new WeakReference<>(tBVar);
        }

        @Override // com.bytedance.sdk.openadsdk.utils.si.oJ
        public void oJ() {
        }

        @Override // com.bytedance.sdk.openadsdk.utils.si.oJ
        public void oJ(com.bytedance.sdk.openadsdk.Ry.oJ.ZYk zYk) {
            tB tBVar;
            if (!zYk.Pfn() || (tBVar = this.oJ.get()) == null) {
                return;
            }
            tBVar.oJ(zYk);
            if (zYk.ZYk() != null) {
                tBVar.oJ(zYk.oJ());
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class oJ implements ba.tB {
        private final WeakReference<tB> ZYk;
        WeakReference<Activity> oJ;

        oJ(Activity activity, tB tBVar) {
            this.oJ = new WeakReference<>(activity);
            this.ZYk = new WeakReference<>(tBVar);
        }

        @Override // com.bytedance.sdk.openadsdk.component.ba.tB
        public void oJ(Object obj) {
            tB tBVar;
            if (this.oJ.get() != null && !this.oJ.get().isFinishing() && (tBVar = this.ZYk.get()) != null) {
                tBVar.oJ(obj);
            }
        }
    }

    public tB(Activity activity, cY cYVar, FrameLayout frameLayout, com.bytedance.sdk.openadsdk.component.oJ oJVar, int i10, boolean z10, com.bytedance.sdk.openadsdk.component.so.oJ oJVar2) {
        this.oJ = activity;
        this.ZYk = cYVar;
        this.ex = frameLayout;
        this.cFZ = i10;
        this.tB = z10;
        this.Pfn = oJVar;
        this.f13054ba = cYVar.uv();
        this.BTZ = oJVar2;
    }

    private void jFA() {
        if (this.RZ != null) {
            if (this.ZYk.Wd() != null && !TextUtils.isEmpty(this.ZYk.Wd().ZYk())) {
                this.RZ.setText(this.ZYk.Wd().ZYk());
            } else if (!TextUtils.isEmpty(this.ZYk.Qzd())) {
                this.RZ.setText(this.ZYk.Qzd());
            } else {
                this.RZ.setVisibility(8);
            }
        }
        if (this.QSm != null) {
            if (!TextUtils.isEmpty(this.ZYk.UUI())) {
                this.QSm.setText(this.ZYk.UUI());
            } else {
                this.QSm.setVisibility(8);
            }
        }
        if (this.Ry != null && this.ZYk.Zjw() != null && !TextUtils.isEmpty(this.ZYk.Zjw().oJ())) {
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.ZYk.Zjw().oJ(), this.ZYk.Zjw().ZYk(), this.ZYk.Zjw().tB(), this.Ry, this.ZYk);
        }
        this.Pfn.tB();
    }

    private void kkU() {
        String cFZ;
        Ry ry = this.ZYk.yB().get(0);
        if (TextUtils.isEmpty(ry.cFZ())) {
            cFZ = com.bytedance.sdk.component.utils.Pfn.oJ(ry.oJ());
        } else {
            cFZ = ry.cFZ();
        }
        com.bytedance.sdk.openadsdk.utils.si.oJ(new com.bytedance.sdk.openadsdk.Ry.oJ(ry.oJ(), ry.cFZ()), ry.ZYk(), ry.tB(), new ZYk(this), com.bytedance.sdk.openadsdk.component.cFZ.oJ.ZYk(cFZ).getParent(), 25);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void so() {
        /*
            r8 = this;
            com.bytedance.sdk.openadsdk.component.jFA.so r0 = r8.cY
            r0.oJ()
            com.bytedance.sdk.openadsdk.core.Pfn.so r0 = r8.eZI
            com.bytedance.sdk.openadsdk.core.model.cY r1 = r8.ZYk
            java.lang.String r1 = r1.ypD()
            r0.setText(r1)
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r8.ZYk
            boolean r0 = r0.Xe()
            if (r0 == 0) goto L1c
            r8.jFA()
            return
        L1c:
            boolean r0 = r8.tB
            r1 = 8
            r2 = 0
            if (r0 == 0) goto L4b
            r8.ZYk(r2)
            r8.oJ(r1)
            android.widget.FrameLayout r0 = r8.f13058so
            boolean r0 = r8.oJ(r0)
            if (r0 == 0) goto L37
            com.bytedance.sdk.openadsdk.component.oJ r0 = r8.Pfn
            r0.tB()
            goto L3c
        L37:
            com.bytedance.sdk.openadsdk.component.oJ r0 = r8.Pfn
            r0.ex()
        L3c:
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r8.ZYk
            com.bytedance.sdk.openadsdk.component.tB$oJ r3 = new com.bytedance.sdk.openadsdk.component.tB$oJ
            android.app.Activity r4 = r8.oJ
            r3.<init>(r4, r8)
            r4 = 25
            com.bytedance.sdk.openadsdk.component.ba.oJ(r0, r3, r4)
            goto L59
        L4b:
            r8.ZYk(r1)
            r8.oJ(r2)
            r8.kkU()
            com.bytedance.sdk.openadsdk.component.oJ r0 = r8.Pfn
            r0.tB()
        L59:
            com.bytedance.sdk.openadsdk.core.Pfn.so r0 = r8.Xe
            r3 = 1
            if (r0 == 0) goto L8f
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r8.ZYk
            java.lang.String r0 = r0.Qzd()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L77
            com.bytedance.sdk.openadsdk.core.Pfn.so r0 = r8.Xe
            com.bytedance.sdk.openadsdk.core.model.cY r4 = r8.ZYk
            java.lang.String r4 = r4.Qzd()
            r0.setText(r4)
        L75:
            r0 = r3
            goto L90
        L77:
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r8.ZYk
            com.bytedance.sdk.openadsdk.core.model.ba r0 = r0.Wd()
            if (r0 == 0) goto L8f
            com.bytedance.sdk.openadsdk.core.Pfn.so r0 = r8.Xe
            com.bytedance.sdk.openadsdk.core.model.cY r4 = r8.ZYk
            com.bytedance.sdk.openadsdk.core.model.ba r4 = r4.Wd()
            java.lang.String r4 = r4.ZYk()
            r0.setText(r4)
            goto L75
        L8f:
            r0 = r2
        L90:
            com.bytedance.sdk.openadsdk.core.Pfn.ex r4 = r8.f13059tb
            if (r4 == 0) goto La5
            com.bytedance.sdk.openadsdk.Ry.ZYk r4 = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk()
            com.bytedance.sdk.openadsdk.core.model.cY r5 = r8.ZYk
            com.bytedance.sdk.openadsdk.core.model.Ry r5 = r5.Zjw()
            com.bytedance.sdk.openadsdk.core.Pfn.ex r6 = r8.f13059tb
            com.bytedance.sdk.openadsdk.core.model.cY r7 = r8.ZYk
            r4.oJ(r5, r6, r7)
        La5:
            com.bytedance.sdk.openadsdk.core.widget.eZI r4 = r8.HL
            if (r4 == 0) goto Lcc
            r5 = 0
            com.bytedance.sdk.openadsdk.core.model.cY r6 = r8.ZYk
            com.bytedance.sdk.openadsdk.utils.cdg.oJ(r5, r4, r6)
            com.bytedance.sdk.openadsdk.core.model.cY r4 = r8.ZYk
            com.bytedance.sdk.openadsdk.core.model.ba r4 = r4.Wd()
            if (r4 == 0) goto Lc7
            com.bytedance.sdk.openadsdk.core.model.cY r4 = r8.ZYk
            com.bytedance.sdk.openadsdk.core.model.ba r4 = r4.Wd()
            double r4 = r4.ex()
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 >= 0) goto Lcd
        Lc7:
            com.bytedance.sdk.openadsdk.core.widget.eZI r3 = r8.HL
            r3.setVisibility(r1)
        Lcc:
            r3 = r0
        Lcd:
            android.view.View r0 = r8.IUZ
            if (r0 == 0) goto Ld7
            if (r3 == 0) goto Ld4
            r1 = r2
        Ld4:
            r0.setVisibility(r1)
        Ld7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.tB.so():void");
    }

    public void ZYk() {
        if (!this.ZYk.jA()) {
            so();
        } else {
            this.Pfn.tB();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ba() {
        this.jFA.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.tB.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.bytedance.sdk.openadsdk.component.oJ oJVar = tB.this.Pfn;
                if (oJVar != null) {
                    oJVar.ZYk(view);
                }
            }
        });
        this.kkU.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.tB.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.bytedance.sdk.openadsdk.component.oJ oJVar = tB.this.Pfn;
                if (oJVar != null) {
                    oJVar.oJ(view);
                }
            }
        });
    }

    public com.bytedance.sdk.openadsdk.component.so.tB cFZ() {
        return this.f13055jr;
    }

    public int ex() {
        return -1;
    }

    public JSONObject oJ(JSONObject jSONObject) {
        return null;
    }

    public void tB() {
        com.bytedance.sdk.openadsdk.component.so.tB tBVar = this.f13055jr;
        if (tBVar != null) {
            tBVar.BTZ();
        }
    }

    public void oJ(ViewGroup viewGroup) {
        com.bytedance.sdk.openadsdk.component.jFA.tB exVar = new com.bytedance.sdk.openadsdk.component.jFA.ex(this.oJ, this.ZYk);
        int lY = this.ZYk.lY();
        if (lY == 5) {
            exVar = new com.bytedance.sdk.openadsdk.component.jFA.ba(this.oJ, this.ZYk);
        } else if (lY == 4) {
            exVar = new com.bytedance.sdk.openadsdk.component.jFA.Pfn(this.oJ, this.ZYk);
        }
        this.PiB = exVar;
        viewGroup.addView(exVar);
        this.f13057si = exVar.getBackImage();
        this.f13058so = exVar.getVideoContainer();
        this.WcQ = exVar.getImageView();
        this.eZI = exVar.getClickButton();
        this.awB = exVar.getAdLogo();
        this.Xe = exVar.getAdTitleTextView();
        this.f13059tb = exVar.getAdIconView();
        this.HL = exVar.getScoreBar();
        this.IUZ = exVar.getOverlayLayout();
        if (this.ZYk.Xe()) {
            this.Ry = exVar.getIconOnlyView();
            this.RZ = exVar.getTitle();
            this.QSm = exVar.getContent();
        }
        if (exVar.getDspAdChoice() != null) {
            exVar.getDspAdChoice().oJ(14, this.ZYk);
        }
        if (!this.ZYk.jA()) {
            this.cY.oJ(exVar, this.ZYk, this.Id, this.f13056oq, this.tB);
        }
        this.jFA = exVar.getTopDisLike();
        this.kkU = exVar.getTopSkip();
        this.dLZ = exVar.getTopCountDown();
        if (exVar instanceof com.bytedance.sdk.openadsdk.component.jFA.Pfn) {
            ((com.bytedance.sdk.openadsdk.component.jFA.Pfn) exVar).setRenderListener(new Pfn.oJ() { // from class: com.bytedance.sdk.openadsdk.component.tB.1
                @Override // com.bytedance.sdk.openadsdk.component.jFA.Pfn.oJ
                public void oJ(View view, int i10) {
                    tB.this.Pfn.Pfn();
                }
            });
        }
    }

    private void ZYk(int i10) {
        cdg.oJ((View) this.f13058so, i10);
    }

    public void Pfn() {
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void oJ() {
        this.awB.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.tB.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    tB tBVar = tB.this;
                    TTWebsiteActivity.oJ(tBVar.oJ, tBVar.ZYk, "open_ad");
                } catch (Throwable th2) {
                    QSm.tB("AppOpenAdNativeManager", th2.getMessage());
                }
            }
        });
        ba();
        if (this.ZYk.jA()) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.oJ.oJ oJ2 = com.bytedance.sdk.openadsdk.component.oJ.ZYk.oJ(this.ZYk, this.oJ, this.BTZ);
        oJ2.oJ(new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.component.tB.3
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk.oJ
            public void oJ(View view, int i10) {
                tB.this.Pfn.Pfn();
            }
        });
        oJ2.oJ(this.f13055jr);
        if (this.ZYk.Yg() == 1) {
            this.PiB.setOnClickListener(oJ2);
            this.PiB.setOnTouchListener(oJ2);
        }
        this.eZI.setOnClickListener(oJ2);
        this.eZI.setOnTouchListener(oJ2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean oJ(FrameLayout frameLayout) {
        com.bytedance.sdk.openadsdk.component.so.tB tBVar = new com.bytedance.sdk.openadsdk.component.so.tB(this.oJ);
        this.f13055jr = tBVar;
        return tBVar.oJ(frameLayout, this.Pfn, this.ZYk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(Object obj) {
        try {
            if (obj instanceof Bitmap) {
                this.f13057si.setImageDrawable(new BitmapDrawable(com.bytedance.sdk.openadsdk.core.si.oJ().getResources(), (Bitmap) obj));
            }
        } catch (Throwable unused) {
            QSm.tB("AppOpenAdNativeManager", "open_ad", "bindBackGroundImage error");
        }
    }

    void oJ(com.bytedance.sdk.openadsdk.Ry.oJ.ZYk zYk) {
        if (zYk.ZYk() != null) {
            this.WcQ.setImageBitmap(zYk.ZYk());
            return;
        }
        Drawable ex = zYk.ex();
        if (ex != null) {
            this.WcQ.setScaleType(ImageView.ScaleType.FIT_CENTER);
            if (Build.VERSION.SDK_INT >= 28 && b.a(ex)) {
                c.a(ex).start();
            }
            this.WcQ.setImageDrawable(ex);
        } else if (this.ZYk.yB() == null || this.ZYk.yB().get(0) == null) {
        } else {
            Drawable oJ2 = com.bytedance.sdk.openadsdk.utils.si.oJ(zYk.tB(), this.ZYk.yB().get(0).ZYk());
            this.WcQ.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.WcQ.setImageDrawable(oJ2);
        }
    }

    void oJ(int i10) {
        cdg.oJ((View) this.WcQ, i10);
    }

    public void oJ(float f10, float f11) {
        this.Id = f10;
        this.f13056oq = f11;
    }

    public void oJ(int i10, boolean z10) {
        so soVar;
        if (this.kkU == null || (soVar = this.dLZ) == null) {
            return;
        }
        if (z10) {
            if (soVar.getVisibility() != 8) {
                this.dLZ.setVisibility(8);
            }
            if (this.kkU.getVisibility() != 0) {
                this.kkU.setVisibility(0);
                return;
            }
            return;
        }
        this.dLZ.setText(i10 + "s");
        if (this.dLZ.getVisibility() != 0) {
            this.dLZ.setVisibility(0);
        }
    }
}
