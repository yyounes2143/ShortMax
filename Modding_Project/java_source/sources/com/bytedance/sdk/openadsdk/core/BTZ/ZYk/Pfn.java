package com.bytedance.sdk.openadsdk.core.BTZ.ZYk;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Message;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba;
import com.bytedance.sdk.openadsdk.core.ZYk.oJ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.RZ;
import com.bytedance.sdk.openadsdk.core.widget.Ry;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.dLZ;
import com.bytedance.sdk.openadsdk.utils.eZI;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.lang.ref.WeakReference;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn implements com.bykv.vk.openvk.oJ.oJ.oJ.ba.oJ, com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk<cY>, IUZ.oJ, oJ.InterfaceC0202oJ, RZ.ZYk, Ry.oJ {
    View BTZ;
    RZ HL;
    oJ IUZ;
    boolean Id;
    com.bytedance.sdk.openadsdk.core.ZYk.oJ Jc;
    boolean Ln;
    com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba LpP;
    ImageView Pfn;
    com.bytedance.sdk.openadsdk.core.widget.oJ PiB;
    int QSm;
    int RZ;
    int Ry;
    com.bytedance.sdk.openadsdk.core.ZYk.oJ UN;
    TextView WcQ;
    private ba.oJ XAo;
    cY Xe;
    protected final int ZYk;
    TextView awB;

    /* renamed from: ba  reason: collision with root package name */
    View f13060ba;
    View cFZ;
    int cY;
    ImageView dLZ;
    TextView eZI;
    com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk ex;
    View jFA;

    /* renamed from: jr  reason: collision with root package name */
    int f13061jr;
    View kkU;

    /* renamed from: mu  reason: collision with root package name */
    boolean f13062mu;
    com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB nke;
    protected final int oJ;
    private long ofl;

    /* renamed from: oq  reason: collision with root package name */
    boolean f13063oq;

    /* renamed from: si  reason: collision with root package name */
    int f13064si;

    /* renamed from: so  reason: collision with root package name */
    ImageView f13065so;
    ViewGroup tB;

    /* renamed from: tb  reason: collision with root package name */
    Context f13066tb;

    /* renamed from: wd  reason: collision with root package name */
    private final String f13067wd;

    public Pfn(Context context, ViewGroup viewGroup, boolean z10, int i10, cY cYVar, com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar, boolean z11) {
        this.oJ = VideoRef.VALUE_VIDEO_REF_CODEC_HAS_h266;
        this.ZYk = 160;
        this.f13063oq = true;
        this.Ln = true;
        this.f13062mu = true;
        this.f13067wd = Build.MODEL;
        if (this instanceof ex) {
            return;
        }
        this.f13066tb = si.oJ().getApplicationContext();
        ex(z11);
        this.tB = viewGroup;
        this.f13063oq = z10;
        this.f13061jr = i10;
        this.nke = tBVar;
        this.Xe = cYVar;
        ex(8);
        oJ(context, this.tB);
        ex();
        BTZ();
    }

    private boolean Xe() {
        boolean z10;
        if (!com.bytedance.sdk.openadsdk.core.kkU.ex.oJ(this.Xe.uvK()) ? this.Xe.PdF() == null : this.Xe.BWx() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!cY.Pfn(this.Xe) || !z10 || this.Xe.jXJ() != 1) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void BTZ() {
        /*
            r9 = this;
            boolean r0 = r9.Ln
            if (r0 == 0) goto L7
            java.lang.String r0 = "embeded_ad"
            goto L9
        L7:
            java.lang.String r0 = "embeded_ad_landingpage"
        L9:
            com.bytedance.sdk.openadsdk.core.model.cY r1 = r9.Xe
            boolean r1 = r1.kO()
            r2 = 1
            if (r1 == 0) goto L18
            java.lang.String r0 = "rewarded_video"
            r1 = 7
        L15:
            r7 = r0
            r8 = r1
            goto L32
        L18:
            com.bytedance.sdk.openadsdk.core.model.cY r1 = r9.Xe
            boolean r1 = r1.uZd()
            if (r1 == 0) goto L24
            java.lang.String r0 = "fullscreen_interstitial_ad"
            r1 = 5
            goto L15
        L24:
            com.bytedance.sdk.openadsdk.core.model.cY r1 = r9.Xe
            boolean r1 = r1.nip()
            if (r1 == 0) goto L30
            java.lang.String r0 = "banner_ad"
            r1 = 2
            goto L15
        L30:
            r7 = r0
            r8 = r2
        L32:
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r9.Xe
            int r0 = r0.sQ()
            r1 = 4
            if (r0 != r1) goto L43
            android.content.Context r0 = r9.f13066tb
            com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba r0 = com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(r0, r7)
            r9.LpP = r0
        L43:
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = new com.bytedance.sdk.openadsdk.core.ZYk.oJ
            android.content.Context r1 = r9.f13066tb
            com.bytedance.sdk.openadsdk.core.model.cY r3 = r9.Xe
            r0.<init>(r1, r3, r7, r8)
            r9.Jc = r0
            r0.oJ(r9)
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = r9.Jc
            r0.ZYk(r2)
            boolean r0 = r9.Ln
            if (r0 == 0) goto L60
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = r9.Jc
            r0.oJ(r2)
            goto L6b
        L60:
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = r9.Jc
            r1 = 0
            r0.oJ(r1)
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = r9.Jc
            r0.tB(r2)
        L6b:
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = r9.Jc
            com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB r1 = r9.nke
            r0.oJ(r1)
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = r9.Jc
            r0.Pfn(r2)
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = r9.Jc
            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn$1 r1 = new com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn$1
            r1.<init>()
            r0.oJ(r1)
            com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba r0 = r9.LpP
            if (r0 == 0) goto L8c
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r1 = r9.Jc
            if (r1 == 0) goto L8c
            r1.oJ(r0)
        L8c:
            boolean r0 = r9.Xe()
            if (r0 == 0) goto Lcd
            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn$2 r0 = new com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn$2
            android.content.Context r5 = r9.f13066tb
            com.bytedance.sdk.openadsdk.core.model.cY r6 = r9.Xe
            r3 = r0
            r4 = r9
            r3.<init>(r5, r6, r7, r8)
            r9.UN = r0
            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn$3 r1 = new com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn$3
            r1.<init>()
            r0.oJ(r1)
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = r9.UN
            r0.ZYk(r2)
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = r9.UN
            boolean r1 = r9.Ln
            r0.oJ(r1)
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = r9.UN
            com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB r1 = r9.nke
            r0.oJ(r1)
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = r9.UN
            r0.Pfn(r2)
            com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba r0 = r9.LpP
            if (r0 == 0) goto Lc8
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r1 = r9.UN
            r1.oJ(r0)
        Lc8:
            com.bytedance.sdk.openadsdk.core.ZYk.oJ r0 = r9.UN
            r0.oJ(r9)
        Lcd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn.BTZ():void");
    }

    public boolean Id() {
        return this.Id;
    }

    public void Pfn() {
    }

    public com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk PiB() {
        return this.ex;
    }

    public void QSm() {
        ImageView imageView = this.dLZ;
        if (imageView != null) {
            imageView.setImageBitmap(null);
        }
        com.bytedance.sdk.openadsdk.core.widget.oJ oJVar = this.PiB;
        if (oJVar != null) {
            oJVar.setImageBitmap(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void RZ() {
        try {
            cdg.oJ(this.kkU, 8);
            cdg.oJ((View) this.dLZ, 8);
            cdg.oJ(this.BTZ, 8);
            cdg.oJ((View) this.PiB, 8);
            cdg.oJ((View) this.WcQ, 8);
            cdg.oJ((View) this.awB, 8);
            cdg.oJ((View) this.eZI, 8);
        } catch (Exception unused) {
        }
    }

    @TargetApi(14)
    public void Ry() {
        cdg.oJ((View) this.tB, 0);
        com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk zYk = this.ex;
        if (zYk != null) {
            cdg.oJ(zYk.getView(), 0);
        }
    }

    void WcQ() {
        if (this.IUZ != null && this.HL == null) {
            System.currentTimeMillis();
            RZ rz = new RZ();
            this.HL = rz;
            rz.oJ(this.f13066tb, this.tB);
            this.HL.oJ(this.IUZ, this);
            System.currentTimeMillis();
        }
    }

    public void ZYk(@Nullable ViewGroup viewGroup) {
    }

    public void awB() {
        RZ rz = this.HL;
        if (rz != null) {
            rz.oJ(false);
        }
    }

    public void ba() {
    }

    public void cFZ() {
        cY cYVar;
        cdg.ba(this.f13060ba);
        cdg.ba(this.cFZ);
        if (this.f13065so != null && (cYVar = this.Xe) != null && cYVar.ib() != null && this.Xe.ib().kkU() != null) {
            cdg.ba(this.f13065so);
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.Xe.ib().kkU(), this.Xe.ib().tB(), this.Xe.ib().ZYk(), this.f13065so, this.Xe);
        }
        if (this.Pfn.getVisibility() == 0) {
            cdg.oJ((View) this.Pfn, 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.Ry.oJ
    public boolean cY() {
        RZ rz = this.HL;
        if (rz != null && rz.oJ()) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.RZ.ZYk
    public void dLZ() {
        oJ(true, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean eZI() {
        if (this.IUZ == null) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ex() {
        this.ex.oJ(this);
        this.Pfn.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Pfn.this.eZI()) {
                    TextView textView = Pfn.this.eZI;
                    if (textView != null && textView.getVisibility() == 0) {
                        return;
                    }
                    Pfn pfn = Pfn.this;
                    pfn.IUZ.oJ(pfn, view);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.ZYk.oJ.InterfaceC0202oJ
    public long getVideoProgress() {
        if (this.ofl <= 0) {
            cY cYVar = this.Xe;
            if (cYVar != null && cYVar.ib() != null) {
                this.ofl = (long) (this.Xe.ib().ba() * 1000.0d);
            }
            com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.nke;
            if (tBVar != null) {
                this.ofl = tBVar.jFA();
            }
        }
        return this.ofl;
    }

    public void jFA() {
        ex(8);
        if (jr()) {
            this.ex.setVisibility(8);
        }
        ImageView imageView = this.f13065so;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        ex(8);
        cdg.oJ(this.kkU, 8);
        cdg.oJ((View) this.dLZ, 8);
        cdg.oJ(this.BTZ, 8);
        cdg.oJ((View) this.PiB, 8);
        cdg.oJ((View) this.WcQ, 8);
        cdg.oJ((View) this.awB, 8);
        RZ rz = this.HL;
        if (rz != null) {
            rz.oJ(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean jr() {
        if ((this.f13061jr & 4) == 4 && !this.f13063oq) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.RZ.ZYk
    public boolean kkU() {
        return false;
    }

    public void oJ(int i10) {
    }

    public boolean oq() {
        return this.f13063oq;
    }

    public void si() {
        cdg.ba(this.f13060ba);
        cdg.ba(this.cFZ);
        if (this.Pfn.getVisibility() == 0) {
            cdg.oJ((View) this.Pfn, 8);
        }
    }

    public void so() {
        cdg.Pfn(this.f13060ba);
    }

    public void tB(boolean z10) {
    }

    private int Pfn(int i10) {
        if (this.RZ <= 0 || this.QSm <= 0) {
            return 0;
        }
        int ZYk = cdg.ZYk(this.f13066tb, 228.0f);
        int ZYk2 = cdg.ZYk(this.f13066tb, 160.0f);
        int i11 = (int) (this.QSm * ((i10 * 1.0f) / this.RZ));
        return i11 > ZYk ? ZYk : i11 < ZYk2 ? ZYk2 : i11;
    }

    private void ba(int i10) {
        cdg.oJ(this.BTZ, i10);
    }

    public void ZYk(boolean z10) {
    }

    public void oJ(long j10) {
    }

    public void tB(int i10) {
        cdg.oJ((View) this.tB, 0);
        com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk zYk = this.ex;
        if (zYk != null) {
            zYk.setVisibility(i10);
        }
    }

    public boolean ZYk(int i10) {
        return false;
    }

    public void ex(boolean z10) {
        this.Ln = z10;
        if (z10) {
            com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar = this.Jc;
            if (oJVar != null) {
                oJVar.oJ(true);
            }
            com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar2 = this.UN;
            if (oJVar2 != null) {
                oJVar2.oJ(true);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar3 = this.Jc;
        if (oJVar3 != null) {
            oJVar3.oJ(false);
        }
        com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar4 = this.UN;
        if (oJVar4 != null) {
            oJVar4.oJ(false);
        }
    }

    public void oJ(long j10, long j11) {
    }

    public void ZYk(boolean z10, boolean z11) {
        ImageView imageView = this.Pfn;
        if (imageView != null) {
            if (z10) {
                imageView.setImageDrawable(dLZ.oJ(this.f13066tb, "tt_play_movebar_textpage"));
            } else {
                imageView.setImageDrawable(dLZ.oJ(this.f13066tb, "tt_stop_movebar_textpage"));
            }
        }
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.Ry.oJ
    public void oJ(View view, boolean z10) {
    }

    public void tB(int i10, int i11) {
        this.RZ = i10;
        this.QSm = i11;
    }

    public void oJ(@Nullable ViewGroup viewGroup) {
    }

    public void ZYk(int i10, int i11) {
        ViewGroup.LayoutParams layoutParams = this.tB.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        if (i10 == -1 || i10 == -2 || i10 > 0) {
            layoutParams.width = i10;
        }
        if (i11 == -1 || i11 == -2 || i11 > 0) {
            layoutParams.height = i11;
        }
        this.tB.setLayoutParams(layoutParams);
    }

    public void oJ(String str) {
    }

    public void tB(@Nullable ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        if (this.tB.getParent() == null) {
            viewGroup.addView(this.tB);
        }
        ex(0);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk
    @SuppressLint({"ClickableViewAccessibility"})
    public /* bridge */ /* synthetic */ void oJ(cY cYVar, WeakReference weakReference, boolean z10) {
        oJ2(cYVar, (WeakReference<Context>) weakReference, z10);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk
    public View tB() {
        return this.tB;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk
    public void ZYk() {
        cdg.Pfn(this.f13060ba);
        cdg.Pfn(this.cFZ);
        ImageView imageView = this.f13065so;
        if (imageView != null) {
            cdg.Pfn(imageView);
        }
    }

    public void oJ(ba.oJ oJVar) {
        this.XAo = oJVar;
    }

    public void ex(int i10) {
        this.cY = i10;
        cdg.oJ((View) this.tB, i10);
    }

    public void oJ(PAGNativeAd pAGNativeAd) {
        com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar = this.Jc;
        if (oJVar != null) {
            oJVar.oJ(pAGNativeAd);
        }
        com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar2 = this.UN;
        if (oJVar2 != null) {
            oJVar2.oJ(pAGNativeAd);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.oJ
    public void ZYk(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.ex.getHolder()) {
            return;
        }
        this.Id = false;
        if (eZI()) {
            this.IUZ.ZYk(this, surfaceHolder);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v19, types: [com.bykv.vk.openvk.oJ.oJ.oJ.ba.ex] */
    public void oJ(Context context, View view) {
        com.bykv.vk.openvk.oJ.oJ.oJ.ba.tB tBVar;
        System.currentTimeMillis();
        cY cYVar = this.Xe;
        if ((cYVar == null || ((!cYVar.sXx() && !this.Xe.nip()) || PiB.ib().eXp())) && view != null) {
            view.setKeepScreenOn(true);
        }
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar2 = this.nke;
        if (tBVar2 != null && tBVar2.awB()) {
            tBVar = new com.bykv.vk.openvk.oJ.oJ.oJ.ba.ex(this.f13066tb);
        } else {
            tBVar = new com.bykv.vk.openvk.oJ.oJ.oJ.ba.tB(this.f13066tb);
        }
        if (view instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            ((RelativeLayout) view).addView(tBVar, 0, layoutParams);
        }
        cdg.oJ((View) tBVar, 8);
        this.ex = tBVar;
        this.Pfn = (ImageView) view.findViewById(eZI.NX);
        this.f13060ba = view.findViewById(eZI.f13413oo);
        this.cFZ = view.findViewById(eZI.ZMY);
        this.f13065so = (ImageView) view.findViewById(eZI.f13416rg);
        this.jFA = view.findViewById(eZI.MVA);
        System.currentTimeMillis();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.oJ
    public void ZYk(SurfaceTexture surfaceTexture) {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.nke;
        if (tBVar != null) {
            tBVar.oJ(surfaceTexture);
        }
    }

    public Pfn(Context context, ViewGroup viewGroup, boolean z10, int i10, cY cYVar, com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar) {
        this(context, viewGroup, z10, i10, cYVar, tBVar, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(View view, Context context) {
        View view2;
        if (view == null || context == null || (view2 = this.jFA) == null || view2.getParent() == null || this.kkU != null) {
            return;
        }
        this.kkU = this.jFA;
        this.dLZ = (ImageView) view.findViewById(eZI.Zzm);
        this.BTZ = view.findViewById(eZI.sQ);
        this.PiB = (com.bytedance.sdk.openadsdk.core.widget.oJ) view.findViewById(eZI.cdg);
        this.WcQ = (TextView) view.findViewById(eZI.Rl);
        this.awB = (TextView) view.findViewById(eZI.Jm);
        this.eZI = (TextView) view.findViewById(eZI.Qu);
    }

    public boolean oJ(int i10, com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk zYk, boolean z10) {
        RZ rz = this.HL;
        return rz == null || rz.oJ(i10, zYk, z10);
    }

    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ oJVar) {
        if (oJVar instanceof oJ) {
            this.IUZ = (oJ) oJVar;
            WcQ();
        }
    }

    public void oJ(int i10, int i11) {
        if (i10 == -1) {
            i10 = cdg.tB(this.f13066tb);
        }
        if (i10 <= 0) {
            return;
        }
        this.f13064si = i10;
        if (!oq() && !kkU() && (this.f13061jr & 8) != 8) {
            this.Ry = Pfn(i10);
        } else {
            this.Ry = i11;
        }
        ZYk(this.f13064si, this.Ry);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk
    public void oJ() {
        oJ(false, this.f13063oq);
        RZ();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk
    public void oJ(boolean z10) {
        this.f13062mu = z10;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: oJ  reason: avoid collision after fix types in other method */
    public void oJ2(final cY cYVar, WeakReference<Context> weakReference, boolean z10) {
        String str;
        cY cYVar2;
        cY cYVar3;
        if (cYVar == null) {
            return;
        }
        oJ(false, this.f13063oq);
        oJ(this.tB, si.oJ());
        View view = this.kkU;
        if (view != null) {
            cdg.oJ(view, 0);
        }
        ImageView imageView = this.dLZ;
        if (imageView != null) {
            cdg.oJ((View) imageView, 0);
        }
        cdg.oJ(this.BTZ, 0);
        if (this.dLZ != null && (cYVar3 = this.Xe) != null && cYVar3.ib() != null && this.Xe.ib().kkU() != null) {
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.Xe.ib().kkU(), this.Xe.ib().tB(), this.Xe.ib().ZYk(), this.dLZ, cYVar);
        }
        if (!TextUtils.isEmpty(cYVar.Qzd())) {
            str = cYVar.Qzd();
        } else if (!TextUtils.isEmpty(cYVar.UUI())) {
            str = cYVar.UUI();
        } else if (!TextUtils.isEmpty(cYVar.Amz())) {
            str = cYVar.Amz();
        } else {
            str = "";
        }
        if (this.PiB != null && (cYVar2 = this.Xe) != null && cYVar2.Zjw() != null && this.Xe.Zjw().oJ() != null) {
            cdg.oJ((View) this.PiB, 0);
            cdg.oJ((View) this.WcQ, 4);
            cY cYVar4 = this.Xe;
            if (cYVar4 != null && cYVar4.Br()) {
                com.bytedance.sdk.openadsdk.jFA.ex.oJ(this.Xe.Zjw()).tB(1).oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(cYVar, this.Xe.Zjw().oJ(), new com.bytedance.sdk.component.Pfn.eZI() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn.5
                    @Override // com.bytedance.sdk.component.Pfn.eZI
                    public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
                        Object ZYk = dlz.ZYk();
                        if (ZYk != null) {
                            if (ZYk instanceof Bitmap) {
                                com.bytedance.sdk.openadsdk.core.widget.oJ oJVar = Pfn.this.PiB;
                                if (oJVar != null) {
                                    oJVar.setImageBitmap((Bitmap) ZYk);
                                }
                            } else if ((ZYk instanceof Drawable) && Pfn.this.PiB != null) {
                                if (Build.VERSION.SDK_INT >= 28 && b.a(ZYk)) {
                                    c.a(ZYk).start();
                                }
                                Pfn.this.PiB.setImageDrawable((Drawable) ZYk);
                            }
                            com.bytedance.sdk.openadsdk.ex.tB.ZYk(Pfn.this.Xe, Pfn.this.Xe != null ? HyG.tB(cYVar.qnr()) : null, "load_vast_icon_success", (JSONObject) null);
                        }
                    }

                    @Override // com.bytedance.sdk.component.Pfn.eZI
                    public void oJ(int i10, String str2, @Nullable Throwable th2) {
                        Pfn.this.oJ(i10, str2, cYVar);
                    }
                }));
                if (this.Xe.Du() != null && this.Xe.Du().ZYk() != null) {
                    this.Xe.Du().ZYk().ZYk(0L);
                }
            } else {
                com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.Xe.Zjw(), this.PiB, cYVar);
            }
            cY cYVar5 = this.Xe;
            if (cYVar5 != null && cYVar5.Br()) {
                try {
                    this.PiB.setTag(570425345, "VAST_ICON");
                } catch (Throwable unused) {
                }
            }
            cY cYVar6 = this.Xe;
            if (cYVar6 != null && cYVar6.Du() != null && this.Xe.Du().ZYk() != null) {
                final com.bytedance.sdk.openadsdk.core.dLZ.ZYk ZYk = this.Xe.Du().ZYk();
                com.bytedance.sdk.openadsdk.core.widget.oJ oJVar = this.PiB;
                if (oJVar != null) {
                    oJVar.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn.6
                        @Override // java.lang.Runnable
                        public void run() {
                            com.bytedance.sdk.openadsdk.core.dLZ.ZYk zYk;
                            com.bytedance.sdk.openadsdk.core.widget.oJ oJVar2 = Pfn.this.PiB;
                            if (oJVar2 != null && oJVar2.isShown() && (zYk = ZYk) != null) {
                                zYk.ZYk(Pfn.this.getVideoProgress());
                            }
                        }
                    });
                }
            }
            if (Xe()) {
                this.PiB.setOnClickListener(this.UN);
                this.PiB.setOnTouchListener(this.UN);
            } else {
                this.PiB.setOnClickListener(this.Jc);
                this.PiB.setOnTouchListener(this.Jc);
            }
        } else if (!TextUtils.isEmpty(str)) {
            cdg.oJ((View) this.PiB, 4);
            cdg.oJ((View) this.WcQ, 0);
            TextView textView = this.WcQ;
            if (textView != null) {
                textView.setText(str.substring(0, 1));
                if (Xe()) {
                    this.WcQ.setOnClickListener(this.UN);
                    this.WcQ.setOnTouchListener(this.UN);
                } else {
                    this.WcQ.setOnClickListener(this.Jc);
                    this.WcQ.setOnTouchListener(this.Jc);
                }
            }
        }
        if (this.awB != null && !TextUtils.isEmpty(str)) {
            this.awB.setText(str);
            this.awB.setTag(570425345, "VAST_TITLE");
        }
        cdg.oJ((View) this.awB, 0);
        cdg.oJ((View) this.eZI, 0);
        String ypD = cYVar.ypD();
        if (TextUtils.isEmpty(ypD)) {
            int sQ = cYVar.sQ();
            if (sQ != 2 && sQ != 3) {
                if (sQ == 4) {
                    ypD = com.bytedance.sdk.component.utils.cY.oJ(this.f13066tb, "tt_video_download_apk");
                } else if (sQ == 5) {
                    ypD = com.bytedance.sdk.component.utils.cY.oJ(this.f13066tb, "tt_video_dial_phone");
                } else if (sQ != 8) {
                    ypD = com.bytedance.sdk.component.utils.cY.oJ(this.f13066tb, "tt_video_mobile_go_detail");
                }
            }
            ypD = com.bytedance.sdk.component.utils.cY.oJ(this.f13066tb, "tt_video_mobile_go_detail");
        }
        TextView textView2 = this.eZI;
        if (textView2 != null) {
            textView2.setText(ypD);
            this.eZI.setOnClickListener(this.Jc);
            this.eZI.setOnTouchListener(this.Jc);
        }
        if (this.f13062mu) {
            return;
        }
        ba(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final int i10, final String str, final cY cYVar) {
        com.bytedance.sdk.openadsdk.ex.tB.oJ(new so("load_vast_icon_fail") { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn.7
            @Override // java.lang.Runnable
            public void run() {
                String str2;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i10);
                    jSONObject.put(InMobiNetworkValues.DESCRIPTION, i10 + ":" + str);
                    jSONObject.put("url", Pfn.this.Xe.Zjw().oJ());
                } catch (Throwable unused) {
                }
                if (Pfn.this.Xe != null) {
                    str2 = HyG.tB(cYVar.qnr());
                } else {
                    str2 = null;
                }
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(Pfn.this.Xe, str2, "load_vast_icon_fail", jSONObject);
            }
        });
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.oJ
    public void oJ(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.ex.getHolder()) {
            return;
        }
        this.Id = true;
        if (eZI()) {
            this.IUZ.oJ(this, surfaceHolder);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.oJ
    public void oJ(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        if (surfaceHolder != this.ex.getHolder()) {
            return;
        }
        eZI();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.oJ
    public void oJ(SurfaceTexture surfaceTexture, int i10, int i11) {
        this.Id = true;
        if (eZI()) {
            this.IUZ.oJ(this, surfaceTexture);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.oJ
    public boolean oJ(SurfaceTexture surfaceTexture) {
        this.Id = false;
        if (eZI()) {
            this.IUZ.ZYk(this, surfaceTexture);
            return true;
        }
        return true;
    }

    public void oJ(boolean z10, boolean z11, boolean z12) {
        cdg.oJ((View) this.Pfn, (!z10 || this.f13060ba.getVisibility() == 0) ? 8 : 0);
    }

    public void oJ(boolean z10, boolean z11) {
        cdg.oJ((View) this.Pfn, 8);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk
    public void oJ(Drawable drawable) {
        ViewGroup viewGroup = this.tB;
        if (viewGroup != null) {
            viewGroup.setBackgroundDrawable(drawable);
        }
    }
}
