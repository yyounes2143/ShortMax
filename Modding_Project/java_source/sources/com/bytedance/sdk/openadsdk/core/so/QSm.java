package com.bytedance.sdk.openadsdk.core.so;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.adexpress.ZYk.PiB;
import com.bytedance.sdk.component.adexpress.ZYk.kkU;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.XAo;
import com.bytedance.sdk.openadsdk.core.ZYk.oJ;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.mu;
import com.bytedance.sdk.openadsdk.core.tB.cFZ;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class QSm extends com.bytedance.sdk.openadsdk.core.Pfn.tB implements com.bytedance.sdk.component.adexpress.ZYk.awB, com.bytedance.sdk.component.adexpress.ZYk.so, com.bytedance.sdk.component.adexpress.dynamic.ex, oJ.InterfaceC0202oJ, awB {
    protected com.bytedance.sdk.openadsdk.core.model.cY BTZ;
    private int Dex;
    protected com.bytedance.sdk.component.adexpress.ZYk.ZYk HL;
    private final AtomicBoolean HyG;
    public com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> IUZ;
    public boolean Id;
    private String Jc;
    private final Runnable Jm;
    private com.bytedance.sdk.component.adexpress.ZYk.ba LS;
    private float Ln;
    private float LpP;
    private float MoK;
    private com.bytedance.sdk.openadsdk.core.kkU.ZYk.cFZ NO;
    private PAGExpressAdWrapperListener Pfn;
    public FrameLayout PiB;
    protected HashSet<String> QSm;
    private final Runnable Qu;
    protected String RZ;
    private final ViewTreeObserver.OnScrollChangedListener Rl;
    protected int Ry;
    private float TA;
    private float UK;
    private com.bytedance.sdk.openadsdk.core.kkU.tB.ZYk UN;
    private float VSB;
    protected boolean WcQ;
    private cFZ.oJ XAo;
    public com.bytedance.sdk.openadsdk.ex.cFZ Xe;
    private jr Yg;
    private int ZYk;
    protected boolean awB;

    /* renamed from: ba  reason: collision with root package name */
    private so f13258ba;
    private ThemeStatusBroadcastReceiver bgF;
    private jFA cFZ;
    int cY;
    private tB cdg;
    protected AdSlot dLZ;
    protected com.bytedance.sdk.component.adexpress.ZYk.tB eZI;
    private TTDislikeDialogAbstract ex;
    private com.bytedance.sdk.openadsdk.core.kkU.ba.tB jB;
    protected final Context jFA;
    private long jXJ;

    /* renamed from: jr  reason: collision with root package name */
    boolean f13259jr;
    protected String kkU;
    private kkU.oJ lY;

    /* renamed from: mu  reason: collision with root package name */
    private String f13260mu;
    private List<com.bytedance.sdk.component.adexpress.ZYk.kkU> mwH;
    private final Runnable nQI;
    private com.bytedance.sdk.openadsdk.ex.ex.Pfn nke;
    private final SparseArray<tB.oJ> oIC;
    private boolean oJ;
    private com.bytedance.sdk.component.adexpress.ZYk.eZI oTd;
    private boolean ofl;

    /* renamed from: oq  reason: collision with root package name */
    protected ViewGroup f13261oq;
    private com.bytedance.sdk.component.adexpress.ZYk.PiB sH;

    /* renamed from: si  reason: collision with root package name */
    boolean f13262si;

    /* renamed from: so  reason: collision with root package name */
    private String f13263so;
    private com.bytedance.sdk.openadsdk.tB.tB tB;

    /* renamed from: tb  reason: collision with root package name */
    long f13264tb;
    private com.bytedance.sdk.openadsdk.core.tB.jFA uvK;

    /* renamed from: wd  reason: collision with root package name */
    private Id f13265wd;
    private com.bytedance.sdk.component.adexpress.ZYk.jFA yz;

    public QSm(@NonNull Context context, com.bytedance.sdk.openadsdk.core.model.cY cYVar, AdSlot adSlot, String str) {
        super(context);
        this.oJ = true;
        this.ZYk = 0;
        this.kkU = "embeded_ad";
        this.f13263so = null;
        this.awB = false;
        this.f13262si = true;
        this.Ry = -1;
        this.Jc = "";
        this.Id = false;
        this.ofl = true;
        this.cY = -1;
        this.Xe = new com.bytedance.sdk.openadsdk.ex.cFZ();
        this.f13264tb = 0L;
        this.HyG = new AtomicBoolean(false);
        this.Rl = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.so.QSm.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                QSm qSm = QSm.this;
                if (qSm.f13262si && qSm.jFA()) {
                    QSm.this.tb();
                    QSm qSm2 = QSm.this;
                    qSm2.removeCallbacks(qSm2.Jm);
                    QSm qSm3 = QSm.this;
                    qSm3.postDelayed(qSm3.Jm, 500L);
                }
            }
        };
        this.Jm = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.QSm.2
            @Override // java.lang.Runnable
            public void run() {
                if (mu.oJ(QSm.this, 0, 5, false)) {
                    QSm qSm = QSm.this;
                    qSm.ba(qSm.getVisibility());
                    return;
                }
                QSm.this.ba(8);
            }
        };
        this.Qu = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.QSm.3
            @Override // java.lang.Runnable
            public void run() {
                QSm.this.ba(0);
            }
        };
        this.nQI = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.QSm.4
            @Override // java.lang.Runnable
            public void run() {
                QSm.this.ba(8);
            }
        };
        this.Dex = 8;
        this.oIC = new SparseArray<>();
        this.MoK = -1.0f;
        this.TA = -1.0f;
        this.UK = -1.0f;
        this.VSB = -1.0f;
        this.jXJ = 0L;
        this.kkU = str;
        this.jFA = context;
        this.BTZ = cYVar;
        this.dLZ = adSlot;
        this.Id = false;
        cFZ();
    }

    private boolean HL() {
        return com.bytedance.sdk.openadsdk.core.model.cY.Pfn(this.BTZ);
    }

    private void IUZ() {
        List<com.bytedance.sdk.component.adexpress.ZYk.kkU> list = this.mwH;
        if (list == null) {
            return;
        }
        Iterator<com.bytedance.sdk.component.adexpress.ZYk.kkU> it = list.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    private void Ln() {
        List<com.bytedance.sdk.component.adexpress.ZYk.kkU> list = this.mwH;
        if (list == null) {
            return;
        }
        Iterator<com.bytedance.sdk.component.adexpress.ZYk.kkU> it = list.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    private boolean LpP() {
        if (!TextUtils.equals(this.kkU, "fullscreen_interstitial_ad") && !TextUtils.equals(this.kkU, "rewarded_video") && !TextUtils.equals("open_ad", this.kkU) && !jr.ZYk(this.kkU) && !TextUtils.equals(this.kkU, "embeded_ad")) {
            return false;
        }
        return true;
    }

    private void PiB() {
        cY.oJ PdF = this.BTZ.PdF();
        if (TextUtils.equals(this.kkU, "embeded_ad") && PdF != null) {
            String kkU = PdF.kkU();
            if (!TextUtils.isEmpty(kkU)) {
                try {
                    JSONObject jSONObject = new JSONObject(kkU);
                    int optInt = jSONObject.optInt("width");
                    int optInt2 = jSONObject.optInt("height");
                    if (optInt != 0 && optInt2 != 0) {
                        this.LpP = optInt2;
                        this.Ln = optInt;
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(26:1|2|3|(2:5|(22:7|8|9|10|(2:12|(13:14|15|16|(2:22|23)|47|25|(1:27)(1:45)|28|(1:44)|32|(3:40|(1:42)|43)(1:36)|37|38))|50|15|16|(4:18|20|22|23)|47|25|(0)(0)|28|(1:30)|44|32|(1:34)|40|(0)|43|37|38))|53|8|9|10|(0)|50|15|16|(0)|47|25|(0)(0)|28|(0)|44|32|(0)|40|(0)|43|37|38) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007d, code lost:
        if (r12.BTZ.TxP() != 3) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
        r7 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0049 A[Catch: Exception -> 0x0081, TRY_LEAVE, TryCatch #2 {Exception -> 0x0081, blocks: (B:11:0x0041, B:13:0x0049), top: B:56:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0064 A[Catch: Exception -> 0x0082, TryCatch #1 {Exception -> 0x0082, blocks: (B:17:0x0058, B:19:0x0064, B:21:0x006d, B:23:0x0076), top: B:54:0x0058 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void WcQ() {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.so.QSm.WcQ():void");
    }

    private void Xe() {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.BTZ;
        if (cYVar != null && cYVar.qnr() == 1 && this.BTZ.oIC() != 2) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ba.oJ.oJ oJVar = new com.bytedance.sdk.openadsdk.core.ba.oJ.oJ();
        int i10 = this.ZYk;
        if (i10 != 0) {
            if (i10 != 3) {
                if (i10 != 7) {
                    if (i10 != 9) {
                        if (i10 == 10) {
                            com.bytedance.sdk.openadsdk.core.kkU.ba.ba baVar = new com.bytedance.sdk.openadsdk.core.kkU.ba.ba(this.jFA, this.BTZ, this.Id, (com.bytedance.sdk.openadsdk.core.kkU.ba.oJ) this.sH, this);
                            this.jB = baVar;
                            com.bytedance.sdk.openadsdk.core.kkU.ZYk.cFZ cfz = new com.bytedance.sdk.openadsdk.core.kkU.ZYk.cFZ(this.jFA, baVar, this, this.sH);
                            this.NO = cfz;
                            cfz.oJ(this);
                            this.mwH.add(this.NO);
                            return;
                        }
                        return;
                    }
                } else {
                    com.bytedance.sdk.openadsdk.core.kkU.ba.tB tBVar = new com.bytedance.sdk.openadsdk.core.kkU.ba.tB(this.jFA, this.BTZ, this.Id, (com.bytedance.sdk.openadsdk.core.kkU.ba.oJ) this.sH, this);
                    this.jB = tBVar;
                    com.bytedance.sdk.openadsdk.core.kkU.ZYk.cFZ cfz2 = new com.bytedance.sdk.openadsdk.core.kkU.ZYk.cFZ(this.jFA, tBVar, this, this.sH);
                    this.NO = cfz2;
                    cfz2.oJ(this);
                    this.mwH.add(this.NO);
                    return;
                }
            } else {
                com.bytedance.sdk.component.adexpress.dynamic.Pfn.cFZ cfz3 = new com.bytedance.sdk.component.adexpress.dynamic.Pfn.cFZ();
                Context applicationContext = this.jFA.getApplicationContext();
                com.bytedance.sdk.component.adexpress.ZYk.PiB piB = this.sH;
                ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver = this.bgF;
                boolean z10 = this.Id;
                com.bytedance.sdk.component.adexpress.ZYk.ZYk zYk = new com.bytedance.sdk.component.adexpress.ZYk.ZYk(applicationContext, piB, themeStatusBroadcastReceiver, z10, cfz3, this, oJVar, new ba(this.jFA, themeStatusBroadcastReceiver, z10, cfz3, piB, oJVar));
                this.HL = zYk;
                this.mwH.add(zYk);
                return;
            }
        }
        jr jrVar = new jr(this.jFA, this.sH, this.bgF, this.nke, this.BTZ);
        this.Yg = jrVar;
        com.bytedance.sdk.component.adexpress.ZYk.eZI ezi = new com.bytedance.sdk.component.adexpress.ZYk.eZI(this.jFA, this.sH, jrVar, this);
        this.oTd = ezi;
        this.mwH.add(ezi);
    }

    private void awB() {
        if (this.BTZ.qnr() == 1 && this.BTZ.Br()) {
            com.bytedance.sdk.component.adexpress.ZYk.ba baVar = new com.bytedance.sdk.component.adexpress.ZYk.ba(this.jFA, this.sH, new oq(this, this.bgF, this.sH));
            this.LS = baVar;
            this.mwH.add(baVar);
            this.lY = new com.bytedance.sdk.component.adexpress.ZYk.BTZ(this.mwH, this.yz);
        } else if (LpP()) {
            eZI();
        } else {
            try {
                si();
                jr jrVar = new jr(this.jFA, this.sH, this.bgF, this.nke, this.BTZ);
                this.Yg = jrVar;
                com.bytedance.sdk.component.adexpress.ZYk.eZI ezi = new com.bytedance.sdk.component.adexpress.ZYk.eZI(this.jFA, this.sH, jrVar, this);
                this.oTd = ezi;
                this.mwH.add(ezi);
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.QSm.oJ("NativeExpressView", "NativeExpressView dynamicRender fail", e10);
            }
            com.bytedance.sdk.component.adexpress.ZYk.ba baVar2 = new com.bytedance.sdk.component.adexpress.ZYk.ba(this.jFA, this.sH, new oq(this, this.bgF, this.sH));
            this.LS = baVar2;
            this.mwH.add(baVar2);
            this.lY = new com.bytedance.sdk.component.adexpress.ZYk.BTZ(this.mwH, this.yz);
        }
    }

    private void eZI() {
        this.ZYk = this.BTZ.uvK();
        try {
            si();
            Xe();
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.oJ("NativeExpressView", "NativeExpressView dynamicRender fail", e10);
        }
        boolean z10 = true;
        if (this.BTZ.UF() != 1) {
            z10 = false;
        }
        this.oJ = z10;
        if (z10) {
            com.bytedance.sdk.component.adexpress.ZYk.ba baVar = new com.bytedance.sdk.component.adexpress.ZYk.ba(this.jFA, this.sH, new oq(this, this.bgF, this.sH));
            this.LS = baVar;
            this.mwH.add(baVar);
        }
        Objects.toString(this.mwH);
        this.lY = new com.bytedance.sdk.component.adexpress.ZYk.BTZ(this.mwH, this.yz);
    }

    private void si() {
        if (!com.bytedance.sdk.openadsdk.core.WcQ.Pfn()) {
            BTZ.oJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tb() {
        if (this.HyG.get()) {
            this.Xe.oJ(System.currentTimeMillis(), mu.oJ(this));
        }
    }

    public void BTZ() {
        try {
            tB tBVar = this.cdg;
            if (tBVar != null) {
                tBVar.ZYk();
            }
            Id();
            removeAllViews();
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            List<com.bytedance.sdk.component.adexpress.ZYk.kkU> list = this.mwH;
            if (list != null) {
                for (com.bytedance.sdk.component.adexpress.ZYk.kkU kku : list) {
                    kku.oJ();
                }
            }
            com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(this.BTZ);
            com.bytedance.sdk.openadsdk.jr.oJ.tB.ZYk(this.BTZ);
            this.tB = null;
            this.ex = null;
            this.dLZ = null;
            this.BTZ = null;
            this.Pfn = null;
            this.f13258ba = null;
            this.eZI = null;
            this.cFZ = null;
            com.bytedance.sdk.openadsdk.core.kkU.tB.ZYk zYk = this.UN;
            if (zYk != null) {
                zYk.tB();
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.oJ("NativeExpressView", "detach error", th2);
        }
    }

    public void Id() {
        com.bytedance.sdk.openadsdk.core.model.ex NTC;
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ;
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.BTZ;
        if (cYVar != null && (NTC = cYVar.NTC()) != null && (oJ = NTC.oJ()) != null) {
            oJ.Pfn(getVideoProgress());
        }
    }

    public int Pfn() {
        return 0;
    }

    public void QSm() {
        try {
            FrameLayout frameLayout = this.PiB;
            if (frameLayout != null && frameLayout.getParent() != null) {
                removeView(this.PiB);
            }
        } catch (Throwable unused) {
        }
    }

    public void RZ() {
        if (this.BTZ == null) {
            return;
        }
        this.f13264tb = SystemClock.elapsedRealtime();
        if (this.BTZ.jA()) {
            tB tBVar = this.cdg;
            if (tBVar == null) {
                a_(106);
                return;
            }
            tBVar.oJ((com.bytedance.sdk.component.adexpress.ZYk.awB) this);
            this.cdg.oJ();
            return;
        }
        this.nke.oJ();
        kkU.oJ oJVar = this.lY;
        if (oJVar != null) {
            oJVar.oJ(this);
        }
        try {
            this.lY.oJ();
        } catch (Throwable unused) {
        }
    }

    public void Ry() {
        com.bytedance.sdk.openadsdk.core.model.ex NTC;
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ;
        int i10;
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar instanceof jr) {
            if (exVar == null) {
                return;
            }
            ((jr) exVar).so();
            com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.BTZ;
            if (cYVar != null) {
                i10 = cYVar.oq().ex();
            } else {
                i10 = 5;
            }
            com.bytedance.sdk.component.utils.jFA.ZYk().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.QSm.6
                @Override // java.lang.Runnable
                public void run() {
                    QSm.this.Pfn(1);
                }
            }, i10 * 1000);
        } else if (exVar instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.ba) {
            ((com.bytedance.sdk.openadsdk.core.kkU.ba.ba) exVar).dLZ();
        }
        com.bytedance.sdk.openadsdk.core.model.cY cYVar2 = this.BTZ;
        if (cYVar2 != null && (NTC = cYVar2.NTC()) != null && (oJ = NTC.oJ()) != null) {
            oJ.oJ(0L);
        }
        if ((this.IUZ instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.ba) && com.bytedance.sdk.openadsdk.core.model.si.oJ(this.BTZ)) {
            oJ(this.IUZ);
        }
    }

    public void ZYk() {
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.awB
    public void a_(int i10) {
        com.bytedance.sdk.component.adexpress.ZYk.jFA jfa = this.yz;
        if (jfa != null) {
            if (!this.oJ) {
                jfa.so();
            }
            this.yz.jFA();
            ((PiB) this.yz).dLZ();
        }
        PAGExpressAdWrapperListener pAGExpressAdWrapperListener = this.Pfn;
        if (pAGExpressAdWrapperListener != null) {
            pAGExpressAdWrapperListener.onRenderFail(this, com.bytedance.sdk.openadsdk.core.so.oJ(i10), i10);
        }
        Id id2 = this.f13265wd;
        if (id2 != null) {
            id2.oJ(this.BTZ, this.kkU);
        }
    }

    public void ba() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cFZ() {
        this.QSm = new HashSet<>();
        this.bgF = new ThemeStatusBroadcastReceiver();
        AdSlot adSlot = this.dLZ;
        if (adSlot != null) {
            this.Ln = adSlot.getExpressViewAcceptedWidth();
            this.LpP = this.dLZ.getExpressViewAcceptedHeight();
            PiB();
            this.f13263so = this.dLZ.getCodeId();
            if (TextUtils.equals(this.kkU, "fullscreen_interstitial_ad")) {
                this.cY = this.BTZ.HUl();
            } else if (TextUtils.equals(this.kkU, "rewarded_video")) {
                this.cY = this.BTZ.xwf();
            } else if (TextUtils.equals(this.kkU, "open_ad")) {
                com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.BTZ;
                if (cYVar != null && cYVar.oJ() >= 0) {
                    this.cY = this.BTZ.oJ();
                } else {
                    this.cY = com.bytedance.sdk.openadsdk.core.si.ex().oq(this.f13263so);
                }
                if (this.cY < 0) {
                    this.cY = 5;
                }
            }
        }
        setBackgroundColor(0);
        if (this.BTZ.jA()) {
            this.cdg = new tB(this.jFA, this, this.BTZ, this.kkU);
            return;
        }
        WcQ();
        this.mwH = new ArrayList();
        awB();
        com.bytedance.sdk.component.adexpress.ZYk.eZI ezi = this.oTd;
        if (ezi != null) {
            this.Yg = (jr) ezi.ZYk();
        }
        UN jsObject = getJsObject();
        if (jsObject != null) {
            jsObject.ba(this.kkU);
        }
    }

    public boolean cY() {
        return this.HyG.get();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b4  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r13) {
        /*
            r12 = this;
            com.bytedance.sdk.openadsdk.core.so.so r0 = r12.f13258ba
            r1 = 0
            if (r0 == 0) goto L1e
            int r2 = r13.getDeviceId()
            r0.ZYk(r2)
            com.bytedance.sdk.openadsdk.core.so.so r0 = r12.f13258ba
            int r2 = r13.getSource()
            r0.oJ(r2)
            com.bytedance.sdk.openadsdk.core.so.so r0 = r12.f13258ba
            int r2 = r13.getToolType(r1)
            r0.tB(r2)
        L1e:
            com.bytedance.sdk.openadsdk.core.so.jFA r0 = r12.cFZ
            if (r0 == 0) goto L3b
            int r2 = r13.getDeviceId()
            r0.ZYk(r2)
            com.bytedance.sdk.openadsdk.core.so.jFA r0 = r12.cFZ
            int r2 = r13.getSource()
            r0.oJ(r2)
            com.bytedance.sdk.openadsdk.core.so.jFA r0 = r12.cFZ
            int r2 = r13.getToolType(r1)
            r0.tB(r2)
        L3b:
            int r0 = r13.getActionMasked()
            if (r0 == 0) goto L9a
            r1 = 3
            r2 = 1
            if (r0 == r2) goto L4b
            r3 = 2
            if (r0 == r3) goto L4f
            if (r0 == r1) goto L4d
            r1 = -1
        L4b:
            r5 = r1
            goto Lb0
        L4d:
            r1 = 4
            goto L4b
        L4f:
            float r0 = r12.UK
            float r1 = r13.getX()
            float r4 = r12.MoK
            float r1 = r1 - r4
            float r1 = java.lang.Math.abs(r1)
            float r0 = r0 + r1
            r12.UK = r0
            float r0 = r12.VSB
            float r1 = r13.getY()
            float r4 = r12.TA
            float r1 = r1 - r4
            float r1 = java.lang.Math.abs(r1)
            float r0 = r0 + r1
            r12.VSB = r0
            float r0 = r13.getX()
            r12.MoK = r0
            float r0 = r13.getY()
            r12.TA = r0
            long r0 = java.lang.System.currentTimeMillis()
            long r4 = r12.jXJ
            long r0 = r0 - r4
            r4 = 200(0xc8, double:9.9E-322)
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 <= 0) goto L98
            float r0 = r12.UK
            r1 = 1090519040(0x41000000, float:8.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L96
            float r0 = r12.VSB
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L98
        L96:
            r5 = r2
            goto Lb0
        L98:
            r5 = r3
            goto Lb0
        L9a:
            float r0 = r13.getRawX()
            r12.MoK = r0
            float r0 = r13.getRawY()
            r12.TA = r0
            long r2 = java.lang.System.currentTimeMillis()
            r12.jXJ = r2
            com.bytedance.sdk.openadsdk.core.jFA.tB.oJ(r13)
            goto L4b
        Lb0:
            android.util.SparseArray<com.bytedance.sdk.openadsdk.core.ZYk.tB$oJ> r0 = r12.oIC
            if (r0 == 0) goto Lcf
            int r1 = r13.getActionMasked()
            com.bytedance.sdk.openadsdk.core.ZYk.tB$oJ r2 = new com.bytedance.sdk.openadsdk.core.ZYk.tB$oJ
            float r3 = r13.getSize()
            double r6 = (double) r3
            float r3 = r13.getPressure()
            double r8 = (double) r3
            long r10 = java.lang.System.currentTimeMillis()
            r4 = r2
            r4.<init>(r5, r6, r8, r10)
            r0.put(r1, r2)
        Lcf:
            boolean r13 = super.dispatchTouchEvent(r13)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.so.QSm.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public long ex() {
        return 0L;
    }

    public com.bytedance.sdk.openadsdk.ex.cFZ getAdShowTime() {
        return this.Xe;
    }

    public tB getBrandBannerController() {
        return this.cdg;
    }

    public so getClickCreativeListener() {
        return this.f13258ba;
    }

    public jFA getClickListener() {
        return this.cFZ;
    }

    public String getClosedListenerKey() {
        return this.f13260mu;
    }

    public int getDynamicShowType() {
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar != null) {
            return exVar.tB();
        }
        return 0;
    }

    public int getExpectExpressHeight() {
        return Float.valueOf(this.LpP).intValue();
    }

    public int getExpectExpressWidth() {
        return Float.valueOf(this.Ln).intValue();
    }

    public UN getJsObject() {
        jr jrVar = this.Yg;
        if (jrVar != null) {
            return jrVar.eZI();
        }
        return null;
    }

    public int getRenderEngineCacheType() {
        kkU awB;
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if ((exVar instanceof jr) && (awB = ((jr) exVar).awB()) != null) {
            return awB.oJ();
        }
        return 0;
    }

    protected int getRenderTimeout() {
        return com.bytedance.sdk.openadsdk.core.si.ex().jr();
    }

    public String getUgenTemplateErrorReason() {
        return this.Jc;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ZYk.oJ.InterfaceC0202oJ
    public long getVideoProgress() {
        com.bytedance.sdk.openadsdk.core.tB.jFA jfa = this.uvK;
        if (jfa != null) {
            return jfa.getVideoProgress();
        }
        return 0L;
    }

    public com.bytedance.sdk.component.jFA.ba getWebView() {
        jr jrVar = this.Yg;
        if (jrVar == null) {
            return null;
        }
        return jrVar.oJ();
    }

    protected boolean jFA() {
        return true;
    }

    public void jr() {
        com.bytedance.sdk.openadsdk.core.kkU.tB.ZYk zYk = new com.bytedance.sdk.openadsdk.core.kkU.tB.ZYk(this.jFA, this.BTZ);
        this.UN = zYk;
        zYk.oJ(this);
        this.UN.oJ(new com.bytedance.sdk.openadsdk.core.kkU.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.core.so.QSm.7
        });
    }

    public void kkU() {
        jr jrVar = this.Yg;
        if (jrVar != null && jrVar.Pfn() != null) {
            this.Yg.ba();
        }
    }

    public void oJ() {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        tb();
        IUZ();
        getViewTreeObserver().addOnScrollChangedListener(this.Rl);
        com.bytedance.sdk.openadsdk.core.jFA.ZYk().oJ(this.f13260mu, this.XAo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnScrollChangedListener(this.Rl);
        com.bytedance.sdk.openadsdk.core.jFA.ZYk().ba(this.f13260mu);
        Ln();
        oJ(8, true, true);
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        tb();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        int i10;
        super.onWindowFocusChanged(z10);
        if (Build.VERSION.SDK_INT < 28) {
            if (z10) {
                i10 = getVisibility();
            } else {
                i10 = 8;
            }
            onWindowVisibilityChanged(i10);
        }
        tb();
        com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(this.BTZ, z10);
        if (z10) {
            com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(this.BTZ, 4);
        } else {
            com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(this.BTZ, 8);
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        oJ(i10, true, false);
    }

    public boolean oq() {
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar != null && (exVar instanceof oq)) {
            return true;
        }
        return false;
    }

    public void setBackupListener(com.bytedance.sdk.component.adexpress.ZYk.tB tBVar) {
        this.eZI = tBVar;
        com.bytedance.sdk.component.adexpress.ZYk.ba baVar = this.LS;
        if (baVar != null) {
            baVar.oJ(tBVar);
        }
    }

    public void setBannerClickClosedListener(cFZ.oJ oJVar) {
        this.XAo = oJVar;
    }

    public void setClickCreativeListener(so soVar) {
        this.f13258ba = soVar;
        if (soVar != null) {
            soVar.oJ((oJ.InterfaceC0202oJ) this);
        }
    }

    public void setClickListener(jFA jfa) {
        this.cFZ = jfa;
    }

    public void setClosedListenerKey(String str) {
        this.f13260mu = str;
        tB tBVar = this.cdg;
        if (tBVar != null) {
            tBVar.oJ(str);
        }
    }

    public void setDislike(com.bytedance.sdk.openadsdk.tB.tB tBVar) {
        oJ oJVar;
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar != null && (exVar instanceof oq) && (oJVar = (oJ) exVar.Pfn()) != null) {
            oJVar.setDislikeInner(tBVar);
        }
        tB tBVar2 = this.cdg;
        if (tBVar2 != null) {
            tBVar2.oJ(tBVar);
        }
        this.tB = tBVar;
    }

    public void setExpressInteractionListener(PAGExpressAdWrapperListener pAGExpressAdWrapperListener) {
        this.Pfn = pAGExpressAdWrapperListener;
        tB tBVar = this.cdg;
        if (tBVar != null) {
            tBVar.oJ(pAGExpressAdWrapperListener);
        }
    }

    public void setJsbLandingPageOpenListener(com.bytedance.sdk.openadsdk.core.widget.Pfn pfn) {
        if (this.Yg != null && getJsObject() != null) {
            getJsObject().oJ(pfn);
        }
        com.bytedance.sdk.openadsdk.core.kkU.ba.tB tBVar = this.jB;
        if (tBVar != null) {
            tBVar.oJ(pfn);
        }
    }

    public void setOuterDislike(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        oJ oJVar;
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar != null && (exVar instanceof oq) && (oJVar = (oJ) exVar.Pfn()) != null) {
            oJVar.setDislikeOuter(tTDislikeDialogAbstract);
        }
        tB tBVar = this.cdg;
        if (tBVar != null) {
            tBVar.oJ(tTDislikeDialogAbstract);
        }
        this.ex = tTDislikeDialogAbstract;
    }

    public void setSoundMute(boolean z10) {
        this.Id = z10;
        com.bytedance.sdk.component.adexpress.ZYk.ZYk zYk = this.HL;
        if (zYk != null && zYk.ZYk() != null) {
            this.HL.ZYk().setSoundMute(z10);
        }
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.tB) {
            ((com.bytedance.sdk.openadsdk.core.kkU.ba.tB) exVar).setSoundMute(z10);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ex
    public void setTime(CharSequence charSequence, int i10, int i11, boolean z10) {
        try {
            int parseInt = Integer.parseInt(String.valueOf(charSequence));
            ZYk(parseInt, i10);
            com.bytedance.sdk.openadsdk.core.kkU.tB.ZYk zYk = this.UN;
            if (zYk != null) {
                zYk.oJ(parseInt);
            }
        } catch (NumberFormatException unused) {
        }
    }

    public void setVastVideoHelper(com.bytedance.sdk.openadsdk.core.tB.jFA jfa) {
        this.uvK = jfa;
    }

    public void setVideoBusiness(com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk) {
        jr jrVar = this.Yg;
        if (jrVar != null) {
            jrVar.oJ(zYk);
        }
    }

    public void setVideoFrameChangeListener(com.bytedance.sdk.openadsdk.BTZ.cFZ cfz) {
        if (this.Yg != null && getJsObject() != null) {
            getJsObject().oJ(cfz);
        }
    }

    protected boolean so() {
        return true;
    }

    public long tB() {
        return 0L;
    }

    public void ZYk(int i10) {
    }

    public void ba(int i10) {
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar == null || !(exVar instanceof jr)) {
            return;
        }
        ((jr) exVar).oJ(i10);
        this.Dex = i10;
    }

    public void oJ(int i10) {
    }

    protected void tB(JSONObject jSONObject) {
    }

    public void Pfn(int i10) {
        if (com.bytedance.sdk.openadsdk.core.model.QSm.tB(this.BTZ)) {
            com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
            if (exVar instanceof jr) {
                ((jr) exVar).ZYk(i10);
            }
        }
    }

    protected boolean ZYk(com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ) {
        return true;
    }

    public void oJ(int i10, com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ) {
    }

    public boolean ZYk(JSONObject jSONObject) {
        return false;
    }

    public void oJ(int i10, String str) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Pfn.oJ tB(int i10) {
        return new Pfn.oJ(i10);
    }

    protected void oJ(PiB.oJ oJVar) {
    }

    protected void ZYk(int i10, int i11) {
        int i12;
        if (TextUtils.equals(this.kkU, "banner_ad")) {
            return;
        }
        int i13 = this.cY;
        int i14 = ((i11 < i13 || i13 < 0 || !(this.f13259jr || TextUtils.equals(this.kkU, "open_ad"))) && !((i10 == 0 && TextUtils.equals(this.kkU, "open_ad")) || Pfn() == 5)) ? 0 : 1;
        if (i11 <= this.cY) {
            com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.BTZ;
            if (cYVar != null && cYVar.ib() != null) {
                i12 = (int) (Math.min(this.cY, this.BTZ.ib().ba() * this.BTZ.ib().Id()) - i11);
            } else {
                i12 = this.cY - i11;
            }
        } else {
            i12 = 0;
        }
        com.bytedance.sdk.component.adexpress.ZYk.ZYk zYk = this.HL;
        if (zYk != null && zYk.ZYk() != null) {
            this.HL.ZYk().setTime(String.valueOf(i10), i14, i12, false);
        }
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.tB) {
            ((com.bytedance.sdk.openadsdk.core.kkU.ba.tB) exVar).setTime(String.valueOf(i10), i14, i12, false);
        }
    }

    public void oJ(String str, JSONObject jSONObject) {
    }

    public void oJ(boolean z10, String str) {
    }

    public boolean oJ(JSONObject jSONObject) {
        return false;
    }

    public void oJ(int i10, boolean z10, boolean z11) {
        this.f13262si = z10;
        removeCallbacks(this.nQI);
        removeCallbacks(this.Qu);
        if (i10 == 0) {
            if (z11) {
                this.Qu.run();
            } else {
                postDelayed(this.Qu, 50L);
            }
        } else if (z11) {
            this.nQI.run();
        } else {
            postDelayed(this.nQI, 50L);
        }
    }

    public void ZYk(int i10, String str) {
        UN eZI;
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if (exVar == null || !(exVar instanceof jr) || (eZI = ((jr) exVar).eZI()) == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(CrashHianalyticsData.TIME, i10);
            jSONObject.put("flag", str);
            eZI.oJ("onVideoPaused", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void dLZ() {
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ex
    public void onvideoComplate() {
    }

    public void oJ(View view, int i10, com.bytedance.sdk.component.adexpress.tB tBVar) {
        View view2;
        JSONObject jSONObject;
        com.bytedance.sdk.component.utils.QSm.oJ("ClickCreativeListener", "trigger Class2 method1", Integer.valueOf(i10));
        if (i10 == -1 || tBVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        if (Ln.tB(this.BTZ)) {
            hashMap.put("click_scence", 3);
        } else {
            hashMap.put("click_scence", 1);
        }
        com.bytedance.sdk.openadsdk.core.model.eZI ezi = (com.bytedance.sdk.openadsdk.core.model.eZI) tBVar;
        if (com.bytedance.sdk.openadsdk.core.model.QSm.tB(this.BTZ)) {
            try {
                JSONObject jSONObject2 = ezi.f13226si;
                if (jSONObject2 != null) {
                    int optInt = jSONObject2.optInt("click_type", 0);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("click_type", optInt);
                    hashMap.put("pag_json_data", jSONObject3.toString());
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.tB(th2.toString(), new Object[0]);
            }
        }
        so soVar = this.f13258ba;
        if (soVar != null) {
            soVar.ex(getDynamicShowType());
            this.f13258ba.oJ(hashMap);
        }
        jFA jfa = this.cFZ;
        if (jfa != null) {
            jfa.ex(getDynamicShowType());
            this.cFZ.oJ(hashMap);
        }
        float f10 = ezi.oJ;
        float f11 = ezi.ZYk;
        float f12 = ezi.tB;
        float f13 = ezi.ex;
        boolean z10 = ezi.awB;
        SparseArray<tB.oJ> sparseArray = ezi.WcQ;
        if (sparseArray == null || sparseArray.size() == 0) {
            sparseArray = this.oIC;
        }
        SparseArray<tB.oJ> sparseArray2 = sparseArray;
        String str = ezi.dLZ;
        if (view == null) {
            view2 = this;
        } else {
            r6 = view != this ? oJ(view) : null;
            view2 = view;
        }
        ezi.BTZ = i10;
        if (r6 != null && ezi.PiB == null) {
            ezi.PiB = r6;
        }
        if (i10 != 13) {
            switch (i10) {
                case 1:
                    FrameLayout frameLayout = this.PiB;
                    if (frameLayout != null) {
                        frameLayout.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                    }
                    com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.BTZ;
                    if (cYVar == null || cYVar.jB() != 1 || z10) {
                        jFA jfa2 = this.cFZ;
                        if (jfa2 != null) {
                            jfa2.oJ(ezi);
                            this.cFZ.oJ(str);
                            this.cFZ.oJ(view2, f10, f11, f12, f13, sparseArray2, z10);
                        }
                        PAGExpressAdWrapperListener pAGExpressAdWrapperListener = this.Pfn;
                        if (pAGExpressAdWrapperListener == null || ezi.Ry) {
                            return;
                        }
                        pAGExpressAdWrapperListener.onAdClicked();
                        return;
                    }
                    return;
                case 2:
                    if (ezi.eZI > 0) {
                        XAo.oJ(true);
                    }
                    so soVar2 = this.f13258ba;
                    if (soVar2 != null) {
                        soVar2.oJ(ezi);
                        this.f13258ba.oJ(str);
                        if (com.bytedance.sdk.openadsdk.core.model.QSm.tB(this.BTZ) && (jSONObject = ezi.f13226si) != null) {
                            this.f13258ba.ex(jSONObject.optBoolean("is_ceiling_page", false));
                        }
                        this.f13258ba.oJ(view2, f10, f11, f12, f13, sparseArray2, z10);
                    }
                    PAGExpressAdWrapperListener pAGExpressAdWrapperListener2 = this.Pfn;
                    if (pAGExpressAdWrapperListener2 != null && !ezi.Ry) {
                        pAGExpressAdWrapperListener2.onAdClicked();
                    }
                    XAo.oJ(false);
                    com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(this.BTZ, 9);
                    return;
                case 3:
                    TTDislikeDialogAbstract tTDislikeDialogAbstract = this.ex;
                    if (tTDislikeDialogAbstract != null) {
                        tTDislikeDialogAbstract.show();
                        return;
                    }
                    com.bytedance.sdk.openadsdk.tB.tB tBVar2 = this.tB;
                    if (tBVar2 != null) {
                        tBVar2.oJ();
                        return;
                    } else {
                        TTDelegateActivity.oJ(this.BTZ, this.f13260mu);
                        return;
                    }
                case 4:
                    FrameLayout frameLayout2 = this.PiB;
                    if (frameLayout2 != null) {
                        frameLayout2.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                    }
                    com.bytedance.sdk.openadsdk.core.model.cY cYVar2 = this.BTZ;
                    if (cYVar2 == null || cYVar2.jB() != 1 || z10) {
                        HyG.tB(this.BTZ);
                        if ("embeded_ad".equals(this.kkU) && HL() && !this.WcQ && HyG.tB(this.BTZ)) {
                            so soVar3 = this.f13258ba;
                            if (soVar3 != null) {
                                soVar3.oJ(ezi);
                                this.f13258ba.oJ(str);
                                this.f13258ba.oJ(view2, f10, f11, f12, f13, sparseArray2, z10);
                            }
                        } else {
                            jFA jfa3 = this.cFZ;
                            if (jfa3 != null) {
                                jfa3.oJ(ezi);
                                this.cFZ.oJ(str);
                                this.cFZ.oJ(view2, f10, f11, f12, f13, sparseArray2, z10);
                            }
                        }
                        PAGExpressAdWrapperListener pAGExpressAdWrapperListener3 = this.Pfn;
                        if (pAGExpressAdWrapperListener3 == null || ezi.Ry) {
                            return;
                        }
                        pAGExpressAdWrapperListener3.onAdClicked();
                        return;
                    }
                    return;
                case 5:
                    oJ(!this.Id, "dynamicClick");
                    return;
                case 6:
                    oJ();
                    return;
                case 7:
                    TTWebsiteActivity.oJ(this.jFA, this.BTZ, this.kkU);
                    return;
                default:
                    return;
            }
        }
        int i11 = ezi.RZ;
        if (i11 >= 0) {
            JSONObject jSONObject4 = new JSONObject();
            try {
                jSONObject4.put("switch", i11);
                oJ(jSONObject4);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ex
    public void setTimeUpdate(int i10) {
    }

    public void cFZ(int i10) {
        com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar = this.IUZ;
        if ((exVar instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.ba) && i10 == 4) {
            ((com.bytedance.sdk.openadsdk.core.kkU.ba.ba) exVar).kkU();
        }
    }

    public QSm(@NonNull Context context, com.bytedance.sdk.openadsdk.core.model.cY cYVar, AdSlot adSlot, String str, boolean z10, boolean z11) {
        super(context);
        this.oJ = true;
        this.ZYk = 0;
        this.kkU = "embeded_ad";
        this.f13263so = null;
        this.awB = false;
        this.f13262si = true;
        this.Ry = -1;
        this.Jc = "";
        this.Id = false;
        this.ofl = true;
        this.cY = -1;
        this.Xe = new com.bytedance.sdk.openadsdk.ex.cFZ();
        this.f13264tb = 0L;
        this.HyG = new AtomicBoolean(false);
        this.Rl = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.so.QSm.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                QSm qSm = QSm.this;
                if (qSm.f13262si && qSm.jFA()) {
                    QSm.this.tb();
                    QSm qSm2 = QSm.this;
                    qSm2.removeCallbacks(qSm2.Jm);
                    QSm qSm3 = QSm.this;
                    qSm3.postDelayed(qSm3.Jm, 500L);
                }
            }
        };
        this.Jm = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.QSm.2
            @Override // java.lang.Runnable
            public void run() {
                if (mu.oJ(QSm.this, 0, 5, false)) {
                    QSm qSm = QSm.this;
                    qSm.ba(qSm.getVisibility());
                    return;
                }
                QSm.this.ba(8);
            }
        };
        this.Qu = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.QSm.3
            @Override // java.lang.Runnable
            public void run() {
                QSm.this.ba(0);
            }
        };
        this.nQI = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.QSm.4
            @Override // java.lang.Runnable
            public void run() {
                QSm.this.ba(8);
            }
        };
        this.Dex = 8;
        this.oIC = new SparseArray<>();
        this.MoK = -1.0f;
        this.TA = -1.0f;
        this.UK = -1.0f;
        this.VSB = -1.0f;
        this.jXJ = 0L;
        this.kkU = str;
        this.jFA = context;
        this.BTZ = cYVar;
        this.dLZ = adSlot;
        this.Id = z10;
        this.ofl = z11;
        cFZ();
    }

    public static JSONObject oJ(View view) {
        try {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", view.getWidth());
            jSONObject.put("height", view.getHeight());
            jSONObject.put(TtmlNode.LEFT, iArr[0]);
            jSONObject.put("top", iArr[1]);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.ex<? extends View> exVar, com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ) {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar;
        this.HyG.set(true);
        this.IUZ = exVar;
        exVar.tB();
        if (this.Dex != getWindowVisibility() && so()) {
            ba(getWindowVisibility());
        }
        if (exVar.tB() == 3 && (cYVar = this.BTZ) != null && cYVar.LS() == 1) {
            this.BTZ.so(0);
        }
        if (exVar.tB() != 1) {
            View Pfn = exVar.Pfn();
            if (Pfn.getParent() != null) {
                ((ViewGroup) Pfn.getParent()).removeView(Pfn);
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                arrayList.add(getChildAt(i10));
            }
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                if (arrayList.get(i11) instanceof com.bytedance.sdk.component.jFA.ba) {
                    removeView((View) arrayList.get(i11));
                }
            }
            if (com.bytedance.sdk.openadsdk.core.model.QSm.tB(this.BTZ)) {
                addView(exVar.Pfn(), new FrameLayout.LayoutParams(-1, -1));
            } else {
                addView(exVar.Pfn());
            }
        }
        com.bytedance.sdk.openadsdk.core.model.cY cYVar2 = this.BTZ;
        if (cYVar2 != null) {
            com.bytedance.sdk.openadsdk.awB.tB.oJ(cYVar2.cFZ(), this.f13264tb, this.kkU, exVar.tB());
        }
        com.bytedance.sdk.component.adexpress.ZYk.jFA jfa = this.yz;
        if (jfa != null) {
            ((PiB) jfa).dLZ();
        }
        PAGExpressAdWrapperListener pAGExpressAdWrapperListener = this.Pfn;
        if (pAGExpressAdWrapperListener != null) {
            pAGExpressAdWrapperListener.onRenderSuccess(this, (float) wcQ.tB(), (float) wcQ.ex());
        }
        if ((this.IUZ instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.ba) && com.bytedance.sdk.openadsdk.core.model.si.oJ(this.BTZ)) {
            jr();
        }
        if (ZYk(wcQ)) {
            com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(this, this.BTZ, tB(getDynamicShowType()));
        }
        Id id2 = this.f13265wd;
        if (id2 != null) {
            id2.oJ(this.BTZ, this.kkU);
        }
    }

    public JSONObject oJ(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (this.IUZ instanceof jr) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            try {
                int renderEngineCacheType = getRenderEngineCacheType();
                if (cYVar != null) {
                    if (cYVar.PdF() != null && cYVar.PdF().BTZ()) {
                        jSONObject.put("engine_version", cYVar.PdF().dLZ());
                    } else if (cYVar.BWx() != null) {
                        jSONObject.put("engine_version", "v3");
                    } else {
                        jSONObject.put("engine_version", "v1");
                    }
                }
                jSONObject.put("engine_type", renderEngineCacheType);
            } catch (Exception e10) {
                e10.getMessage();
            }
            return jSONObject;
        }
        return null;
    }

    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.ex exVar) {
        if (this.UN == null) {
            return;
        }
        try {
            if (exVar instanceof com.bytedance.sdk.openadsdk.core.kkU.ba.ba) {
                ViewGroup viewGroup = (ViewGroup) ((com.bytedance.sdk.openadsdk.core.kkU.ba.ba) exVar).ba().dLZ();
                this.f13261oq = viewGroup;
                if (viewGroup != null) {
                    this.UN.oJ();
                    View ZYk = this.UN.ZYk();
                    if (ZYk != null) {
                        ViewGroup viewGroup2 = (ViewGroup) ZYk.getParent();
                        if (viewGroup2 != null) {
                            viewGroup2.removeView(ZYk);
                        }
                        this.f13261oq.addView(ZYk, new ViewGroup.LayoutParams(-1, -1));
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }
}
