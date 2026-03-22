package com.bytedance.sdk.openadsdk.core.BTZ.ZYk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.mu;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.so.jr;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB;
import com.bytedance.sdk.openadsdk.ex.cFZ;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class ba extends com.bytedance.sdk.openadsdk.core.Pfn.tB implements tB.oJ, IUZ.oJ, tB.oJ {
    private static final Integer Id = 0;
    private static final Integer cY = 1;
    protected String BTZ;
    private boolean HL;
    private ViewTreeObserver.OnGlobalLayoutListener HyG;
    private boolean IUZ;
    private boolean Jc;
    private final AtomicBoolean Jm;
    private long Ln;
    private final boolean LpP;
    public boolean Pfn;
    protected int PiB;
    private boolean QSm;
    private final ViewTreeObserver.OnScrollChangedListener Qu;
    private boolean RZ;
    private final Runnable Rl;
    private ViewGroup Ry;
    private long UN;
    boolean WcQ;
    private final String XAo;
    private boolean Xe;
    protected tB ZYk;
    protected boolean awB;

    /* renamed from: ba  reason: collision with root package name */
    public cFZ f13068ba;
    protected RelativeLayout cFZ;
    private final AtomicBoolean cdg;
    protected boolean dLZ;
    public ZYk eZI;
    protected boolean ex;
    protected ImageView jFA;

    /* renamed from: jr  reason: collision with root package name */
    private String f13069jr;
    protected ImageView kkU;

    /* renamed from: mu  reason: collision with root package name */
    private boolean f13070mu;
    private final Handler nke;
    protected final cY oJ;
    private View ofl;

    /* renamed from: oq  reason: collision with root package name */
    private String f13071oq;

    /* renamed from: si  reason: collision with root package name */
    private final Context f13072si;

    /* renamed from: so  reason: collision with root package name */
    protected ImageView f13073so;
    protected FrameLayout tB;

    /* renamed from: tb  reason: collision with root package name */
    private boolean f13074tb;

    /* renamed from: wd  reason: collision with root package name */
    private tB.InterfaceC0134tB f13075wd;

    /* loaded from: classes3.dex */
    public interface ZYk {
        void oJ(boolean z10, long j10, long j11, long j12, boolean z11);
    }

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(View view, int i10);
    }

    public ba(@NonNull Context context, @NonNull cY cYVar, boolean z10, cFZ cfz) {
        this(context, cYVar, z10, "embeded_ad", false, false, cfz);
    }

    private void HL() {
        if (!Jc() && Xe()) {
            Boolean bool = Boolean.FALSE;
            com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_isfromvideodetailpage", bool);
            com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_is_from_detail_page", bool);
        }
    }

    private void IUZ() {
        this.nke.removeMessages(1);
        WcQ.tB().removeCallbacks(this.Rl);
    }

    private void Id() {
        this.eZI = null;
        if (this.ZYk != null && !Jc()) {
            this.ZYk.ofl();
        }
        dLZ();
        oJ(false);
        cY();
    }

    private boolean Jc() {
        return this.QSm;
    }

    private void Ln() {
        if (this.ZYk != null && !Jc()) {
            if ((!Xe() || com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_is_update_flag", false)) && Xe()) {
                long jFA = this.ZYk.jFA();
                boolean oJ2 = com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_native_video_complete", false);
                long oJ3 = com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_current_play_position", 0L);
                long oJ4 = com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_total_play_duration", this.ZYk.cFZ() + jFA);
                long oJ5 = com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_duration", jFA);
                com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_is_update_flag", Boolean.FALSE);
                this.ZYk.ZYk(oJ2);
                this.ZYk.ZYk(oJ3);
                this.ZYk.tB(oJ4);
                this.ZYk.ex(oJ5);
            }
        }
    }

    private boolean LpP() {
        if (2 == si.ex().ZYk(this.oJ.uv())) {
            return true;
        }
        return false;
    }

    private void Pfn() {
        addView(oJ(this.f13072si));
        RZ();
        addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                ba.this.Ry();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                ba.this.Ry();
            }
        });
    }

    private void QSm() {
        tB tBVar = this.ZYk;
        if (tBVar == null) {
            return;
        }
        tBVar.ex(this.RZ);
        this.ZYk.oJ((tB.oJ) this);
        this.ZYk.oJ((tB.oJ) this);
    }

    private void RZ() {
        this.ZYk = new tB(this.f13072si, this.tB, this.oJ, this.BTZ, !Jc(), this.f13074tb, this.HL, this.f13068ba);
        QSm();
        if (this.HyG == null) {
            this.HyG = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.3
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    ba baVar;
                    tB tBVar;
                    if (ba.this.Ry != null && ba.this.Ry.getViewTreeObserver() != null && (tBVar = (baVar = ba.this).ZYk) != null) {
                        tBVar.oJ(baVar.Ry.getWidth(), ba.this.Ry.getHeight());
                        ba.this.Ry.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        ba.this.HyG = null;
                    }
                }
            };
            this.Ry.getViewTreeObserver().addOnGlobalLayoutListener(this.HyG);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Ry() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Handler handler = this.nke;
        if (handler != null && elapsedRealtime - this.UN > 500) {
            this.UN = elapsedRealtime;
            handler.sendEmptyMessageDelayed(1, 500L);
        }
    }

    private void UN() {
        cdg.Pfn(this.jFA);
        cdg.Pfn(this.cFZ);
    }

    private boolean Xe() {
        cY cYVar = this.oJ;
        if (cYVar == null) {
            return false;
        }
        return cYVar.AEN();
    }

    private void cY() {
        if (!this.cdg.get()) {
            this.cdg.set(true);
            tB tBVar = this.ZYk;
            if (tBVar != null) {
                tBVar.oJ(true, 3);
            }
        }
        this.Jm.set(false);
    }

    private void ex() {
        oJ(0L, 0);
        this.f13075wd = null;
    }

    private void jr() {
        this.Jc = BTZ();
        ofl.oJ(this.Rl);
    }

    private boolean nke() {
        if (5 == si.ex().ZYk(this.oJ.uv())) {
            return true;
        }
        return false;
    }

    private void oq() {
        tB tBVar = this.ZYk;
        if (tBVar == null) {
            RZ();
        } else if (tBVar != null && !Jc()) {
            this.ZYk.eZI();
        }
        if (this.ZYk != null && this.cdg.get()) {
            this.cdg.set(false);
            ZYk();
            if (so()) {
                cdg.oJ((View) this.cFZ, 8);
                ImageView imageView = this.jFA;
                if (imageView != null) {
                    cdg.oJ((View) imageView, 8);
                }
                cY cYVar = this.oJ;
                if (cYVar != null && cYVar.ib() != null) {
                    com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ2 = cY.oJ(CacheDirFactory.getICacheDir(this.oJ.rQ()).tB(), this.oJ);
                    oJ2.ZYk(this.oJ.edj());
                    oJ2.ZYk(this.Ry.getWidth());
                    oJ2.tB(this.Ry.getHeight());
                    oJ2.tB(this.oJ.pe());
                    oJ2.oJ(0L);
                    oJ2.oJ(jFA());
                    oJ(oJ2);
                    this.ZYk.oJ(oJ2);
                    this.ZYk.ZYk(false);
                }
            } else if (this.ZYk.PiB()) {
                this.ZYk.PiB();
                ZYk(true);
            } else {
                cFZ();
                cdg.oJ((View) this.cFZ, 0);
            }
        }
    }

    private boolean tb() {
        if (Jc() || !Xe()) {
            return false;
        }
        boolean oJ2 = com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_isfromvideodetailpage", false);
        if (!com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_is_from_detail_page", false) && !oJ2) {
            return false;
        }
        return true;
    }

    boolean BTZ() {
        int i10;
        if (jr.ZYk(this.BTZ)) {
            i10 = 1;
        } else {
            i10 = 5;
        }
        return mu.oJ(this, 50, i10, false);
    }

    public boolean PiB() {
        boolean z10 = false;
        if (Ry.tB(si.oJ()) == 0) {
            return false;
        }
        if (this.ZYk.dLZ() != null && this.ZYk.dLZ().ba()) {
            oJ(false, Id.intValue());
            Handler handler = this.nke;
            z10 = true;
            if (handler != null) {
                handler.removeMessages(1);
            }
        }
        return z10;
    }

    public void WcQ() {
        if (getNativeVideoController() != null && getNativeVideoController() != null) {
            tB nativeVideoController = getNativeVideoController();
            nativeVideoController.oJ(nativeVideoController.BTZ(), this);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
    public void ZYk(long j10, int i10) {
    }

    public void awB() {
        if (Ry.tB(si.oJ()) == 0 || !BTZ()) {
            return;
        }
        if (this.ZYk.dLZ() != null) {
            if (this.ZYk.dLZ().cFZ()) {
                oJ(true, cY.intValue());
                ZYk();
                Handler handler = this.nke;
                if (handler != null) {
                    handler.sendEmptyMessageDelayed(1, 500L);
                    return;
                }
                return;
            } else if (this.ZYk.dLZ().ZYk() && !this.awB) {
                kkU();
                if (this.ZYk != null) {
                    this.ZYk.HyG();
                    return;
                }
                return;
            }
        }
        if (!so() && !this.Jm.get()) {
            this.Jm.set(true);
            UN();
            cY cYVar = this.oJ;
            if (cYVar != null && cYVar.ib() != null) {
                UN();
                this.oJ.ib();
                com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ2 = cY.oJ(CacheDirFactory.getICacheDir(this.oJ.rQ()).tB(), this.oJ);
                oJ2.ZYk(this.oJ.edj());
                oJ2.ZYk(this.Ry.getWidth());
                oJ2.tB(this.Ry.getHeight());
                oJ2.tB(this.oJ.pe());
                oJ2.oJ(this.Ln);
                oJ2.oJ(jFA());
                oJ2.oJ(CacheDirFactory.getICacheDir(this.oJ.rQ()).tB());
                oJ(oJ2);
                this.ZYk.oJ(oJ2);
            }
            Handler handler2 = this.nke;
            if (handler2 != null) {
                handler2.sendEmptyMessageDelayed(1, 500L);
            }
            oJ(false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.oJ
    public void ba() {
        tB.InterfaceC0134tB interfaceC0134tB = this.f13075wd;
        if (interfaceC0134tB != null) {
            interfaceC0134tB.g_();
        }
    }

    public void cFZ() {
        View view;
        if (this.f13072si != null && (view = this.ofl) != null && view.getParent() != null && this.oJ != null && this.cFZ == null) {
            ViewParent parent = this.ofl.getParent();
            RelativeLayout ZYk2 = ZYk(this.f13072si);
            if (parent != null && (parent instanceof ViewGroup)) {
                oJ(ZYk2, (ViewGroup) parent, this.ofl);
            }
            this.cFZ = ZYk2;
            if (this.dLZ) {
                cdg.oJ((View) this.kkU, 0);
            }
            if (this.oJ.ib() != null && this.oJ.ib().kkU() != null) {
                com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.oJ.ib().kkU(), this.oJ.ib().tB(), this.oJ.ib().ZYk(), this.f13073so, this.oJ);
            }
            ImageView imageView = this.kkU;
            if (imageView != null) {
                imageView.setClickable(true);
                this.kkU.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        ba.this.tB();
                    }
                });
            }
        }
    }

    public void dLZ() {
        Pfn BTZ;
        tB tBVar = this.ZYk;
        if (tBVar != null && (BTZ = tBVar.BTZ()) != null) {
            BTZ.oJ();
            View tB = BTZ.tB();
            if (tB != null) {
                tB.setVisibility(8);
                if (tB.getParent() != null) {
                    ((ViewGroup) tB.getParent()).removeView(tB);
                }
            }
        }
    }

    public void eZI() {
        com.bytedance.sdk.openadsdk.core.model.ex NTC;
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ2;
        cY cYVar = this.oJ;
        if (cYVar != null && (NTC = cYVar.NTC()) != null && (oJ2 = NTC.oJ()) != null) {
            oJ2.Pfn(this.Ln);
        }
    }

    public double getCurrentPlayTime() {
        tB tBVar = this.ZYk;
        if (tBVar != null) {
            return (tBVar.ba() * 1.0d) / 1000.0d;
        }
        return 0.0d;
    }

    public tB getNativeVideoController() {
        return this.ZYk;
    }

    public boolean jFA() {
        return this.ex;
    }

    public void kkU() {
        tB tBVar = this.ZYk;
        if (tBVar != null) {
            Pfn BTZ = tBVar.BTZ();
            if (BTZ != null) {
                BTZ.oJ();
            }
            UN();
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
    public void oJ() {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        oq();
        if (this.awB) {
            getViewTreeObserver().addOnScrollChangedListener(this.Qu);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Id();
        if (this.awB) {
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnScrollChangedListener(this.Qu);
            }
            ViewGroup viewGroup = this.Ry;
            if (viewGroup != null && this.HyG != null) {
                ViewTreeObserver viewTreeObserver2 = viewGroup.getViewTreeObserver();
                if (viewTreeObserver2.isAlive()) {
                    viewTreeObserver2.removeOnGlobalLayoutListener(this.HyG);
                    this.HyG = null;
                }
            }
        }
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        oq();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ZYk zYk;
        tB tBVar;
        if (!this.QSm && (zYk = this.eZI) != null && (tBVar = this.ZYk) != null) {
            zYk.oJ(tBVar.PiB(), this.ZYk.jFA(), this.ZYk.UN(), this.ZYk.ba(), this.RZ);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        Id();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        tB tBVar;
        tB tBVar2;
        tB tBVar3;
        tB tBVar4;
        if (!"open_ad".equals(this.BTZ)) {
            this.Xe = z10;
            super.onWindowFocusChanged(z10);
            com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(this.oJ, z10);
            Ln();
            if (!this.awB) {
                return;
            }
            if (tb() && (tBVar4 = this.ZYk) != null && tBVar4.PiB()) {
                HL();
                cdg.oJ((View) this.cFZ, 8);
                ZYk(true);
                ex();
                return;
            }
            ZYk();
            if (!Jc() && so() && (tBVar2 = this.ZYk) != null && !tBVar2.cY()) {
                if (this.nke != null) {
                    if (z10 && (tBVar3 = this.ZYk) != null && !tBVar3.PiB()) {
                        this.nke.obtainMessage(1).sendToTarget();
                        return;
                    }
                    IUZ();
                    oJ(false, Id.intValue());
                    return;
                }
                return;
            } else if (!so()) {
                if (!z10 && (tBVar = this.ZYk) != null && tBVar.dLZ() != null && this.ZYk.dLZ().ba()) {
                    IUZ();
                    oJ(false, Id.intValue());
                    return;
                } else if (z10) {
                    this.nke.obtainMessage(1).sendToTarget();
                    return;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        IUZ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        tB tBVar;
        cY cYVar;
        tB tBVar2;
        tB tBVar3;
        super.onWindowVisibilityChanged(i10);
        Ln();
        if (tb() && (tBVar3 = this.ZYk) != null && tBVar3.PiB()) {
            HL();
            cdg.oJ((View) this.cFZ, 8);
            ZYk(true);
            ex();
            return;
        }
        ZYk();
        if (!Jc() && so() && (tBVar = this.ZYk) != null && !tBVar.cY() && (cYVar = this.oJ) != null) {
            if (this.IUZ && cYVar.ib() != null) {
                this.oJ.ib();
                com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ2 = cY.oJ(CacheDirFactory.getICacheDir(this.oJ.rQ()).tB(), this.oJ);
                oJ2.ZYk(this.oJ.edj());
                oJ2.ZYk(this.Ry.getWidth());
                oJ2.tB(this.Ry.getHeight());
                oJ2.tB(this.oJ.pe());
                oJ2.oJ(this.Ln);
                oJ2.oJ(jFA());
                oJ(oJ2);
                this.ZYk.oJ(oJ2);
                this.IUZ = false;
                cdg.oJ((View) this.cFZ, 8);
            }
            if (i10 == 0 && this.awB && this.nke != null && (tBVar2 = this.ZYk) != null && !tBVar2.PiB()) {
                this.nke.obtainMessage(1).sendToTarget();
            }
        }
    }

    public void setAdCreativeClickListener(oJ oJVar) {
        tB tBVar = this.ZYk;
        if (tBVar != null) {
            tBVar.oJ(oJVar);
        }
    }

    public void setControllerStatusCallBack(ZYk zYk) {
        this.eZI = zYk;
    }

    public void setIsAutoPlay(boolean z10) {
        if (this.f13070mu) {
            return;
        }
        int ZYk2 = si.ex().ZYk(this.oJ.uv());
        if (z10 && ZYk2 != 4 && (!Ry.Pfn(this.f13072si) ? !(!Ry.ba(this.f13072si) ? Ry.ex(this.f13072si) : LpP() || nke()) : !LpP())) {
            z10 = false;
        }
        this.RZ = z10;
        tB tBVar = this.ZYk;
        if (tBVar != null) {
            tBVar.ex(z10);
        }
        if (!this.RZ) {
            cFZ();
            RelativeLayout relativeLayout = this.cFZ;
            if (relativeLayout != null) {
                cdg.oJ((View) relativeLayout, 0);
                cY cYVar = this.oJ;
                if (cYVar != null && cYVar.ib() != null) {
                    com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.oJ.ib().kkU(), this.oJ.ib().tB(), this.oJ.ib().ZYk(), this.f13073so, this.oJ);
                }
            }
        } else {
            cdg.oJ((View) this.cFZ, 8);
        }
        this.f13070mu = true;
    }

    public void setNeedNativeVideoPlayBtnVisible(boolean z10) {
        this.dLZ = z10;
    }

    public void setNeedSelfManagerVideo(boolean z10) {
        this.awB = z10;
    }

    public void setVideoAdClickListenerTTNativeAd(PAGNativeAd pAGNativeAd) {
        tB tBVar = this.ZYk;
        if (tBVar != null) {
            tBVar.oJ(pAGNativeAd);
        }
    }

    public void setVideoAdInteractionListener(tB.InterfaceC0134tB interfaceC0134tB) {
        this.f13075wd = interfaceC0134tB;
    }

    public void setVideoAdLoadListener(tB.ex exVar) {
        tB tBVar = this.ZYk;
        if (tBVar != null) {
            tBVar.oJ(exVar);
        }
    }

    public void setVideoCacheUrl(String str) {
        this.f13071oq = str;
    }

    public void setVideoPlayCallback(com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ZYk zYk) {
        tB tBVar = this.ZYk;
        if (tBVar != null) {
            tBVar.oJ(zYk);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        if (i10 == 4 || i10 == 8) {
            cY();
        }
    }

    public boolean so() {
        return this.RZ;
    }

    public ba(@NonNull Context context, @NonNull cY cYVar, String str, boolean z10, boolean z11, cFZ cfz) {
        this(context, cYVar, false, str, z10, z11, cfz);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void tB() {
        if (PiB()) {
            return;
        }
        awB();
    }

    public ba(@NonNull Context context, @NonNull cY cYVar, cFZ cfz) {
        this(context, cYVar, false, cfz);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ZYk() {
        cY cYVar = this.oJ;
        if (cYVar == null) {
            return;
        }
        int uv = cYVar.uv();
        int ZYk2 = si.ex().ZYk(uv);
        int tB = Ry.tB(si.oJ());
        if (ZYk2 == 1) {
            this.RZ = HyG.ex(tB);
        } else if (ZYk2 == 2) {
            this.RZ = HyG.Pfn(tB) || HyG.ex(tB) || HyG.ba(tB);
        } else if (ZYk2 == 3) {
            this.RZ = false;
        } else if (ZYk2 == 4) {
            this.WcQ = true;
        } else if (ZYk2 == 5) {
            this.RZ = HyG.ex(tB) || HyG.ba(tB);
        }
        if (!this.QSm) {
            if (!this.Pfn || !jr.ZYk(this.BTZ)) {
                this.ex = si.ex().ZYk(String.valueOf(uv));
            }
        } else {
            this.ex = false;
        }
        if ("open_ad".equals(this.BTZ)) {
            this.RZ = true;
            this.ex = true;
        }
        if (jr.ZYk(this.BTZ)) {
            this.ex = true;
        }
        tB tBVar = this.ZYk;
        if (tBVar != null) {
            tBVar.ex(this.RZ);
        }
        this.Pfn = true;
    }

    public ba(@NonNull Context context, @NonNull cY cYVar, boolean z10, String str, boolean z11, boolean z12, cFZ cfz) {
        super(context);
        this.RZ = true;
        this.ex = true;
        this.QSm = false;
        this.Pfn = false;
        this.Xe = true;
        this.f13074tb = false;
        this.HL = true;
        this.dLZ = true;
        this.BTZ = "embeded_ad";
        this.PiB = 50;
        this.IUZ = true;
        this.LpP = false;
        this.nke = new IUZ(WcQ.ZYk().getLooper(), this);
        this.f13070mu = false;
        this.XAo = Build.MODEL;
        this.WcQ = false;
        this.awB = true;
        this.cdg = new AtomicBoolean(false);
        this.Rl = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.4
            @Override // java.lang.Runnable
            public void run() {
                ba baVar = ba.this;
                baVar.oJ(baVar.Jc, ba.Id.intValue());
            }
        };
        this.Jm = new AtomicBoolean(false);
        this.Qu = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.6
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                ba.this.Ry();
            }
        };
        try {
            if (cYVar.zF()) {
                this.f13069jr = CacheDirFactory.getICacheDir(0).ZYk();
            }
        } catch (Throwable unused) {
        }
        if (cfz != null) {
            this.f13068ba = cfz;
        }
        this.BTZ = str;
        this.f13072si = context;
        this.oJ = cYVar;
        this.QSm = z10;
        setContentDescription("NativeVideoTsView");
        this.f13074tb = z11;
        this.HL = z12;
        ZYk();
        Pfn();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
    public void oJ(long j10, int i10) {
        tB.InterfaceC0134tB interfaceC0134tB = this.f13075wd;
        if (interfaceC0134tB != null) {
            interfaceC0134tB.j_();
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
    public void oJ(long j10, long j11) {
        tB.InterfaceC0134tB interfaceC0134tB = this.f13075wd;
        if (interfaceC0134tB != null) {
            interfaceC0134tB.oJ(j10, j11);
        }
    }

    private View oJ(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        new FrameLayout.LayoutParams(-1, -1).gravity = 17;
        frameLayout.setVisibility(8);
        this.Ry = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout2.setLayoutParams(layoutParams);
        frameLayout.addView(frameLayout2);
        this.tB = frameLayout2;
        View view = new View(context);
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(view);
        this.ofl = view;
        return frameLayout;
    }

    private RelativeLayout ZYk(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(context);
        cfz.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        cfz.setVisibility(8);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        exVar.setLayoutParams(layoutParams);
        exVar.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f13073so = exVar;
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        exVar2.setLayoutParams(layoutParams2);
        exVar2.setVisibility(8);
        exVar2.setBackground(com.bytedance.sdk.component.utils.cY.tB(context, "tt_new_play_video"));
        this.kkU = exVar2;
        cfz.addView(exVar);
        cfz.addView(exVar2);
        return cfz;
    }

    private void oJ(View view, ViewGroup viewGroup, View view2) {
        int indexOfChild = viewGroup.indexOfChild(view2);
        viewGroup.removeViewInLayout(view2);
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, indexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, indexOfChild);
        }
    }

    public boolean oJ(long j10, boolean z10, boolean z11) {
        boolean z12 = false;
        this.Ry.setVisibility(0);
        this.Ln = j10;
        if (Jc()) {
            this.ZYk.oJ(false);
            cY cYVar = this.oJ;
            if (cYVar != null && cYVar.ib() != null) {
                com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ2 = cY.oJ(CacheDirFactory.getICacheDir(this.oJ.rQ()).tB(), this.oJ);
                oJ2.ZYk(this.oJ.edj());
                oJ2.ZYk(this.Ry.getWidth());
                oJ2.tB(this.Ry.getHeight());
                oJ2.tB(this.oJ.pe());
                oJ2.oJ(j10);
                oJ2.oJ(jFA());
                oJ(oJ2);
                if (z11) {
                    this.ZYk.ZYk(oJ2);
                    return true;
                }
                z12 = this.ZYk.oJ(oJ2);
            }
            int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
            if (((i10 > 0 && !z10 && !z11) || (i10 > 0 && z10)) && this.ZYk != null) {
                awB.oJ oJVar = new awB.oJ();
                oJVar.ZYk(this.ZYk.ba());
                oJVar.ex(this.ZYk.jFA());
                oJVar.tB(this.ZYk.cFZ());
                oJVar.tB(this.ZYk.XAo());
                com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.ZYk(this.ZYk.BTZ(), oJVar);
            }
            return z12;
        }
        return true;
    }

    public void ZYk(boolean z10) {
        tB tBVar = this.ZYk;
        if (tBVar != null) {
            tBVar.ZYk(z10);
            Pfn BTZ = this.ZYk.BTZ();
            if (BTZ != null) {
                BTZ.ZYk();
                View tB = BTZ.tB();
                if (tB != null) {
                    if (tB.getParent() != null) {
                        ((ViewGroup) tB.getParent()).removeView(tB);
                    }
                    tB.setVisibility(0);
                    addView(tB);
                    BTZ.oJ((Pfn) this.oJ, new WeakReference<>(this.f13072si), false);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        if (message.what == 1) {
            jr();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(boolean z10, int i10) {
        if (this.oJ == null || this.ZYk == null) {
            return;
        }
        boolean tb2 = tb();
        HL();
        if (tb2 && this.ZYk.PiB()) {
            this.ZYk.PiB();
            ZYk(true);
            ex();
        } else if (z10 && this.Xe && !this.ZYk.PiB() && !this.ZYk.cY()) {
            if (this.ZYk.dLZ() != null && this.ZYk.dLZ().cFZ()) {
                if (this.RZ || i10 == 1) {
                    tB tBVar = this.ZYk;
                    if (tBVar != null) {
                        oJ(tBVar.jr(), "changeVideoStatus");
                    }
                    if ("ALP-AL00".equals(this.XAo)) {
                        this.ZYk.tB();
                    } else {
                        if (!jFA.ZYk().awB()) {
                            tb2 = true;
                        }
                        this.ZYk.cFZ(tb2);
                    }
                    oJ(false);
                    tB.InterfaceC0134tB interfaceC0134tB = this.f13075wd;
                    if (interfaceC0134tB != null) {
                        interfaceC0134tB.i_();
                    }
                }
            } else if (this.RZ && this.ZYk.dLZ() == null) {
                if (!this.cdg.get()) {
                    this.cdg.set(true);
                }
                this.Jm.set(false);
                oq();
            }
        } else if (this.ZYk.dLZ() == null || !this.ZYk.dLZ().ba()) {
        } else {
            this.ZYk.ZYk();
            oJ(true);
            tB.InterfaceC0134tB interfaceC0134tB2 = this.f13075wd;
            if (interfaceC0134tB2 != null) {
                interfaceC0134tB2.h_();
            }
        }
    }

    public void oJ(boolean z10, String str) {
        if (jr.ZYk(this.BTZ)) {
            z10 = true;
        }
        this.ex = z10;
        tB tBVar = this.ZYk;
        if (tBVar != null) {
            tBVar.oJ(z10, str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB.oJ
    public void oJ(int i10) {
        ZYk();
    }

    protected void oJ(boolean z10) {
        if (this.jFA == null) {
            this.jFA = new ImageView(getContext());
            if (jFA.ZYk().eZI() != null) {
                this.jFA.setImageBitmap(jFA.ZYk().eZI());
            } else {
                this.jFA.setImageResource(com.bytedance.sdk.component.utils.cY.ex(si.oJ(), "tt_new_play_video"));
            }
            this.jFA.setScaleType(ImageView.ScaleType.FIT_XY);
            int ZYk2 = cdg.ZYk(getContext(), this.PiB);
            int ZYk3 = cdg.ZYk(getContext(), 10.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(ZYk2, ZYk2);
            layoutParams.gravity = 17;
            layoutParams.rightMargin = ZYk3;
            layoutParams.bottomMargin = ZYk3;
            this.Ry.addView(this.jFA, layoutParams);
            this.jFA.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ba.this.awB();
                }
            });
        }
        if (z10) {
            this.jFA.setVisibility(0);
        } else {
            this.jFA.setVisibility(8);
        }
    }

    public com.bytedance.sdk.openadsdk.core.dLZ.ba oJ(List<Pair<View, FriendlyObstructionPurpose>> list) {
        if (this.ZYk != null) {
            return this.ZYk.oJ(this, list);
        }
        return null;
    }

    private void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        try {
            if (this.oJ.zF()) {
                tBVar.oJ(this.f13069jr);
            }
        } catch (Throwable unused) {
        }
    }
}
