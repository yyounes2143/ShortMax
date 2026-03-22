package com.bytedance.sdk.openadsdk.core.kkU.ba;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.adsdk.ugeno.core.BTZ;
import com.bytedance.adsdk.ugeno.core.awB;
import com.bytedance.adsdk.ugeno.core.eZI;
import com.bytedance.adsdk.ugeno.ex.ba;
import com.bytedance.sdk.component.adexpress.ZYk.WcQ;
import com.bytedance.sdk.component.adexpress.ZYk.so;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.eZI;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.so.QSm;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB implements awB, eZI, com.bytedance.sdk.component.adexpress.ZYk.ex<View>, com.bytedance.sdk.component.adexpress.dynamic.ex {
    private static long IUZ = 0;
    private static float Jc = 0.0f;
    private static float Ln = 0.0f;
    private static float LpP = 0.0f;
    private static float nke = 0.0f;

    /* renamed from: oq  reason: collision with root package name */
    protected static int f13159oq = 24;
    protected com.bytedance.adsdk.ugeno.ZYk.tB BTZ;
    private final boolean HL;
    protected WeakReference<View> Id;
    protected cY Pfn;
    protected com.bytedance.adsdk.ugeno.ZYk.tB PiB;
    protected long RZ;
    protected long Ry;
    private ex UN;
    protected float WcQ;
    protected JSONObject Xe;
    protected Context ZYk;
    protected float awB;

    /* renamed from: ba  reason: collision with root package name */
    protected oJ f13160ba;
    protected FrameLayout cFZ;
    protected String cY;
    protected float eZI;
    protected JSONObject ex;
    protected com.bytedance.sdk.openadsdk.core.so.awB jFA;
    protected WcQ kkU;

    /* renamed from: mu  reason: collision with root package name */
    private QSm f13162mu;
    protected BTZ oJ;

    /* renamed from: si  reason: collision with root package name */
    protected float f13163si;

    /* renamed from: so  reason: collision with root package name */
    protected so f13164so;
    protected com.bytedance.adsdk.ugeno.ZYk.tB<View> tB;

    /* renamed from: tb  reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.ZYk.cFZ f13165tb;
    protected boolean QSm = true;

    /* renamed from: jr  reason: collision with root package name */
    public SparseArray<tB.oJ> f13161jr = new SparseArray<>();
    private String XAo = "";
    private final com.bytedance.sdk.component.so.so ofl = new com.bytedance.sdk.component.so.so("ugen_render_template") { // from class: com.bytedance.sdk.openadsdk.core.kkU.ba.tB.1
        @Override // java.lang.Runnable
        public void run() {
            tB tBVar = tB.this;
            tBVar.ex = tBVar.oJ();
            if (tB.this.f13162mu == null) {
                tB.this.XAo = "expressView is null";
            } else {
                tB tBVar2 = tB.this;
                tBVar2.XAo = tBVar2.f13162mu.getUgenTemplateErrorReason();
            }
            com.bytedance.sdk.openadsdk.core.WcQ.tB().post(tB.this.f13166wd);
        }
    };

    /* renamed from: wd  reason: collision with root package name */
    private final Runnable f13166wd = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.kkU.ba.tB.2
        @Override // java.lang.Runnable
        public void run() {
            if (tB.this.f13165tb != null) {
                tB tBVar = tB.this;
                tBVar.ZYk(tBVar.f13165tb);
            }
        }
    };
    private boolean HyG = false;
    protected AtomicBoolean dLZ = new AtomicBoolean(false);

    static {
        if (si.oJ() != null) {
            f13159oq = si.ZYk();
        }
    }

    public tB(Context context, cY cYVar, boolean z10, oJ oJVar, ViewGroup viewGroup) {
        this.ZYk = context;
        this.HL = z10;
        this.oJ = new BTZ(context);
        this.Pfn = cYVar;
        this.f13160ba = oJVar;
        this.cFZ = new FrameLayout(context);
        if (viewGroup instanceof QSm) {
            this.f13162mu = (QSm) viewGroup;
        }
        this.cY = oJVar.ex();
        JSONObject ZYk = ZYk();
        this.Xe = ZYk;
        this.UN = new ex(this.ZYk, this.Pfn, this.cY, ZYk);
    }

    private void kkU() {
        com.bytedance.adsdk.ugeno.ZYk.tB<View> ex;
        if (this.tB == null) {
            return;
        }
        if (this.Pfn.zF() && (ex = this.tB.ex("tvskip")) != null) {
            ex.tB(8);
        }
        com.bytedance.adsdk.ugeno.ZYk.tB<View> ex2 = this.tB.ex("skip");
        if (ex2 != null && (ex2 instanceof com.bytedance.adsdk.ugeno.jFA.ex.tB)) {
            if (!PiB.ib().PiB(String.valueOf(this.Pfn.uv())) || this.Pfn.LS() == 5 || this.Pfn.LS() == 6 || this.Pfn.TxP() == 3) {
                ((com.bytedance.adsdk.ugeno.jFA.ex.tB) ex2).BTZ("local://tt_close_btn");
                ex2.ZYk();
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
    public View Pfn() {
        return this.cFZ;
    }

    public com.bytedance.adsdk.ugeno.ZYk.tB ba() {
        com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar = this.tB;
        if (tBVar == null) {
            return null;
        }
        return tBVar.Pfn("PlayableComponent");
    }

    public com.bytedance.adsdk.ugeno.ZYk.tB cFZ() {
        return null;
    }

    protected int ex() {
        this.oJ.oJ((awB) this);
        this.oJ.oJ((eZI) this);
        com.bytedance.adsdk.ugeno.ZYk.tB<View> oJ = this.oJ.oJ(this.ex);
        this.tB = oJ;
        ex exVar = this.UN;
        if (exVar != null && oJ != null) {
            exVar.oJ(oJ);
        }
        this.f13160ba.Jc().ZYk();
        this.f13160ba.Jc().tB();
        this.oJ.ZYk(this.Xe);
        return 0;
    }

    protected com.bytedance.adsdk.ugeno.ZYk.tB jFA() {
        com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar = this.tB;
        if (tBVar == null) {
            return null;
        }
        return tBVar.ex("feedback");
    }

    public void oJ(long j10, long j11) {
    }

    public void setSoundMute(boolean z10) {
        com.bytedance.adsdk.ugeno.ZYk.tB<View> ex;
        com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar = this.tB;
        if (tBVar != null && (ex = tBVar.ex("mute")) != null) {
            if (z10) {
                ((com.bytedance.adsdk.ugeno.jFA.ex.tB) ex).BTZ("local://tt_reward_full_mute");
            } else {
                ((com.bytedance.adsdk.ugeno.jFA.ex.tB) ex).BTZ("local://tt_reward_full_unmute");
            }
            ex.ZYk();
        }
    }

    public void setTime(CharSequence charSequence, int i10, int i11, boolean z10) {
        if (this.tB == null) {
            return;
        }
        boolean z11 = true;
        if (i10 != 1) {
            z11 = false;
        }
        oJ(charSequence, z11, i11, z10);
        ZYk(charSequence, z11, i11, z10);
    }

    protected com.bytedance.adsdk.ugeno.ZYk.tB so() {
        com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar = this.tB;
        if (tBVar == null) {
            return null;
        }
        return tBVar.ex("video");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(com.bytedance.sdk.component.adexpress.ZYk.cFZ cfz) {
        List<String> ZYk;
        this.f13160ba.Jc().oJ();
        if (this.ex == null) {
            cfz.oJ(133, "ugen template is null real reason is " + this.XAo);
        } else if (this.Xe == null) {
            cfz.oJ(133, "ugen data is null");
        } else {
            int ex = ex();
            if (this.oJ.oJ()) {
                if (this.oJ.ZYk() == null) {
                    cfz.oJ(138, "unknow widget");
                    return;
                }
                cfz.oJ(138, "unknow widget;" + ZYk.toString());
            } else if (ex != 0) {
                cfz.oJ(ex, "ugen render fail");
            } else if (this.tB != null) {
                ZYk zYk = new ZYk();
                this.kkU = zYk;
                zYk.oJ(true);
                this.kkU.oJ(tB());
                setSoundMute(this.HL);
                kkU();
                com.bytedance.adsdk.ugeno.ZYk.tB so2 = so();
                this.BTZ = so2;
                if (so2 != null && (so2 instanceof com.bytedance.sdk.openadsdk.core.kkU.ZYk.ex.ZYk)) {
                    ((ZYk) this.kkU).oJ((FrameLayout) ((com.bytedance.sdk.openadsdk.core.kkU.ZYk.ex.ZYk) so2).ex());
                }
                com.bytedance.adsdk.ugeno.ZYk.tB jFA = jFA();
                ex exVar = this.UN;
                if (exVar != null) {
                    exVar.oJ();
                }
                if (jFA != null && jFA.dLZ() != null) {
                    this.Id = new WeakReference<>(jFA.dLZ());
                }
                com.bytedance.adsdk.ugeno.ZYk.tB ba2 = ba();
                this.PiB = ba2;
                if (ba2 != null && (ba2 instanceof com.bytedance.adsdk.ugeno.jFA.ZYk.ZYk)) {
                    ((ZYk) this.kkU).ZYk((FrameLayout) ba2.dLZ());
                }
                if (Ln.tB(this.Pfn)) {
                    com.bytedance.adsdk.ugeno.ZYk.tB cFZ = cFZ();
                    if (cFZ instanceof com.bytedance.sdk.openadsdk.core.kkU.ZYk.ZYk.ZYk) {
                        ((ZYk) this.kkU).tB(((com.bytedance.sdk.openadsdk.core.kkU.ZYk.ZYk.ZYk) cFZ).ex());
                    }
                }
                int XAo = this.tB.XAo();
                int ofl = this.tB.ofl();
                this.cFZ.removeAllViews();
                this.cFZ.addView(this.tB.dLZ(), new FrameLayout.LayoutParams(XAo, ofl));
                float Ln2 = this.f13160ba.Ln();
                float LpP2 = this.f13160ba.LpP();
                float ZYk2 = cdg.ZYk(this.ZYk, Ln2);
                float ZYk3 = cdg.ZYk(this.ZYk, LpP2);
                if (tB() != 7) {
                    this.cFZ.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                } else if (LpP2 <= 0.0f) {
                    this.cFZ.setLayoutParams(new FrameLayout.LayoutParams((int) ZYk2, -2));
                } else {
                    this.cFZ.setLayoutParams(new FrameLayout.LayoutParams((int) ZYk2, (int) ZYk3));
                }
                if (LpP2 > 0.0f && Ln2 > 0.0f) {
                    this.kkU.oJ(Ln2);
                    this.kkU.ZYk(LpP2);
                } else {
                    this.cFZ.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    int tB = cdg.tB(this.ZYk, this.cFZ.getMeasuredWidth());
                    int tB2 = cdg.tB(this.ZYk, this.cFZ.getMeasuredHeight());
                    this.kkU.oJ(tB);
                    this.kkU.ZYk(tB2);
                }
                if (this.dLZ.get()) {
                    cfz.oJ(137, "ugen render timeout");
                    return;
                }
                this.oJ.oJ(this.tB, "renderDidFinish", new Object[0]);
                cfz.oJ(this.cFZ, this.kkU);
            } else {
                cfz.oJ(138, "ugen render error");
            }
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.awB
    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, ba.oJ oJVar) {
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
    public int tB() {
        return this.Pfn.uvK();
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.cFZ cfz) {
        this.f13165tb = cfz;
        ofl.ZYk(this.ofl);
    }

    protected JSONObject oJ() {
        return this.f13160ba.tB();
    }

    public void oJ(boolean z10) {
        this.dLZ.set(z10);
    }

    public void oJ(so soVar) {
        this.f13164so = soVar;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.so.awB awb) {
        this.jFA = awb;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.widget.Pfn pfn) {
        ex exVar = this.UN;
        if (exVar != null) {
            exVar.oJ(pfn);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.awB
    public void oJ(com.bytedance.adsdk.ugeno.core.PiB piB, awB.ZYk zYk, awB.oJ oJVar) {
        if (piB == null) {
            return;
        }
        if (piB.ZYk() == 1 || piB.ZYk() == 4) {
            oJ(piB);
        }
        if (piB.ZYk() == 10) {
            oJ(piB.tB());
        }
        if (zYk == null || piB.ex() == null) {
            return;
        }
        zYk.oJ(piB.ex());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ex
    public void onvideoComplate() {
    }

    private void oJ(JSONObject jSONObject) {
        com.bytedance.adsdk.ugeno.ZYk.tB<View> ex;
        if (this.tB == null || jSONObject == null) {
            return;
        }
        String optString = jSONObject.optString("type");
        String optString2 = jSONObject.optString("nodeId");
        if (TextUtils.isEmpty(optString2) || (ex = this.tB.ex(optString2)) == null) {
            return;
        }
        if (TextUtils.equals(optString, "onShow")) {
            ex.tB(0);
        } else if (TextUtils.equals(optString, "onDismiss")) {
            ex.tB(8);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ex
    public void setTimeUpdate(int i10) {
    }

    private void oJ(com.bytedance.adsdk.ugeno.core.PiB piB) {
        JSONObject jSONObject;
        boolean z10;
        int i10;
        String str;
        ex exVar;
        ex exVar2;
        ex exVar3;
        int i11 = 5;
        boolean z11 = true;
        if (this.f13164so == null) {
            return;
        }
        String optString = piB.tB().optString("type");
        if ("swiperLeft".equals(optString) && (exVar3 = this.UN) != null) {
            exVar3.ZYk();
        } else if ("swiperRight".equals(optString) && (exVar2 = this.UN) != null) {
            exVar2.tB();
        } else {
            if (!"swiperClick".equals(optString) || (exVar = this.UN) == null) {
                jSONObject = null;
                z10 = false;
                i10 = 0;
            } else {
                z10 = exVar.oJ(piB);
                jSONObject = this.UN.ex();
                i10 = 2;
            }
            optString.hashCode();
            char c10 = 65535;
            switch (optString.hashCode()) {
                case -314498168:
                    if (optString.equals("privacy")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -191501435:
                    if (optString.equals("feedback")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3363353:
                    if (optString.equals("mute")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3532159:
                    if (optString.equals("skip")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 112202875:
                    if (optString.equals("video")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 1820422063:
                    if (optString.equals("creative")) {
                        c10 = 5;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    i11 = 7;
                    break;
                case 1:
                    i11 = 3;
                    break;
                case 2:
                    break;
                case 3:
                    i11 = 6;
                    break;
                case 4:
                    i11 = 4;
                    break;
                case 5:
                    i11 = 2;
                    break;
                default:
                    i11 = i10;
                    break;
            }
            com.bytedance.adsdk.ugeno.ZYk.tB oJ = piB.oJ();
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            WeakReference<View> weakReference = this.Id;
            if (weakReference != null) {
                int[] oJ2 = cdg.oJ(weakReference.get());
                if (oJ2 != null) {
                    iArr = oJ2;
                }
                int[] tB = cdg.tB(this.Id.get());
                if (tB != null) {
                    iArr2 = tB;
                }
            }
            eZI.oJ oJ3 = new eZI.oJ().ex(this.WcQ).tB(this.awB).ZYk(this.eZI).oJ(this.f13163si).ZYk(this.Ry).oJ(this.RZ).ex(iArr[0]).Pfn(iArr[1]).ba(iArr2[0]).cFZ(iArr2[1]).oJ(this.f13161jr);
            if (piB.ZYk() == 1 && !this.QSm) {
                z11 = false;
            }
            eZI.oJ oJ4 = oJ3.oJ(z11);
            if (oJ == null) {
                str = "";
            } else {
                str = oJ.mu() + "_" + oJ.UN();
            }
            this.f13164so.oJ(piB.oJ().dLZ(), i11, oJ4.oJ(str).ZYk(z10).ZYk(jSONObject).oJ());
        }
    }

    protected JSONObject ZYk() {
        return this.f13160ba.nke();
    }

    private void ZYk(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        com.bytedance.adsdk.ugeno.ZYk.tB<View> ex;
        View dLZ;
        com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar = this.tB;
        if (tBVar == null || (ex = tBVar.ex("skip")) == null || (dLZ = ex.dLZ()) == null) {
            return;
        }
        int i11 = 0;
        if (!z10 && !z11) {
            i11 = 8;
        }
        dLZ.setVisibility(i11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0058, code lost:
        if (com.bytedance.sdk.openadsdk.core.kkU.ba.tB.Jc <= r2) goto L23;
     */
    @Override // com.bytedance.adsdk.ugeno.core.eZI
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB r12, android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.kkU.ba.tB.oJ(com.bytedance.adsdk.ugeno.ZYk.tB, android.view.MotionEvent):void");
    }

    private void oJ(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        com.bytedance.adsdk.ugeno.ZYk.tB<View> ex;
        int i11;
        com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar = this.tB;
        if (tBVar == null || (ex = tBVar.ex("countdown")) == null) {
            return;
        }
        View dLZ = ex.dLZ();
        if (dLZ instanceof TextView) {
            try {
                i11 = Integer.parseInt((String) charSequence);
            } catch (Exception unused) {
                com.bytedance.sdk.component.utils.QSm.tB("UGenRender", "parse duration exception", charSequence);
                i11 = 0;
            }
            if (!z11 && i11 > 0 && !this.HyG) {
                dLZ.setVisibility(0);
                if (!z10 && this.f13160ba.oJ() && com.bytedance.sdk.component.adexpress.ex.ba.ZYk(this.f13160ba.ex())) {
                    ((TextView) dLZ).setText(String.format(com.bytedance.sdk.component.utils.cY.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), "tt_reward_full_skip"), Integer.valueOf(i10)));
                    return;
                } else if (!"open_ad".equals(this.f13160ba.ex()) && this.f13160ba.oJ()) {
                    this.HyG = true;
                    dLZ.setVisibility(8);
                    return;
                } else {
                    ((TextView) dLZ).setText(((Object) charSequence) + "s");
                    return;
                }
            }
            dLZ.setVisibility(8);
        }
    }
}
