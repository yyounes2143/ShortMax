package com.bytedance.sdk.openadsdk.oJ.ZYk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoMediaView;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.Ry;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.so.QSm;
import com.bytedance.sdk.openadsdk.core.so.RZ;
import com.bytedance.sdk.openadsdk.core.so.jFA;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes3.dex */
public class oJ {
    private com.bytedance.sdk.openadsdk.core.ZYk.ZYk BTZ;
    private WeakReference<com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba> Pfn;
    private boolean PiB = false;
    private WeakReference<com.bytedance.sdk.openadsdk.core.dLZ.ba> WcQ;
    private final Context ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private ZYk f13376ba;
    private com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.tB cFZ;
    private com.bytedance.sdk.openadsdk.core.ZYk.oJ dLZ;
    private boolean ex;
    private QSm jFA;
    private PAGMediaView kkU;
    protected final cY oJ;

    /* renamed from: so  reason: collision with root package name */
    private PAGMediaView f13377so;
    private final String tB;

    public oJ(Context context, cY cYVar, String str) {
        this.ZYk = context;
        this.oJ = cYVar;
        this.tB = str;
    }

    private PAGMediaView WcQ() {
        if (cY.Pfn(this.oJ)) {
            com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.tB tBVar = this.cFZ;
            if (tBVar != null && (tBVar instanceof com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.ZYk)) {
                RZ rz = (RZ) tBVar.ex();
                rz.setTag(520093762, Boolean.TRUE);
                if (!this.PiB) {
                    this.cFZ.Pfn();
                }
                this.PiB = true;
                return oJ(rz);
            }
            return null;
        }
        com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.tB tBVar2 = this.cFZ;
        if (tBVar2 != null) {
            QSm ex = tBVar2.ex();
            ex.setTag(520093762, Boolean.TRUE);
            if (!this.PiB) {
                this.cFZ.Pfn();
            }
            this.PiB = true;
            return oJ(ex);
        }
        return null;
    }

    public void BTZ() {
        Context context = this.ZYk;
        if (context != null) {
            TTWebsiteActivity.oJ(context, this.oJ, this.tB);
        }
    }

    public String Pfn() {
        cY cYVar = this.oJ;
        if (cYVar != null) {
            return ZYk(cYVar);
        }
        return null;
    }

    public void PiB() {
        com.bytedance.sdk.openadsdk.core.dLZ.ba baVar;
        WeakReference<com.bytedance.sdk.openadsdk.core.dLZ.ba> weakReference = this.WcQ;
        if (weakReference != null && (baVar = weakReference.get()) != null) {
            baVar.oJ(13);
        }
    }

    public QSm ZYk() {
        return this.jFA;
    }

