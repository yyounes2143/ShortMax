package com.bytedance.sdk.openadsdk.core.BTZ.oJ;

import android.app.Activity;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.os.Message;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bykv.vk.openvk.oJ.oJ.oJ.ba.ex;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn;
import com.bytedance.sdk.openadsdk.core.dLZ.ba;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.RZ;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB;
import com.bytedance.sdk.openadsdk.ex.cFZ;
import com.bytedance.sdk.openadsdk.utils.HyG;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public abstract class oJ implements tB, IUZ.oJ, com.bytedance.sdk.openadsdk.core.BTZ.ZYk.oJ {
    protected WeakReference<tB.ZYk> HL;
    protected tB.oJ IUZ;
    protected boolean Id;
    protected ba Ln;
    protected boolean LpP;
    protected SurfaceTexture Pfn;
    protected long UN;
    private long XAo;
    protected boolean Xe;

    /* renamed from: ba  reason: collision with root package name */
    protected com.bytedance.sdk.openadsdk.core.BTZ.ex.tB f13080ba;
    protected Pfn cFZ;
    @NonNull
    protected final Context dLZ;
    protected boolean eZI;
    protected SurfaceHolder ex;

    /* renamed from: jr  reason: collision with root package name */
    protected ZYk f13081jr;
    protected long nke;
    @NonNull

    /* renamed from: so  reason: collision with root package name */
    protected final cY f13085so;

    /* renamed from: tb  reason: collision with root package name */
    protected final ViewGroup f13086tb;
    protected String oJ = "TTAD.VideoController";
    protected final int ZYk = 100;
    protected final IUZ tB = new IUZ(Looper.getMainLooper(), this);
    protected long jFA = 0;
    protected long kkU = 0;
    protected final List<Runnable> BTZ = new ArrayList();
    protected boolean PiB = false;
    protected boolean WcQ = false;
    protected boolean awB = true;

    /* renamed from: si  reason: collision with root package name */
    protected boolean f13084si = false;
    protected boolean Ry = false;
    protected boolean RZ = false;
    protected AtomicBoolean QSm = new AtomicBoolean(false);

    /* renamed from: oq  reason: collision with root package name */
    protected AtomicBoolean f13083oq = new AtomicBoolean(false);
    protected boolean cY = true;
    protected boolean Jc = false;

    /* renamed from: mu  reason: collision with root package name */
    protected Runnable f13082mu = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ.1
        @Override // java.lang.Runnable
        public void run() {
            boolean z10 = oJ.this.PiB;
            oJ.this.QSm();
        }
    };
    private long ofl = 0;

    /* renamed from: wd  reason: collision with root package name */
    private boolean f13087wd = true;
    private int HyG = 1;
    private final AtomicBoolean cdg = new AtomicBoolean(false);

    /* renamed from: com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ$6  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[RZ.oJ.values().length];
            oJ = iArr;
            try {
                iArr[RZ.oJ.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[RZ.oJ.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                oJ[RZ.oJ.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public oJ(Context context, @NonNull cY cYVar, ViewGroup viewGroup) {
        this.f13085so = cYVar;
        this.dLZ = context;
        this.f13086tb = viewGroup;
        this.oJ += hashCode();
    }

    private boolean eZI() {
        Pfn pfn = this.cFZ;
        if (pfn != null) {
            return pfn.PiB() instanceof ex;
        }
        return false;
    }

    private void ofl() {
        Pfn pfn = this.cFZ;
        if (pfn != null) {
            pfn.ex(0);
            this.cFZ.oJ(false, false);
            this.cFZ.tB(false);
            this.cFZ.Pfn();
            this.cFZ.cFZ();
        }
    }

    public final boolean HL() {
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null && tBVar.ba()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void IUZ() {
        if (!cY.ba(this.f13085so) || !this.f13083oq.compareAndSet(false, true)) {
            return;
        }
        com.bytedance.sdk.openadsdk.si.tB.ZYk(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ.5
            @Override // com.bytedance.sdk.openadsdk.si.ex
            public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                try {
                    oJVar.ZYk("video_player");
                    oJVar.ex(HyG.oJ(oJ.this.f13085so));
                    oJVar.oJ(BuildConfig.VERSION_NAME);
                } catch (Throwable unused) {
                }
                return oJVar;
            }
        });
    }

    public boolean Id() {
        return this.awB;
    }

    public int Jc() {
        return this.HyG;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Ln() {
        this.Jc = true;
        awB.oJ oJVar = new awB.oJ();
        oJVar.ZYk(ba());
        oJVar.ex(jFA() / Jc());
        oJVar.tB(cFZ());
        oJVar.tB(this.LpP);
        com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.ZYk(BTZ(), oJVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void LpP() {
        this.Jc = true;
        awB.oJ oJVar = new awB.oJ();
        oJVar.ZYk(ba());
        oJVar.ex(jFA() / Jc());
        oJVar.tB(cFZ());
        oJVar.oJ(si());
        oJVar.tB(this.LpP);
        com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(this.cFZ, oJVar);
    }

    public void Pfn(boolean z10) {
        this.cY = z10;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public boolean PiB() {
        return this.WcQ;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void QSm() {
        this.tB.postAtFrontOfQueue(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ.3
            @Override // java.lang.Runnable
            public void run() {
                oJ oJVar = oJ.this;
                if (oJVar.f13080ba != null) {
                    boolean z10 = oJVar.PiB;
                    oJ.this.f13080ba.kkU();
                }
            }
        });
    }

    protected void RZ() {
        if (this.BTZ.isEmpty()) {
            return;
        }
        Iterator it = new ArrayList(this.BTZ).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.BTZ.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Ry() {
        if (this.f13080ba == null) {
            return;
        }
        if (eZI()) {
            SurfaceTexture surfaceTexture = this.Pfn;
            if (surfaceTexture != null && surfaceTexture != this.f13080ba.QSm()) {
                this.f13080ba.oJ(this.Pfn);
                return;
            }
            return;
        }
        SurfaceHolder surfaceHolder = this.ex;
        if (surfaceHolder != null && surfaceHolder != this.f13080ba.RZ()) {
            this.f13080ba.oJ(this.ex);
        }
    }

    public final long UN() {
        return ba() + cFZ();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public final boolean WcQ() {
        return this.Xe;
    }

    public boolean XAo() {
        return this.LpP;
    }

    public boolean Xe() {
        return this.f13087wd;
    }

    public void ZYk(long j10) {
        this.jFA = j10;
        this.kkU = Math.max(this.kkU, j10);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public boolean awB() {
        return true;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public long ba() {
        return this.jFA;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public final long cFZ() {
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar == null) {
            return 0L;
        }
        return tBVar.awB();
    }

    public boolean cY() {
        return this.f13084si;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public com.bykv.vk.openvk.oJ.oJ.oJ.oJ dLZ() {
        return this.f13080ba;
    }

    public void ex(long j10) {
        this.UN = j10;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public final long jFA() {
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar == null) {
            return 0L;
        }
        return tBVar.si();
    }

    public boolean jr() {
        return this.eZI;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public final int kkU() {
        return com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ(this.kkU, this.UN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void mu() {
        com.bytedance.sdk.openadsdk.ex.oJ.ex.oJ(com.bytedance.sdk.openadsdk.jr.oJ.oJ(this.f13085so.WGj(), true, this.f13085so), 5, this.f13085so.edj());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void nke() {
        this.Jc = true;
        com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(this.f13085so, this.cFZ, this.f13081jr);
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    /* renamed from: oq */
    public final Pfn BTZ() {
        return this.cFZ;
    }

    public long si() {
        return this.nke;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public final int so() {
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar == null) {
            return 0;
        }
        return tBVar.eZI();
    }

    public void tB(long j10) {
        this.ofl = j10;
    }

    public final boolean tb() {
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null && !tBVar.ZYk()) {
            return false;
        }
        return true;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public final void Pfn(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, View view) {
        oJ(zYk, view, false);
    }

    public final void ex(boolean z10) {
        this.f13087wd = z10;
    }

    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, View view, boolean z10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void tB(boolean z10) {
        this.RZ = z10;
    }

    public final void Pfn(long j10) {
        this.jFA = j10;
        this.kkU = Math.max(this.kkU, j10);
        Pfn pfn = this.cFZ;
        if (pfn != null) {
            pfn.oJ();
        }
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null) {
            tBVar.oJ(true, this.jFA, this.eZI);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ZYk(Runnable runnable) {
        this.BTZ.add(runnable);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public final void ex(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, View view) {
        if (this.RZ) {
            tB(false);
            Pfn pfn = this.cFZ;
            if (pfn != null) {
                pfn.ZYk(this.f13086tb);
            }
            oJ(1);
            return;
        }
        oJ(true, 3);
    }

    public void oJ(tB.ex exVar) {
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public final void tB(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, View view) {
        Pfn pfn = this.cFZ;
        if (pfn != null) {
            pfn.jFA();
        }
        oJ(true, 3);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, SurfaceHolder surfaceHolder) {
        this.PiB = false;
        this.ex = null;
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null) {
            tBVar.oJ(false);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public boolean oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        if (cY.ba(this.f13085so)) {
            com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ.2
                @Override // com.bytedance.sdk.openadsdk.si.ex
                public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                    try {
                        oJVar.ZYk("video_player");
                        oJVar.ex(HyG.oJ(oJ.this.f13085so));
                        oJVar.oJ(BuildConfig.VERSION_NAME);
                    } catch (Throwable unused) {
                    }
                    return oJVar;
                }
            });
            return false;
        }
        return false;
    }

    private boolean tB(int i10) {
        return this.cFZ.ZYk(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(Runnable runnable) {
        if (this.cFZ.Id() && this.PiB) {
            runnable.run();
        } else {
            ZYk(runnable);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, SurfaceTexture surfaceTexture) {
        this.PiB = false;
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null) {
            tBVar.oJ(false);
        }
        this.Pfn = null;
        RZ();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, SurfaceHolder surfaceHolder) {
        this.PiB = true;
        this.ex = surfaceHolder;
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar == null) {
            return;
        }
        tBVar.oJ(surfaceHolder);
        RZ();
    }

    public final void ZYk(boolean z10) {
        this.WcQ = z10;
    }

    public void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        ZYk zYk = (ZYk) tBVar;
        this.f13081jr = zYk;
        this.eZI = zYk.dLZ();
        tBVar.ex(String.valueOf(this.f13085so.uv()));
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, SurfaceTexture surfaceTexture) {
        this.PiB = true;
        this.Pfn = surfaceTexture;
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null) {
            tBVar.oJ(surfaceTexture);
            this.f13080ba.oJ(this.PiB);
        }
        RZ();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public final void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, View view) {
        ZYk(zYk, view, false, false);
    }

    public final void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, View view, boolean z10, boolean z11) {
        tB(!this.RZ);
        Context context = this.dLZ;
        if (context != null && (context instanceof Activity)) {
            if (this.RZ) {
                oJ(z10 ? 8 : 0);
                Pfn pfn = this.cFZ;
                if (pfn != null) {
                    pfn.oJ(this.f13086tb);
                    this.cFZ.tB(false);
                }
            } else {
                oJ(1);
                Pfn pfn2 = this.cFZ;
                if (pfn2 != null) {
                    pfn2.ZYk(this.f13086tb);
                    this.cFZ.tB(false);
                }
            }
            WeakReference<tB.ZYk> weakReference = this.HL;
            tB.ZYk zYk2 = weakReference != null ? weakReference.get() : null;
            if (zYk2 != null) {
                zYk2.oJ(this.RZ);
            }
        }
    }

    public void oJ(boolean z10) {
        this.awB = z10;
        Pfn pfn = this.cFZ;
        if (pfn != null) {
            pfn.ex(z10);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public final void oJ(final boolean z10, String str) {
        this.eZI = z10;
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null) {
            tBVar.ZYk(z10);
            com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(this.cFZ, z10, str);
        }
        if (this.Ln != null) {
            if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
                this.Ln.oJ(z10);
            } else {
                this.tB.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.oJ.oJ.4
                    @Override // java.lang.Runnable
                    public void run() {
                        oJ.this.Ln.oJ(z10);
                    }
                });
            }
        }
    }

    public final void oJ(tB.ZYk zYk) {
        this.HL = new WeakReference<>(zYk);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public final void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, int i10) {
        Pfn pfn = this.cFZ;
        if (pfn != null) {
            pfn.ba();
        }
    }

    public final void oJ(int i10) {
        Context context = this.dLZ;
        if (context == null) {
            return;
        }
        boolean z10 = i10 == 0 || i10 == 8;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            try {
                activity.setRequestedOrientation(i10);
            } catch (Throwable unused) {
            }
            if (!z10) {
                activity.getWindow().setFlags(1024, 1024);
            } else {
                activity.getWindow().clearFlags(1024);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ZYk(cFZ cfz) {
        this.Jc = true;
        awB.oJ oJVar = new awB.oJ();
        oJVar.ZYk(ba());
        oJVar.ex(jFA() / Jc());
        oJVar.tB(cFZ());
        oJVar.ex(so());
        oJVar.oJ(si());
        oJVar.tB(this.LpP);
        com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.ZYk(this.cFZ, oJVar, cfz);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public final void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, View view, boolean z10, boolean z11) {
        if (this.awB) {
            ZYk();
        }
        if (z10 && !this.awB && !tb()) {
            this.cFZ.ZYk(!HL(), false);
            this.cFZ.oJ(z11, true, false);
        }
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null && tBVar.ba()) {
            this.cFZ.ba();
            this.cFZ.Pfn();
            return;
        }
        this.cFZ.ba();
    }

    public void ZYk(int i10) {
        this.HyG = i10;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public final void ZYk() {
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null) {
            tBVar.dLZ();
        }
        if (this.Id || !this.QSm.get()) {
            return;
        }
        LpP();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public final void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, int i10, boolean z10) {
        if (this.dLZ == null) {
            return;
        }
        long j10 = this.UN;
        long j11 = (((float) (i10 * j10)) * 1.0f) / 100.0f;
        if (j10 > 0) {
            this.XAo = (int) j11;
        } else {
            this.XAo = 0L;
        }
        Pfn pfn = this.cFZ;
        if (pfn != null) {
            pfn.oJ(this.XAo);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.oJ
    public final void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk, int i10) {
        if (this.f13080ba == null) {
            return;
        }
        oJ(this.XAo, tB(i10));
    }

    private void oJ(long j10, boolean z10) {
        if (this.f13080ba == null) {
            return;
        }
        if (z10) {
            ofl();
        }
        this.f13080ba.oJ(j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void oJ(cFZ cfz) {
        boolean z10 = false;
        if (this.QSm.compareAndSet(false, true)) {
            this.Jc = true;
            ba baVar = this.Ln;
            if (baVar != null) {
                baVar.oJ(jFA(), jr());
            }
            awB.oJ oJVar = new awB.oJ();
            oJVar.oJ(Xe());
            oJVar.ex(jFA());
            com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
            if (tBVar != null && tBVar.WcQ()) {
                z10 = true;
            }
            oJVar.ZYk(z10);
            oJVar.tB(this.LpP);
            com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(si.oJ(), this.cFZ, oJVar, cfz);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ oJVar) {
        this.Jc = true;
        awB.oJ oJVar2 = new awB.oJ();
        oJVar2.tB(cFZ());
        oJVar2.ex(jFA() / Jc());
        oJVar2.ZYk(ba());
        oJVar2.oJ(oJVar);
        oJVar2.tB(this.LpP);
        com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.tB(BTZ(), oJVar2);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public final void oJ(tB.oJ oJVar) {
        this.IUZ = oJVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.oJ
    public final void oJ(RZ.oJ oJVar, String str) {
        int i10 = AnonymousClass6.oJ[oJVar.ordinal()];
        if (i10 == 1) {
            ZYk();
        } else if (i10 == 2) {
            ex();
        } else if (i10 != 3) {
        } else {
            tB();
            this.f13084si = false;
            this.Ry = true;
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void oJ(long j10) {
        this.nke = j10;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public boolean oJ(float f10) {
        com.bytedance.sdk.openadsdk.core.BTZ.ex.tB tBVar = this.f13080ba;
        if (tBVar != null) {
            return tBVar.oJ(f10);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(long j10, long j11) {
        if (!this.cdg.get() && com.bytedance.sdk.openadsdk.ba.oJ.oJ().tB() && (j10 * 1.0d) / j11 > 0.3d) {
            this.cdg.set(true);
            if (this.f13085so != null) {
                com.bytedance.sdk.openadsdk.ba.ZYk.oJ().oJ("videoPercent30", this.f13085so);
            }
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB
    public void oJ(SurfaceTexture surfaceTexture) {
        this.LpP = true;
    }
}
