package com.bytedance.sdk.openadsdk.core.tB;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.ZYk.ZYk;
import com.bytedance.sdk.openadsdk.core.cFZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.so.QSm;
import com.bytedance.sdk.openadsdk.core.so.RZ;
import com.bytedance.sdk.openadsdk.core.tB.cFZ;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.Rl;
import com.bytedance.sdk.openadsdk.utils.Xe;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private cFZ BTZ;
    private PAGBannerAdWrapperListener Pfn;
    private long RZ;
    private boolean WcQ;
    protected AdSlot ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final Context f13293ba;
    private QSm dLZ;
    private cY ex;
    private boolean jFA;
    private com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba kkU;
    protected ex oJ;

    /* renamed from: so  reason: collision with root package name */
    private final boolean f13295so;
    private String tB = "banner_ad";
    private long cFZ = 0;
    private final AtomicBoolean PiB = new AtomicBoolean(false);
    private final int awB = 1;
    private final int eZI = 0;

    /* renamed from: si  reason: collision with root package name */
    private int f13294si = -1;
    private final View.OnAttachStateChangeListener Ry = new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.tB.oJ.1
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            if (oJ.this.f13294si != 0 && !oJ.this.jFA) {
                oJ oJVar = oJ.this;
                oJVar.oJ(oJVar.oJ.getCurView(), oJ.this.ex);
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (oJ.this.WcQ) {
                oJ.this.f13294si = 0;
            } else {
                oJ.this.ba();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bytedance.sdk.openadsdk.core.tB.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0228oJ extends com.bytedance.sdk.component.so.so {
        cY ZYk;
        boolean oJ;
        WeakReference<oJ> tB;

        C0228oJ(boolean z10, cY cYVar, oJ oJVar) {
            super("ReportWindowFocusChangedAdShow");
            this.oJ = z10;
            this.ZYk = cYVar;
            this.tB = new WeakReference<>(oJVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            WeakReference<oJ> weakReference = this.tB;
            if (weakReference != null && weakReference.get() != null) {
                this.tB.get().ZYk(this.oJ, this.ZYk);
            }
        }
    }

    public oJ(Context context, cY cYVar, AdSlot adSlot, cFZ cfz, boolean z10) {
        this.WcQ = false;
        this.f13293ba = context;
        this.ex = cYVar;
        this.ZYk = adSlot;
        this.BTZ = cfz;
        this.WcQ = z10;
        oJ(context, cYVar, adSlot);
        this.f13295so = false;
        this.jFA = false;
    }

    private void BTZ() {
        this.ex.oJ(SystemClock.elapsedRealtime());
        this.oJ.Pfn();
    }

    private cFZ.oJ dLZ() {
        return new cFZ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.tB.oJ.7
            @Override // com.bytedance.sdk.openadsdk.core.tB.cFZ.oJ
            public void oJ() {
                int width = oJ.this.dLZ.getWidth();
                int height = oJ.this.dLZ.getHeight();
                View oJ = oJ(((double) height) >= Math.floor((((double) width) * 450.0d) / 600.0d));
                oJ.this.dLZ.Id();
                oJ.this.dLZ.removeAllViews();
                oJ.this.dLZ.addView(oJ, new ViewGroup.LayoutParams(width, height));
                oJ.this.dLZ.setClickCreativeListener(null);
                oJ.this.dLZ.setClickListener(null);
                if (oJ.this.Pfn != null) {
                    oJ.this.Pfn.onAdDismissed();
                }
                oJ.this.jFA = true;
            }

            private View oJ(boolean z10) {
                com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(oJ.this.f13293ba);
                ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                tBVar.setBackgroundColor(-1);
                tBVar.setLayoutParams(layoutParams);
                View view = new View(oJ.this.f13293ba);
                ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                view.setAlpha(0.3f);
                view.setBackgroundColor(Color.parseColor("#F3F7F8"));
                tBVar.addView(view, layoutParams2);
                com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(oJ.this.f13293ba);
                ViewGroup.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
                if (z10) {
                    tBVar2.setBackground(com.bytedance.sdk.component.utils.cY.tB(oJ.this.f13293ba, "tt_ad_closed_background_300_250"));
                } else {
                    tBVar2.setBackground(com.bytedance.sdk.component.utils.cY.tB(oJ.this.f13293ba, "tt_ad_closed_background_320_50"));
                }
                tBVar.addView(tBVar2, layoutParams3);
                PAGLogoView createPAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(oJ.this.f13293ba, oJ.this.ex);
                createPAGLogoViewByMaterial.setId(520093739);
                FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
                if (z10) {
                    int ZYk = cdg.ZYk(oJ.this.f13293ba, 16.0f);
                    layoutParams4.width = cdg.ZYk(oJ.this.f13293ba, 77.0f);
                    layoutParams4.height = cdg.ZYk(oJ.this.f13293ba, 14.0f);
                    layoutParams4.leftMargin = ZYk;
                    layoutParams4.topMargin = ZYk;
                } else {
                    int ZYk2 = cdg.ZYk(oJ.this.f13293ba, 8.0f);
                    layoutParams4.width = cdg.ZYk(oJ.this.f13293ba, 45.0f);
                    layoutParams4.height = cdg.ZYk(oJ.this.f13293ba, 8.18f);
                    layoutParams4.leftMargin = ZYk2;
                    layoutParams4.topMargin = ZYk2;
                }
                tBVar2.addView(createPAGLogoViewByMaterial, layoutParams4);
                com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(oJ.this.f13293ba);
                FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
                layoutParams5.gravity = 17;
                soVar.setAlpha(0.5f);
                soVar.setLines(1);
                soVar.setText(com.bytedance.sdk.component.utils.cY.oJ(oJ.this.f13293ba, "tt_ad_is_closed"));
                if (z10) {
                    soVar.setTextSize(18.0f);
                } else {
                    soVar.setTextSize(12.0f);
                }
                tBVar2.addView(soVar, layoutParams5);
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.tB.oJ.7.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        TTWebsiteActivity.oJ(oJ.this.f13293ba, oJ.this.ex, oJ.this.tB);
                    }
                };
                createPAGLogoViewByMaterial.setOnClickListener(onClickListener);
                soVar.setOnClickListener(onClickListener);
                return tBVar;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void kkU() {
        BTZ();
    }

    public void Pfn() {
        this.cFZ = System.currentTimeMillis();
    }

    public void ba() {
        this.f13294si = 1;
        this.oJ.ex();
    }

    public void cFZ() {
        if (this.oJ != null) {
            try {
                ba();
                this.oJ.removeOnAttachStateChangeListener(this.Ry);
            } catch (Throwable unused) {
            }
        }
    }

    public void ex() {
        ZYk(this.ex);
        this.cFZ = 0L;
    }

    public void jFA() {
        ex exVar = this.oJ;
        if (exVar instanceof tB) {
            ((tB) exVar).oJ();
        }
    }

    public void so() {
        ex exVar = this.oJ;
        if (exVar instanceof tB) {
            ((tB) exVar).ZYk();
        }
    }

    public com.bytedance.sdk.openadsdk.multipro.ZYk.oJ tB() {
        ex exVar = this.oJ;
        if (exVar instanceof tB) {
            return ((tB) exVar).getVideoModel();
        }
        return null;
    }

    public boolean ZYk() {
        return this.oJ instanceof tB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(boolean z10, cY cYVar) {
        try {
            if (z10) {
                this.cFZ = System.currentTimeMillis();
            } else if (this.cFZ <= 0 || this.dLZ == null) {
            } else {
                String valueOf = String.valueOf(System.currentTimeMillis() - this.cFZ);
                this.cFZ = 0L;
                com.bytedance.sdk.openadsdk.ex.tB.oJ(valueOf, cYVar, this.tB, this.dLZ.getAdShowTime());
            }
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.tB("PAGBannerAdImpl", e10.getMessage());
        }
    }

    public void oJ(int i10) {
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.setCurrentIndex(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(cY cYVar) {
        if (this.cFZ <= 0 || cYVar == null) {
            return;
        }
        try {
            if (this.dLZ != null) {
                String valueOf = String.valueOf(System.currentTimeMillis() - this.cFZ);
                this.cFZ = 0L;
                com.bytedance.sdk.openadsdk.ex.tB.oJ(valueOf, cYVar, this.tB, this.dLZ.getAdShowTime());
            }
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.tB("PAGBannerAdImpl", e10.getMessage());
        }
    }

    public void oJ(PAGBannerAdInteractionCallback pAGBannerAdInteractionCallback) {
        so soVar = new so(pAGBannerAdInteractionCallback);
        this.Pfn = soVar;
        this.oJ.setExpressInteractionListener(soVar);
    }

    public void oJ(PAGBannerAdInteractionListener pAGBannerAdInteractionListener) {
        so soVar = new so(pAGBannerAdInteractionListener);
        this.Pfn = soVar;
        this.oJ.setExpressInteractionListener(soVar);
    }

    public View oJ() {
        com.bytedance.sdk.openadsdk.utils.ZYk.oJ(this.ex);
        IPMiBroadcastReceiver.oJ(this.f13293ba, this.ex);
        return this.oJ;
    }

    private void oJ(Context context, cY cYVar, AdSlot adSlot) {
        if (cYVar.ib() != null) {
            tB tBVar = new tB(context, cYVar, adSlot, this.WcQ);
            this.oJ = tBVar;
            tBVar.addOnAttachStateChangeListener(this.Ry);
            return;
        }
        ex exVar = new ex(context, cYVar, adSlot, this.WcQ);
        this.oJ = exVar;
        exVar.addOnAttachStateChangeListener(this.Ry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(boolean z10, cY cYVar) {
        if (z10 && this.ex.Tjr() && !this.ex.Id()) {
            this.ex.ba(true);
            cY cYVar2 = this.ex;
            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar2, this.tB, cYVar2.PLU());
        }
        ofl.ZYk(new C0228oJ(z10, cYVar, this), 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(View view, QSm qSm, cY cYVar, String str, cFZ.oJ oJVar) {
        com.bytedance.sdk.openadsdk.core.jFA.ZYk().oJ(str, oJVar);
        this.cFZ = System.currentTimeMillis();
        try {
            JSONObject jSONObject = new JSONObject();
            if (qSm != null) {
                jSONObject.put("dynamic_show_type", qSm.getDynamicShowType());
                qSm.oJ(jSONObject, cYVar);
            }
            if (view != null) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("width", view.getWidth());
                    jSONObject2.put("height", view.getHeight());
                    jSONObject2.put("alpha", view.getAlpha());
                } catch (Throwable unused) {
                }
                jSONObject.put("root_view", jSONObject2.toString());
            }
            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, this.tB, jSONObject);
            com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(cYVar);
        } catch (JSONException unused2) {
            com.bytedance.sdk.component.utils.QSm.tB("PAGBannerAdImpl", "onShowFun json error");
        }
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.Pfn;
        if (pAGBannerAdWrapperListener != null) {
            pAGBannerAdWrapperListener.onAdShow(view, cYVar.sQ());
        }
        if (cYVar.JC()) {
            HyG.oJ(cYVar, view);
        }
    }

    private com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba oJ(cY cYVar) {
        if (cYVar.sQ() == 4) {
            return com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(this.f13293ba, this.tB);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void oJ(@NonNull final QSm qSm, @NonNull final cY cYVar) {
        com.bytedance.sdk.openadsdk.core.cFZ cfz;
        if (qSm == null || cYVar == null) {
            return;
        }
        this.ex = cYVar;
        this.kkU = oJ(cYVar);
        this.dLZ = qSm;
        final String oJ = Xe.oJ();
        final cFZ.oJ dLZ = dLZ();
        qSm.setClosedListenerKey(oJ);
        qSm.setBannerClickClosedListener(dLZ);
        qSm.setBackupListener(new com.bytedance.sdk.component.adexpress.ZYk.tB() { // from class: com.bytedance.sdk.openadsdk.core.tB.oJ.2
            @Override // com.bytedance.sdk.component.adexpress.ZYk.tB
            public boolean oJ(ViewGroup viewGroup, int i10) {
                try {
                    qSm.QSm();
                    if (oJ.this.ex.Br()) {
                        jFA jfa = new jFA(qSm.getContext());
                        jfa.setClosedListenerKey(oJ);
                        jfa.oJ(oJ.this.ex, qSm, oJ.this.kkU);
                        jfa.setAdInteractionListener(oJ.this.Pfn);
                        qSm.setVastVideoHelper(jfa);
                        return true;
                    }
                    ZYk zYk = new ZYk(qSm.getContext());
                    zYk.setClosedListenerKey(oJ);
                    zYk.oJ(oJ.this.ex, qSm, oJ.this.kkU);
                    zYk.setAdInteractionListener(oJ.this.Pfn);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
        if (!this.f13295so) {
            com.bytedance.sdk.openadsdk.core.cFZ oJ2 = oJ(qSm);
            if (oJ2 == null) {
                oJ2 = new com.bytedance.sdk.openadsdk.core.cFZ(this.f13293ba, qSm, this.BTZ.oJ());
                qSm.addView(oJ2);
            }
            cfz = oJ2;
            cfz.setAdType(1);
            cfz.setCallback(new cFZ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.tB.oJ.3
                @Override // com.bytedance.sdk.openadsdk.core.cFZ.oJ
                public void ZYk() {
                    oJ oJVar = oJ.this;
                    oJVar.ZYk(oJVar.ex);
                }

                @Override // com.bytedance.sdk.openadsdk.core.cFZ.oJ
                public void oJ(boolean z10) {
                    oJ.this.oJ(z10, cYVar);
                }

                @Override // com.bytedance.sdk.openadsdk.core.cFZ.oJ
                public void oJ() {
                    if (oJ.this.f13294si != 0) {
                        oJ.this.kkU();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.cFZ.oJ
                public void oJ(View view) {
                    if (oJ.this.PiB.compareAndSet(false, true)) {
                        oJ.this.oJ(view, qSm, cYVar, oJ, dLZ);
                    }
                    ex exVar = oJ.this.oJ;
                    if (exVar == null || exVar.getCurView() == null) {
                        return;
                    }
                    oJ.this.oJ.getCurView().kkU();
                    oJ.this.oJ.getCurView().Ry();
                    oJ.this.oJ.setIsShow(true);
                }
            });
        } else {
            Rl.oJ(qSm, true, 1, this.BTZ.oJ(), new Rl.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.tB.oJ.4
                @Override // com.bytedance.sdk.openadsdk.utils.Rl.ZYk
                public void ZYk() {
                    oJ oJVar = oJ.this;
                    oJVar.ZYk(oJVar.ex);
                }

                @Override // com.bytedance.sdk.openadsdk.utils.Rl.ZYk
                public void oJ(boolean z10) {
                    oJ.this.oJ(z10, cYVar);
                }

                @Override // com.bytedance.sdk.openadsdk.utils.Rl.ZYk
                public void oJ() {
                    if (oJ.this.f13294si != 0) {
                        oJ.this.kkU();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.utils.Rl.ZYk
                public void oJ(View view, boolean z10) {
                    if (!z10) {
                        com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(oJ.this.ex, 8);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(oJ.this.ex, 4);
                    if (oJ.this.PiB.compareAndSet(false, true)) {
                        oJ.this.oJ(view, qSm, cYVar, oJ, dLZ);
                    }
                    ex exVar = oJ.this.oJ;
                    if (exVar == null || exVar.getCurView() == null) {
                        return;
                    }
                    oJ.this.oJ.getCurView().kkU();
                    oJ.this.oJ.getCurView().Ry();
                    oJ.this.oJ.setIsShow(true);
                }
            }, null);
            cfz = null;
        }
        Context oJ3 = com.bytedance.sdk.component.utils.ZYk.oJ(qSm);
        if (oJ3 == null) {
            oJ3 = this.f13293ba;
        }
        com.bytedance.sdk.openadsdk.core.so.jFA jfa = new com.bytedance.sdk.openadsdk.core.so.jFA(oJ3, cYVar, this.tB, 2);
        jfa.oJ(qSm);
        jfa.oJ(this);
        jfa.oJ(this.kkU);
        jfa.oJ(new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.core.tB.oJ.5
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk.oJ
            public void oJ(View view, int i10) {
                if (oJ.this.Pfn != null) {
                    oJ.this.Pfn.onAdClicked();
                }
            }
        });
        qSm.setClickListener(jfa);
        com.bytedance.sdk.openadsdk.core.so.so soVar = new com.bytedance.sdk.openadsdk.core.so.so(this.f13293ba, cYVar, this.tB, 2);
        soVar.oJ((View) qSm);
        soVar.oJ(this);
        soVar.oJ(new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.core.tB.oJ.6
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk.oJ
            public void oJ(View view, int i10) {
                if (oJ.this.Pfn != null) {
                    oJ.this.Pfn.onAdClicked();
                }
            }
        });
        QSm qSm2 = this.dLZ;
        if (qSm2 instanceof RZ) {
            soVar.oJ(((RZ) qSm2).getVideoController());
        }
        soVar.oJ(this.kkU);
        qSm.setClickCreativeListener(soVar);
        if (this.f13295so) {
            return;
        }
        cfz.setNeedCheckingShow(true);
    }

    private com.bytedance.sdk.openadsdk.core.cFZ oJ(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return null;
        }
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            try {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt instanceof com.bytedance.sdk.openadsdk.core.cFZ) {
                    return (com.bytedance.sdk.openadsdk.core.cFZ) childAt;
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public void oJ(final com.bytedance.sdk.openadsdk.oJ.oJ.ZYk zYk) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.RZ > 500) {
            this.RZ = currentTimeMillis;
            ex exVar = this.oJ;
            if (exVar instanceof tB) {
                exVar.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.tB.oJ.8
                    @Override // java.lang.Runnable
                    public void run() {
                        ((tB) oJ.this.oJ).oJ(zYk);
                    }
                }, 500L);
            }
        }
    }
}
