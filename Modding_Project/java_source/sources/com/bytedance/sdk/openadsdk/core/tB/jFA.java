package com.bytedance.sdk.openadsdk.core.tB;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.eZI;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.so.QSm;
import com.bytedance.sdk.openadsdk.core.so.Ry;
import com.bytedance.sdk.openadsdk.core.widget.BTZ;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class jFA extends com.bytedance.sdk.openadsdk.core.so.oJ implements tB.ex, tB.InterfaceC0134tB {
    private QSm PiB;
    private PAGBannerAdWrapperListener Ry;
    private com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba WcQ;
    private com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba awB;
    private String eZI;
    public boolean oJ;

    /* renamed from: si  reason: collision with root package name */
    private long f13292si;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ {
        public com.bytedance.sdk.openadsdk.core.Pfn.ex Pfn;
        public BTZ ZYk;
        public PAGLogoView ex;
        public FrameLayout oJ;
        public com.bytedance.sdk.openadsdk.core.Pfn.ex tB;

        private oJ() {
        }
    }

    public jFA(@NonNull Context context) {
        super(context);
        this.oJ = true;
        this.ZYk = context;
    }

    private void Pfn() {
        Ry oJ2 = ZYk.oJ(this.PiB.getExpectExpressWidth(), this.PiB.getExpectExpressHeight());
        if (this.PiB.getExpectExpressWidth() > 0 && this.PiB.getExpectExpressHeight() > 0) {
            this.cFZ = cdg.ZYk(this.ZYk, this.PiB.getExpectExpressWidth());
            this.f13276so = cdg.ZYk(this.ZYk, this.PiB.getExpectExpressHeight());
        } else {
            int tB = cdg.tB(this.ZYk);
            this.cFZ = tB;
            this.f13276so = Float.valueOf(tB / oJ2.ZYk).intValue();
        }
        int i10 = this.cFZ;
        if (i10 > 0 && i10 > cdg.tB(this.ZYk)) {
            float tB2 = cdg.tB(this.ZYk) / this.cFZ;
            this.cFZ = cdg.tB(this.ZYk);
            this.f13276so = Float.valueOf(this.f13276so * tB2).intValue();
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.cFZ, this.f13276so);
        }
        layoutParams.width = this.cFZ;
        layoutParams.height = this.f13276so;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        oJ(oJ2);
    }

    public long getVideoProgress() {
        return this.f13292si;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.ex
    public void oJ(int i10, int i11) {
    }

    public void setAdInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.Ry = pAGBannerAdWrapperListener;
    }

    public void setClosedListenerKey(String str) {
        this.eZI = str;
    }

    private oJ ZYk(Ry ry) {
        oJ oJVar = new oJ();
        oJVar.oJ = new FrameLayout(this.ZYk);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
        layoutParams.width = -1;
        layoutParams.height = -1;
        oJVar.oJ.setLayoutParams(layoutParams);
        oJVar.ZYk = new BTZ(this.ZYk);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams2.gravity = 17;
        oJVar.ZYk.setLayoutParams(layoutParams2);
        oJVar.oJ.addView(oJVar.ZYk);
        int ZYk = cdg.ZYk(this.ZYk, 5.0f);
        if (ry != null && ry.oJ == 1) {
            oJVar.tB = com.bytedance.sdk.openadsdk.core.widget.ba.oJ(getContext());
        } else {
            oJVar.tB = com.bytedance.sdk.openadsdk.core.widget.ba.ZYk(getContext());
        }
        oJVar.tB.setId(520093697);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = GravityCompat.END;
        layoutParams3.setMargins(ZYk, ZYk, ZYk, ZYk);
        oJVar.tB.setLayoutParams(layoutParams3);
        oJVar.oJ.addView(oJVar.tB);
        oJVar.ex = PAGLogoView.createPAGLogoViewByMaterial(this.ZYk, this.tB);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 8388691;
        layoutParams4.setMargins(ZYk, ZYk, ZYk, ZYk);
        oJVar.ex.setLayoutParams(layoutParams4);
        oJVar.oJ.addView(oJVar.ex);
        oJVar.Pfn = new com.bytedance.sdk.openadsdk.core.Pfn.ex(this.ZYk);
        int ZYk2 = cdg.ZYk(this.ZYk, 11.0f);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(ZYk2, ZYk2);
        layoutParams5.gravity = 8388693;
        layoutParams5.rightMargin = ZYk;
        layoutParams5.bottomMargin = ZYk;
        oJVar.Pfn.setVisibility(8);
        oJVar.Pfn.setScaleType(ImageView.ScaleType.FIT_CENTER);
        oJVar.Pfn.setLayoutParams(layoutParams5);
        oJVar.oJ.addView(oJVar.Pfn);
        return oJVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.oJ
    protected void oJ(View view, int i10, eZI ezi) {
        QSm qSm = this.PiB;
        if (qSm != null) {
            qSm.oJ(view, i10, ezi);
            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = this.awB;
            if (baVar == null || baVar.getNativeVideoController() == null) {
                return;
            }
            this.awB.getNativeVideoController().wd();
        }
    }

    public void oJ(cY cYVar, QSm qSm, com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba baVar) {
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.tB = cYVar;
        this.PiB = qSm;
        this.WcQ = baVar;
        this.f13275ba = "banner_ad";
        qSm.addView(this, new ViewGroup.LayoutParams(-2, -2));
        Pfn();
    }

    private void oJ(Ry ry) {
        View view;
        cY cYVar = this.tB;
        if (cYVar != null) {
            int Dc = cYVar.Dc();
            oJ ZYk = ZYk(ry);
            if (ZYk == null || (view = ZYk.oJ) == null) {
                return;
            }
            addView(view);
            com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = ZYk.tB;
            PAGLogoView pAGLogoView = ZYk.ex;
            com.bytedance.sdk.openadsdk.core.Pfn.ex exVar2 = ZYk.Pfn;
            if (exVar2 != null && this.tB.Ry()) {
                cdg.oJ((View) exVar2, 0);
                com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ((int) cdg.oJ(si.oJ(), 11.0f, true), exVar2, this.tB);
            }
            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba videoView = getVideoView();
            if (videoView != null) {
                this.awB = videoView;
                videoView.setVideoAdLoadListener(this);
                this.awB.setVideoAdInteractionListener(this);
                ArrayList arrayList = new ArrayList();
                arrayList.add(new Pair(exVar, FriendlyObstructionPurpose.CLOSE_AD));
                FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                arrayList.add(new Pair(pAGLogoView, friendlyObstructionPurpose));
                arrayList.add(new Pair(exVar2, friendlyObstructionPurpose));
                this.awB.oJ(arrayList);
                this.awB.setAdCreativeClickListener(new ba.oJ() { // from class: com.bytedance.sdk.openadsdk.core.tB.jFA.1
                    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.oJ
                    public void oJ(View view2, int i10) {
                        if (jFA.this.Ry != null) {
                            jFA.this.Ry.onAdClicked();
                        }
                    }
                });
            }
            if (pAGLogoView != null) {
                pAGLogoView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.tB.jFA.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        TTWebsiteActivity.oJ(((com.bytedance.sdk.openadsdk.core.so.oJ) jFA.this).ZYk, ((com.bytedance.sdk.openadsdk.core.so.oJ) jFA.this).tB, ((com.bytedance.sdk.openadsdk.core.so.oJ) jFA.this).f13275ba);
                    }
                });
            }
            if (exVar != null) {
                exVar.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.tB.jFA.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        jFA.this.oJ();
                    }
                });
                QSm qSm = this.PiB;
                if (qSm != null) {
                    if (qSm.getClickListener() != null) {
                        this.PiB.getClickListener().ZYk(exVar);
                    }
                    if (this.PiB.getClickCreativeListener() != null) {
                        this.PiB.getClickCreativeListener().ZYk(exVar);
                    }
                }
            }
            BTZ btz = ZYk.ZYk;
            cY cYVar2 = this.tB;
            if (cYVar2 != null && cYVar2.Du() != null && btz != null) {
                int dLZ = this.tB.Du().dLZ();
                float BTZ = this.tB.Du().BTZ();
                if (dLZ > 0 && BTZ > 0.0f) {
                    btz.setRatio(dLZ / BTZ);
                } else if (Dc == 15) {
                    btz.setRatio(0.5625f);
                } else if (Dc == 5) {
                    btz.setRatio(1.7777778f);
                } else {
                    btz.setRatio(1.0f);
                }
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            if (videoView != null && btz != null) {
                btz.addView(videoView, layoutParams);
                videoView.setTag(520093762, Boolean.TRUE);
            }
            oJ((View) videoView, true);
            oJ((View) this, true);
            oJ(btz);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void g_() {
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void h_() {
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void i_() {
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void j_() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.oJ
    public void oJ() {
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.Pfn;
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.show();
            return;
        }
        com.bytedance.sdk.openadsdk.tB.tB tBVar = this.ex;
        if (tBVar != null) {
            tBVar.oJ();
        } else {
            TTDelegateActivity.oJ(this.tB, this.eZI);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void oJ(long j10, long j11) {
        this.f13292si = j10;
    }
}