    public String ba() {
        cY cYVar = this.oJ;
        if (cYVar != null) {
            return cYVar.ypD();
        }
        return null;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public PAGMediaView cFZ() {
        PAGMediaView jFA;
        com.bytedance.sdk.openadsdk.utils.ZYk.oJ(this.oJ);
        if (this.oJ.oIC() == 2) {
            jFA = WcQ();
            oJ(jFA);
        } else {
            jFA = jFA();
        }
        if (jFA != null) {
            jFA.setMrcTrackerKey(com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.ZYk(this.oJ));
        } else {
            jFA = new PAGMediaView(this.ZYk) { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.1
                @Override // android.view.ViewGroup, android.view.View
                protected void onAttachedToWindow() {
                    super.onAttachedToWindow();
                    com.bytedance.sdk.openadsdk.utils.ex.oJ(this, oJ.this.oJ);
                }
            };
        }
        if (jFA instanceof PAGVideoMediaView) {
            ((PAGVideoMediaView) jFA).setMaterialMeta(this.oJ);
        }
        this.kkU = jFA;
        return jFA;
    }

    public View dLZ() {
        cY cYVar;
        if (si.oJ() == null || (cYVar = this.oJ) == null || !cYVar.Br() || !this.oJ.Ry()) {
            return null;
        }
        ImageView imageView = new ImageView(si.oJ());
        com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ((int) cdg.oJ(si.oJ(), 14.0f, true), imageView, this.oJ);
        return imageView;
    }

    public String ex() {
        cY cYVar = this.oJ;
        if (cYVar != null) {
            return oJ(cYVar);
        }
        return null;
    }

    public PAGMediaView jFA() {
        if (cY.Pfn(this.oJ)) {
            ZYk zYk = this.f13376ba;
            if (zYk != null) {
                View Pfn = zYk.Pfn();
                if (Pfn != null) {
                    if (Pfn.getParent() instanceof ViewGroup) {
                        ((ViewGroup) Pfn.getParent()).removeView(Pfn);
                    }
                    PAGMediaView pAGMediaView = this.f13377so;
                    if (pAGMediaView != null) {
                        pAGMediaView.setOnClickListener(null);
                        this.f13377so.setOnTouchListener(null);
                    }
                    PAGVideoMediaView pAGVideoMediaView = new PAGVideoMediaView(this.ZYk, Pfn, this);
                    pAGVideoMediaView.setTag(520093762, Boolean.TRUE);
                    if (this.dLZ != null && PiB.ib().tB(String.valueOf(this.oJ.uv()))) {
                        pAGVideoMediaView.setOnClickListener(this.dLZ);
                        pAGVideoMediaView.setOnTouchListener(this.dLZ);
                    } else {
                        com.bytedance.sdk.openadsdk.core.ZYk.tB tBVar = new com.bytedance.sdk.openadsdk.core.ZYk.tB() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.2
                            /* JADX INFO: Access modifiers changed from: protected */
                            @Override // com.bytedance.sdk.openadsdk.core.ZYk.tB
                            public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
                                try {
                                    ((PAGVideoMediaView) view).handleInterruptVideo();
                                } catch (Exception unused) {
                                }
                            }
                        };
                        pAGVideoMediaView.setOnClickListener(tBVar);
                        pAGVideoMediaView.setOnTouchListener(tBVar);
                    }
                    this.f13377so = pAGVideoMediaView;
                    pAGVideoMediaView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                    return pAGVideoMediaView;
                }
                ApmHelper.reportCustomError("adVideoView null", "getMediaView return null", new RuntimeException());
                return null;
            }
            ApmHelper.reportCustomError("mPAGFeedVideoAdImpl null", "getMediaView return null", new RuntimeException());
            return null;
        }
        List<Ry> yB = this.oJ.yB();
        if (yB != null && !yB.isEmpty()) {
            ImageView imageView = new ImageView(this.ZYk);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            Ry ry = yB.get(0);
            if (ry != null) {
                com.bytedance.sdk.openadsdk.jFA.ex.oJ(ry).tB(1).oJ(com.bytedance.sdk.openadsdk.jFA.tB.oJ(this.oJ, ry.oJ(), imageView));
            }
            PAGMediaView oJ = oJ(imageView);
            if (this.dLZ != null && PiB.ib().tB(String.valueOf(this.oJ.uv()))) {
                oJ.setOnClickListener(this.dLZ);
                oJ.setOnTouchListener(this.dLZ);
            } else {
                oJ.setOnClickListener(null);
                oJ.setOnTouchListener(null);
            }
            oJ.setTag(520093762, Boolean.TRUE);
            PAGMediaView pAGMediaView2 = this.f13377so;
            if (pAGMediaView2 != null) {
                pAGMediaView2.setOnClickListener(null);
                this.f13377so.setOnTouchListener(null);
            }
            this.f13377so = oJ;
            return oJ;
        }
        ApmHelper.reportCustomError("images empty", "getMediaView return null", new RuntimeException());
        return null;
    }

    public View kkU() {
        if (si.oJ() == null) {
            return null;
        }
        PAGLogoView pAGLogoView = new PAGLogoView(si.oJ()) { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.4
            int oJ = 0;
            int ZYk = 0;

            @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
                super.onLayout(z10, i10, i11, i12, i13);
                try {
                    ViewParent parent = getParent();
                    if (parent != null && this.oJ != 0 && this.ZYk != 0) {
                        int width = ((View) parent).getWidth();
                        int height = ((View) parent).getHeight();
                        int i14 = this.oJ;
                        if (width >= i14 && height >= this.ZYk) {
                            return;
                        }
                        float min = Math.min(height / this.ZYk, width / i14);
                        int i15 = (width - this.oJ) / 2;
                        if (min != 1.0f) {
                            setScaleX(min);
                            setScaleY(min);
                            setTranslationX(i15);
                        }
                    }
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bytedance.sdk.openadsdk.core.widget.PAGLogoView, android.widget.LinearLayout, android.view.View
            public void onMeasure(int i10, int i11) {
                if (this.oJ == 0) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(1073741823, Integer.MIN_VALUE), i11);
                    this.oJ = getMeasuredWidth();
                    this.ZYk = this.containerHeight;
                }
                setMeasuredDimension(this.oJ, this.ZYk);
            }
        };
        pAGLogoView.initData(this.oJ);
        pAGLogoView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                oJ.this.BTZ();
            }
        });
        return pAGLogoView;
    }

    public void oJ(ZYk zYk) {
        this.f13376ba = zYk;
    }

    public PAGMediaView so() {
        return this.kkU;
    }

    public PAGImageItem tB() {
        cY cYVar = this.oJ;
        if (cYVar != null && cYVar.Zjw() != null) {
            return new PAGImageItem(this.oJ.Zjw().tB(), this.oJ.Zjw().ZYk(), this.oJ.Zjw().oJ(), (float) this.oJ.Zjw().ex());
        }
        return null;
    }

    private String ZYk(cY cYVar) {
        if (!TextUtils.isEmpty(cYVar.UUI())) {
            return cYVar.UUI();
        }
        if (!TextUtils.isEmpty(cYVar.Amz())) {
            return cYVar.Amz();
        }
        return "";
    }

    public void oJ(com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.tB tBVar) {
        this.cFZ = tBVar;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar) {
        this.Pfn = new WeakReference<>(baVar);
    }

    public void oJ(boolean z10) {
        this.ex = z10;
    }

    public PAGMediaView oJ() {
        return this.f13377so;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar) {
        this.dLZ = oJVar;
    }

    private tB ZYk(final PAGVideoAdListener pAGVideoAdListener) {
        return new tB() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.6
            @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.tB
            public void ZYk(PAGNativeAd pAGNativeAd) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPaused();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.tB
            public void oJ(int i10, int i11) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoError();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.tB
            public void tB(PAGNativeAd pAGNativeAd) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdComplete();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.tB
            public void oJ(PAGNativeAd pAGNativeAd) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPlay();
                }
            }
        };
    }

    private String oJ(cY cYVar) {
        if (cYVar.Wd() != null && !TextUtils.isEmpty(cYVar.Wd().ZYk())) {
            return cYVar.Wd().ZYk();
        }
        if (!TextUtils.isEmpty(cYVar.Qzd())) {
            return cYVar.Qzd();
        }
        if (!TextUtils.isEmpty(cYVar.UUI())) {
            return cYVar.UUI();
        }
        return "";
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk) {
        this.BTZ = zYk;
    }

    private void oJ(PAGMediaView pAGMediaView) {
        if (pAGMediaView == null) {
            return;
        }
        try {
            pAGMediaView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        } catch (Exception unused) {
        }
    }

    private PAGMediaView oJ(final View view) {
        int i10;
        if (view == null) {
            return null;
        }
        if (view.getParent() instanceof ViewGroup) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        QSm qSm = this.jFA;
        if (qSm != null) {
            qSm.setClickListener(null);
            this.jFA.setClickCreativeListener(null);
        }
        com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk = this.BTZ;
        if (zYk != null && (zYk instanceof jFA) && (view instanceof QSm)) {
            ((QSm) view).setClickListener((jFA) zYk);
        }
        com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar = this.dLZ;
        if (oJVar != null && (oJVar instanceof com.bytedance.sdk.openadsdk.core.so.so) && (view instanceof QSm)) {
            ((QSm) view).setClickCreativeListener((com.bytedance.sdk.openadsdk.core.so.so) oJVar);
        }
        PAGMediaView pAGMediaView = new PAGMediaView(this.ZYk) { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.3
            private void oJ(boolean z10) {
                int i11;
                Integer num = this.oJ;
                if (num != null) {
                    com.bytedance.sdk.openadsdk.jr.ZYk.ZYk oJ = com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(num);
                    if (z10) {
                        i11 = 4;
                    } else {
                        i11 = 8;
                    }
                    com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(oJ, i11);
                }
                cY cYVar = oJ.this.oJ;
                if (cYVar != null) {
                    com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(cYVar, z10);
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                com.bytedance.sdk.openadsdk.utils.ex.oJ(this, oJ.this.oJ);
            }

            @Override // android.view.View
            public void onWindowFocusChanged(boolean z10) {
                super.onWindowFocusChanged(z10);
                if (!(view instanceof QSm)) {
                    oJ(z10);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView
            public void setVideoAdListener(PAGVideoAdListener pAGVideoAdListener) {
                super.setVideoAdListener(pAGVideoAdListener);
                oJ.this.oJ(pAGVideoAdListener);
            }
        };
        int i11 = -1;
        pAGMediaView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            i11 = layoutParams.width;
            i10 = layoutParams.height;
        } else {
            i10 = -1;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i11, i10);
        layoutParams2.gravity = 17;
        pAGMediaView.addView(view, layoutParams2);
        if (view instanceof QSm) {
            this.jFA = (QSm) view;
        }
        return pAGMediaView;
    }

    public void oJ(PAGVideoAdListener pAGVideoAdListener) {
        com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.tB tBVar;
        if (this.oJ.oIC() == 2 && cY.Pfn(this.oJ) && (tBVar = this.cFZ) != null && (tBVar instanceof com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.ZYk)) {
            RZ rz = (RZ) tBVar.ex();
            if (rz != null) {
                rz.setVideoAdListener(ZYk(pAGVideoAdListener));
                return;
            }
            return;
        }
        ZYk zYk = this.f13376ba;
        if (zYk != null) {
            zYk.oJ(ZYk(pAGVideoAdListener));
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.dLZ.ba baVar) {
        this.WcQ = new WeakReference<>(baVar);
    }
}
