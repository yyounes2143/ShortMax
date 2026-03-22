package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.app.Activity;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB;
import com.bytedance.sdk.openadsdk.utils.HyG;
import java.io.File;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class eZI {
    private long BTZ;
    private oJ.InterfaceC0200oJ IUZ;
    private final oJ Id;
    private com.bytedance.sdk.openadsdk.ex.cFZ Ln;
    private boolean PiB;
    private String RZ;
    private long Ry;
    private boolean WcQ;

    /* renamed from: ba  reason: collision with root package name */
    com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB f13006ba;
    private final Activity cFZ;
    private boolean cY;
    private long dLZ;
    final boolean ex;
    private FrameLayout jFA;
    private final String kkU;

    /* renamed from: oq  reason: collision with root package name */
    private boolean f13008oq;

    /* renamed from: si  reason: collision with root package name */
    private long f13009si;

    /* renamed from: so  reason: collision with root package name */
    private final cY f13010so;
    boolean tB;
    protected boolean oJ = false;
    boolean ZYk = false;
    protected boolean Pfn = false;
    private long awB = -1;
    private int eZI = -1;

    /* renamed from: jr  reason: collision with root package name */
    private boolean f13007jr = false;
    private int Xe = 0;

    /* renamed from: tb  reason: collision with root package name */
    private float f13011tb = 1.0f;
    private boolean HL = false;
    private HashSet<String> QSm = new HashSet<>();

    public eZI(oJ oJVar) {
        this.Id = oJVar;
        this.cFZ = oJVar.HyG;
        this.f13010so = oJVar.ZYk;
        this.ex = oJVar.ex;
        this.kkU = oJVar.Pfn;
    }

    private void nQI() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null && tBVar.dLZ() != null) {
            this.dLZ = this.f13006ba.ba();
            if (this.f13006ba.dLZ().tB() || !this.f13006ba.dLZ().ZYk()) {
                this.f13006ba.ZYk();
                this.f13006ba.ex();
                this.oJ = true;
            }
        }
    }

    public long BTZ() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            return tBVar.ba();
        }
        return this.dLZ;
    }

    public boolean HL() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            if (tBVar.dLZ() != null) {
                com.bykv.vk.openvk.oJ.oJ.oJ.oJ dLZ = this.f13006ba.dLZ();
                if (dLZ.cFZ() || dLZ.so()) {
                    com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar2 = this.f13006ba;
                    if (tBVar2 instanceof com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) {
                        ((com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) tBVar2).wd();
                    }
                    return true;
                }
            } else if (dLZ()) {
                oJ(false);
                com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar3 = this.f13006ba;
                if (tBVar3 instanceof com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) {
                    ((com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) tBVar3).wd();
                }
                return true;
            }
        }
        return false;
    }

    public void HyG() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar instanceof com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) {
            ((com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) tBVar).cdg();
        }
    }

    public boolean IUZ() {
        if (this.f13006ba != null) {
            return true;
        }
        return false;
    }

    public long Id() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            return tBVar.jFA();
        }
        return 0L;
    }

    public void Jc() {
        this.f13007jr = false;
        Ry();
    }

    public void Jm() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null && tBVar.dLZ() != null) {
            this.dLZ = this.f13006ba.ba();
            RZ();
            oJ(true);
            this.PiB = true;
        }
    }

    public boolean Ln() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null && tBVar.dLZ() == null) {
            return true;
        }
        return false;
    }

    public void LpP() {
        int i10 = this.Xe;
        if (i10 != 1 && i10 != 2) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("switch", 0);
            oJ(jSONObject);
        } catch (Throwable th2) {
            QSm.oJ("TTAD.RFVideoPlayerMag", "onStopPlaySpeed: ", th2);
        }
    }

    public com.bytedance.sdk.openadsdk.ex.cFZ Pfn() {
        return this.Ln;
    }

    public long PiB() {
        return this.BTZ;
    }

    public void QSm() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            tBVar.tB();
        }
    }

    public boolean Qu() {
        return this.PiB;
    }

    public void RZ() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            tBVar.Pfn();
        }
    }

    public void Rl() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            tBVar.oJ();
        }
    }

    public void Ry() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar == null) {
            return;
        }
        tBVar.ex();
        this.f13006ba = null;
    }

    public void UN() {
        try {
            if (ba()) {
                this.Pfn = true;
                oq();
            }
        } catch (Exception e10) {
            QSm.tB("TTAD.RFVideoPlayerMag", "onPause throw Exception :" + e10.getMessage());
        }
    }

    public long WcQ() {
        return this.dLZ;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double XAo() {
        /*
            r5 = this;
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r5.f13010so
            com.bytedance.sdk.openadsdk.core.model.oq r0 = r0.RZ()
            com.bytedance.sdk.openadsdk.core.model.cY r1 = r5.f13010so
            boolean r1 = com.bytedance.sdk.openadsdk.core.model.QSm.ex(r1)
            if (r1 == 0) goto L16
            if (r0 == 0) goto L16
            long r0 = r0.ZYk()
        L14:
            double r0 = (double) r0
            goto L3b
        L16:
            com.bytedance.sdk.openadsdk.core.model.cY r1 = r5.f13010so
            boolean r1 = com.bytedance.sdk.openadsdk.core.model.QSm.Pfn(r1)
            if (r1 == 0) goto L25
            if (r0 == 0) goto L25
            long r0 = r0.ex()
            goto L14
        L25:
            com.bytedance.sdk.openadsdk.core.model.cY r0 = r5.f13010so
            com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk r0 = r0.ib()
            if (r0 == 0) goto L39
            double r1 = r0.ba()
            int r0 = r0.Id()
            double r3 = (double) r0
            double r0 = r1 * r3
            goto L3b
        L39:
            r0 = 0
        L3b:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r2 = r5.Id
            com.bytedance.sdk.openadsdk.component.reward.dLZ r2 = r2.EP
            if (r2 == 0) goto L45
            long r3 = (long) r0
            r2.oJ(r3)
        L45:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.oJ.eZI.XAo():double");
    }

    public long Xe() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            return tBVar.jFA() + this.f13006ba.cFZ();
        }
        return 0L;
    }

    public void awB() {
        try {
            if (ba()) {
                this.f13006ba.ZYk();
            }
        } catch (Throwable th2) {
            QSm.tB("RewardFullVideoPlayerManager onPause throw Exception :" + th2.getMessage(), new Object[0]);
        }
    }

    public boolean ba() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null && tBVar.dLZ() != null && this.f13006ba.dLZ().ba()) {
            return true;
        }
        return false;
    }

    public boolean cFZ() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null && tBVar.PiB()) {
            return true;
        }
        return false;
    }

    public int cY() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            return tBVar.kkU();
        }
        return 0;
    }

    public void cdg() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar instanceof com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) {
            ((com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) tBVar).Rl();
        }
    }

    public boolean dLZ() {
        return this.oJ;
    }

    public long eZI() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            return tBVar.cFZ();
        }
        return 0L;
    }

    public boolean ex() {
        int i10;
        return this.HL ? this.f13007jr && this.Xe == 1 : this.f13007jr && ((i10 = this.Xe) == 2 || i10 == 1);
    }

    public boolean jFA() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null && tBVar.dLZ() != null && this.f13006ba.dLZ().cFZ()) {
            return true;
        }
        return false;
    }

    public int jr() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            return tBVar.so();
        }
        return 0;
    }

    public boolean kkU() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null && tBVar.WcQ()) {
            return true;
        }
        return false;
    }

    public boolean mu() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null && tBVar.dLZ() != null) {
            return this.f13006ba.dLZ().oJ();
        }
        return false;
    }

    public boolean nke() {
        return this.tB;
    }

    public void ofl() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar instanceof com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) {
            ((com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) tBVar).ofl();
        }
    }

    public void oq() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            tBVar.ZYk();
        }
    }

    public com.bykv.vk.openvk.oJ.oJ.oJ.oJ si() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            return tBVar.dLZ();
        }
        return null;
    }

    public com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ so() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            if (tBVar instanceof com.bytedance.sdk.openadsdk.component.reward.tB) {
                return ((com.bytedance.sdk.openadsdk.component.reward.tB) tBVar).si();
            }
            return tBVar.BTZ();
        }
        return null;
    }

    public long tb() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            return tBVar.jFA();
        }
        return 0L;
    }

    public View wd() {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar instanceof com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) {
            return (View) ((com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) tBVar).HyG();
        }
        return null;
    }

    public long ZYk() {
        return this.f13009si;
    }

    public long oJ() {
        return this.awB;
    }

    public boolean tB() {
        return this.f13007jr;
    }

    private void ZYk(long j10, long j11) {
        int abs = (int) Math.abs(this.eZI - j10);
        int i10 = this.eZI;
        if (i10 < 0 || abs > 500 || i10 > j11 || abs >= 500 || this.QSm.contains(this.RZ)) {
            return;
        }
        if (this.eZI > j10) {
            com.bytedance.sdk.openadsdk.core.WcQ.tB().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.eZI.1
                @Override // java.lang.Runnable
                public void run() {
                    eZI.this.UN();
                    eZI.this.Id.f13026tb.oJ(eZI.this.eZI, eZI.this.RZ);
                }
            }, abs);
        } else {
            UN();
            this.Id.f13026tb.oJ(this.eZI, this.RZ);
        }
        this.QSm.add(this.RZ);
    }

    public void oJ(long j10) {
        this.awB = j10;
    }

    public void tB(boolean z10) {
        this.tB = z10;
    }

    public void ex(boolean z10) {
        this.cY = z10;
        if (this.f13006ba instanceof com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) {
            if (z10) {
                ((com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) this.f13006ba).ZYk(this.f13010so.ib().Id());
                return;
            }
            this.f13010so.ib().kkU(1);
            ((com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) this.f13006ba).ZYk(1);
        }
    }

    public void oJ(FrameLayout frameLayout, com.bytedance.sdk.openadsdk.ex.cFZ cfz) {
        if (this.f13008oq) {
            return;
        }
        this.f13008oq = true;
        this.jFA = frameLayout;
        if (this.f13010so.zxE() != null) {
            this.Xe = this.f13010so.zxE().ZYk();
            this.f13011tb = this.f13010so.zxE().oJ();
        }
        this.Ln = cfz;
        if (cY.Pfn(this.f13010so)) {
            this.HL = true;
            this.f13006ba = new com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ(this.cFZ, this.jFA, this.f13010so, cfz);
            ex(this.cY);
            oJ.InterfaceC0200oJ interfaceC0200oJ = this.IUZ;
            if (interfaceC0200oJ != null) {
                ((com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ) this.f13006ba).oJ(interfaceC0200oJ);
                return;
            }
            return;
        }
        this.HL = false;
        com.bytedance.sdk.openadsdk.component.reward.tB tBVar = new com.bytedance.sdk.openadsdk.component.reward.tB(this.f13010so, cfz);
        this.f13006ba = tBVar;
        oJ.InterfaceC0200oJ interfaceC0200oJ2 = this.IUZ;
        if (interfaceC0200oJ2 != null) {
            tBVar.oJ(interfaceC0200oJ2);
        }
    }

    public void ZYk(long j10) {
        this.dLZ = j10;
    }

    public void ZYk(boolean z10) {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            tBVar.ZYk();
            this.WcQ = z10;
        }
    }

    protected void ZYk(com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk) {
        if (!HL() || zYk == null) {
            return;
        }
        zYk.oJ(WcQ(), true);
    }

    public void oJ(com.bytedance.sdk.openadsdk.ex.cFZ cfz) {
        this.Ln = cfz;
    }

    public void oJ(long j10, long j11) {
        this.BTZ = j10;
        ZYk(j10, j11);
    }

    public void oJ(int i10, String str) {
        this.eZI = i10;
        this.RZ = str;
    }

    public void oJ(boolean z10) {
        this.oJ = z10;
    }

    public void oJ(int i10, int i11) {
        if (this.f13006ba != null) {
            awB.oJ oJVar = new awB.oJ();
            oJVar.tB(eZI());
            oJVar.ex(Xe());
            oJVar.ZYk(BTZ());
            oJVar.oJ(i10);
            oJVar.ZYk(i11);
            com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.ex(this.f13006ba.BTZ(), oJVar);
        }
    }

    public void oJ(tB.oJ oJVar) {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            tBVar.oJ(oJVar);
        }
    }

    public void oJ(boolean z10, String str) {
        com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
        if (tBVar != null) {
            tBVar.oJ(z10, str);
        }
    }

    public void oJ(String str, boolean z10) {
        if (this.f13006ba != null) {
            long BTZ = BTZ();
            if (this.f13010so.Qu()) {
                BTZ = this.Id.tB();
            }
            long j10 = BTZ;
            JSONObject oJ = HyG.oJ(this.f13010so, this.f13006ba.cFZ(), this.f13006ba.dLZ());
            try {
                oJ.put("auto_click", z10);
                if (!z10) {
                    oJ oJVar = this.Id;
                    com.bytedance.sdk.openadsdk.ex.tB.oJ(oJ, oJVar.ex ? oJVar.ZYk.xwf() : oJVar.ZYk.HUl(), (int) j10);
                }
            } catch (Exception unused) {
            }
            com.bytedance.sdk.openadsdk.ex.tB.oJ(this.f13010so, this.kkU, str, j10, cY(), oJ, this.Ln);
            Xe();
            cY();
        }
        HyG();
    }

    public boolean oJ(long j10, boolean z10, Map<String, Object> map, com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk) {
        boolean z11;
        boolean z12 = false;
        if (IUZ()) {
            if (com.bytedance.sdk.openadsdk.core.model.QSm.ex(this.Id.ZYk) || com.bytedance.sdk.openadsdk.core.model.QSm.Pfn(this.Id.ZYk)) {
                return true;
            }
            if (!z10 || !Ln()) {
                oJ(zYk);
            }
            try {
                z11 = oJ(j10, this.Id.bgF);
            } catch (Exception e10) {
                e = e10;
            }
            try {
                this.PiB = false;
            } catch (Exception e11) {
                e = e11;
                z12 = z11;
                Log.e("TTAD.RFVideoPlayerMag", "playVideo: ", e);
                z11 = z12;
                if (z11) {
                    this.Id.IUZ.oJ(map);
                }
                return z11;
            }
            if (z11 && !z10) {
                this.Id.IUZ.oJ(map);
            }
            return z11;
        }
        return false;
    }

    public void oJ(com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk) {
        if (this.Id.kkU.get()) {
            return;
        }
        oJ oJVar = this.Id;
        if (!oJVar.Yg || Ln.tB(oJVar.ZYk)) {
            return;
        }
        if ((!cY.Pfn(this.Id.ZYk) && com.bytedance.sdk.openadsdk.core.si.ex().BTZ(String.valueOf(this.Id.f13020ba)) == 1 && this.Id.f13026tb.ex()) || com.bytedance.sdk.openadsdk.core.model.QSm.ex(this.Id.ZYk) || com.bytedance.sdk.openadsdk.core.model.QSm.Pfn(this.Id.ZYk) || this.Pfn || !zYk.ba()) {
            return;
        }
        this.Id.Jm.removeMessages(300);
        Message obtain = Message.obtain();
        obtain.what = 300;
        this.Id.Jm.sendMessageDelayed(obtain, 5000L);
    }

    public boolean oJ(JSONObject jSONObject) {
        int i10;
        if (this.f13006ba != null && jSONObject != null && ((i10 = this.Xe) == 1 || i10 == 2)) {
            int optInt = jSONObject.optInt("switch", 0);
            float optDouble = (float) jSONObject.optDouble("speed", 0.0d);
            this.f13011tb = optDouble;
            if (optDouble <= 0.0f && this.Id.ZYk.zxE() != null) {
                this.f13011tb = this.Id.ZYk.zxE().oJ();
            }
            if (optInt == 0) {
                this.f13011tb = 1.0f;
                if (this.f13007jr) {
                    long currentTimeMillis = this.f13009si + (System.currentTimeMillis() - this.Ry);
                    this.f13009si = currentTimeMillis;
                    com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.f13006ba;
                    if (tBVar != null) {
                        tBVar.oJ(currentTimeMillis);
                    }
                    com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk = this.Id.cdg;
                    if (zYk != null) {
                        zYk.ex(false);
                    }
                }
            } else if (optInt == 1 && !this.f13007jr) {
                this.Ry = System.currentTimeMillis();
                com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk2 = this.Id.cdg;
                if (zYk2 != null) {
                    zYk2.ex(true);
                }
            }
            this.f13007jr = optInt == 1;
            if (this.Xe == 1) {
                return true;
            }
            com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar2 = this.f13006ba;
            if (tBVar2 == null) {
                return false;
            }
            return tBVar2.oJ(this.f13011tb);
        }
        this.f13007jr = false;
        return false;
    }

    private boolean oJ(long j10, boolean z10) {
        if (this.f13006ba == null || this.f13010so.ib() == null) {
            return false;
        }
        String oJ = CacheDirFactory.getICacheDir(this.f13010so.rQ()).oJ();
        File file = new File(oJ, this.f13010so.ib().WcQ());
        if (file.exists() && file.length() > 0) {
            this.ZYk = true;
        }
        com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ2 = cY.oJ(oJ, this.f13010so);
        oJ2.ZYk(this.f13010so.edj());
        oJ2.ZYk(this.jFA.getWidth());
        oJ2.tB(this.jFA.getHeight());
        oJ2.tB(this.f13010so.pe());
        oJ2.oJ(j10);
        oJ2.oJ(z10);
        return this.f13006ba.oJ(oJ2);
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk) {
        try {
            this.Pfn = false;
            if (dLZ()) {
                nQI();
                ZYk(zYk);
            } else if (jFA()) {
                QSm();
            }
        } catch (Throwable th2) {
            QSm.tB("TTAD.RFVideoPlayerMag", "onContinue throw Exception :" + th2.getMessage());
        }
    }

    public void oJ(boolean z10, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk, boolean z11) {
        if (this.WcQ || !(!z11 || z10 || this.Pfn)) {
            if (jFA()) {
                QSm();
                Log.i("TTAD.RFVideoPlayerMag", "resumeOrRestartVideo: continue play");
            } else {
                nQI();
                ZYk(zYk);
                Log.i("TTAD.RFVideoPlayerMag", "resumeOrRestartVideo: recreate video player & exec play");
            }
            this.WcQ = false;
        }
    }

    public void oJ(oJ.InterfaceC0200oJ interfaceC0200oJ) {
        this.IUZ = interfaceC0200oJ;
    }
}
