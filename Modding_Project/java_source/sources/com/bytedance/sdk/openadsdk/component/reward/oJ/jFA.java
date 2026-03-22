package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.HomeWatcherReceiver;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.QSm.cFZ;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class jFA implements Handler.Callback {
    private static final cFZ.oJ kkU = new cFZ.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.jFA.1
    };
    private final Activity BTZ;
    private com.bytedance.sdk.openadsdk.QSm.so Id;
    @NonNull
    private final cY PiB;
    private com.bytedance.sdk.openadsdk.core.widget.kkU RZ;
    private final String WcQ;
    private boolean Xe;
    private final oJ awB;
    private boolean cY;
    private volatile boolean dLZ;
    private boolean jFA;

    /* renamed from: jr  reason: collision with root package name */
    private volatile boolean f13013jr;

    /* renamed from: oq  reason: collision with root package name */
    private HomeWatcherReceiver f13014oq;

    /* renamed from: si  reason: collision with root package name */
    private si f13015si;

    /* renamed from: so  reason: collision with root package name */
    private boolean f13016so;

    /* renamed from: tb  reason: collision with root package name */
    private boolean f13017tb;
    protected final AtomicBoolean oJ = new AtomicBoolean(false);
    private final Handler eZI = new Handler(this);
    boolean ZYk = false;
    boolean tB = false;
    long ex = 0;
    int Pfn = 0;

    /* renamed from: ba  reason: collision with root package name */
    int f13012ba = 0;
    int cFZ = 0;
    private int Ry = 1;
    private boolean QSm = true;
    private final com.bytedance.sdk.openadsdk.BTZ.Pfn HL = new com.bytedance.sdk.openadsdk.BTZ.Pfn() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.jFA.8
        @Override // com.bytedance.sdk.openadsdk.BTZ.Pfn
        public void oJ() {
            if (!jFA.this.awB.HyG.isFinishing() && jFA.this.awB.ZYk.bbM() && Ln.awB(jFA.this.awB.ZYk)) {
                jFA.this.eZI.removeMessages(800);
                jFA.this.eZI.sendMessage(jFA.oJ(1, 0));
            }
        }
    };

    public jFA(oJ oJVar) {
        this.f13016so = true;
        this.awB = oJVar;
        this.BTZ = oJVar.HyG;
        this.WcQ = oJVar.Pfn;
        cY cYVar = oJVar.ZYk;
        this.PiB = cYVar;
        this.f13016so = Ln.cFZ(cYVar);
    }

    private boolean Id() {
        if (this.RZ == null) {
            return false;
        }
        if (this.PiB.bbM() && Ln.si(this.PiB)) {
            this.RZ.ZYk(this.PiB, this.Ry);
            return true;
        }
        this.RZ.tB();
        return false;
    }

    @NonNull
    private static com.bytedance.sdk.openadsdk.QSm.ex QSm() {
        String ba2 = com.bytedance.sdk.openadsdk.common.ZYk.ba();
        ba2.hashCode();
        char c10 = 65535;
        switch (ba2.hashCode()) {
            case 1653:
                if (ba2.equals("2g")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1684:
                if (ba2.equals("3g")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1715:
                if (ba2.equals("4g")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1746:
                if (ba2.equals("5g")) {
                    c10 = 3;
                    break;
                }
                break;
            case 3649301:
                if (ba2.equals("wifi")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return com.bytedance.sdk.openadsdk.QSm.ex.TYPE_2G;
            case 1:
                return com.bytedance.sdk.openadsdk.QSm.ex.TYPE_3G;
            case 2:
                return com.bytedance.sdk.openadsdk.QSm.ex.TYPE_4G;
            case 3:
                return com.bytedance.sdk.openadsdk.QSm.ex.TYPE_5G;
            case 4:
                return com.bytedance.sdk.openadsdk.QSm.ex.TYPE_WIFI;
            default:
                return com.bytedance.sdk.openadsdk.QSm.ex.TYPE_UNKNOWN;
        }
    }

    static /* synthetic */ com.bytedance.sdk.openadsdk.QSm.ex RZ() {
        return QSm();
    }

    private String cY() {
        String str;
        String str2;
        String cY = com.bytedance.sdk.openadsdk.core.si.ex().cY();
        if (!TextUtils.isEmpty(cY) && this.PiB.Wd() != null) {
            String ZYk = this.PiB.Wd().ZYk();
            double ex = this.PiB.Wd().ex();
            int Pfn = this.PiB.Wd().Pfn();
            if (this.PiB.Zjw() != null && !TextUtils.isEmpty(this.PiB.Zjw().oJ())) {
                str = this.PiB.Zjw().oJ();
            } else {
                str = "";
            }
            String edj = this.PiB.edj();
            String tB = this.PiB.Wd().tB();
            String oJ = this.PiB.Wd().oJ();
            String ZYk2 = this.PiB.Wd().ZYk();
            String UUI = this.PiB.UUI();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("appname=");
            sb2.append(URLEncoder.encode(ZYk));
            sb2.append("&stars=");
            sb2.append(ex);
            sb2.append("&comments=");
            sb2.append(Pfn);
            sb2.append("&icon=");
            sb2.append(URLEncoder.encode(str));
            sb2.append("&downloading=true&id=");
            sb2.append(URLEncoder.encode(edj));
            sb2.append("&packageName=");
            sb2.append(URLEncoder.encode(tB));
            sb2.append("&downloadUrl=");
            sb2.append(URLEncoder.encode(oJ));
            sb2.append("&name=");
            sb2.append(URLEncoder.encode(ZYk2));
            sb2.append("&orientation=");
            if (this.Ry == 1) {
                str2 = "portrait";
            } else {
                str2 = "landscape";
            }
            sb2.append(str2);
            sb2.append("&apptitle=");
            sb2.append(URLEncoder.encode(UUI));
            return cY + "?" + ((Object) sb2);
        }
        return cY;
    }

    private void oq() {
        if (!this.f13016so) {
            return;
        }
        this.RZ = (com.bytedance.sdk.openadsdk.core.widget.kkU) this.awB.f13027wd.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.Zwf);
    }

    public void BTZ() {
        if (!this.f13016so) {
            return;
        }
        com.bytedance.sdk.openadsdk.QSm.so soVar = this.Id;
        if (soVar != null) {
            soVar.tB(false);
        }
        this.eZI.removeMessages(900);
    }

    public void PiB() {
        if (!this.f13016so) {
            return;
        }
        this.eZI.removeMessages(900);
        this.eZI.removeMessages(600);
    }

    public com.bytedance.sdk.openadsdk.QSm.so Ry() {
        return this.Id;
    }

    public com.bytedance.sdk.openadsdk.BTZ.Pfn WcQ() {
        return this.HL;
    }

    public boolean awB() {
        return this.f13013jr;
    }

    public void cFZ() {
        int i10;
        if (!this.f13016so || this.RZ.isShown()) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.kkU kku = this.RZ;
        if (kku != null) {
            kku.ZYk(this.PiB, this.Ry);
            if (this.awB.Jc.kkU() != null) {
                i10 = this.awB.Jc.kkU().getProgress();
            } else {
                i10 = 0;
            }
            this.RZ.setProgress(i10);
        }
        com.bytedance.sdk.openadsdk.QSm.so soVar = this.Id;
        if (soVar != null) {
            soVar.LpP();
        }
    }

    public void dLZ() {
        if (this.f13016so && this.Id != null && cdg.ex(this.awB.Jc.kkU())) {
            this.Id.tB(true);
        }
    }

    public boolean eZI() {
        return this.Xe;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        com.bytedance.sdk.openadsdk.core.widget.kkU kku;
        si siVar;
        int i10 = message.what;
        if (i10 == 900) {
            if (!this.dLZ || !Ln.si(this.awB.ZYk)) {
                return true;
            }
            int i11 = message.arg1;
            if (i11 > 0) {
                this.awB.f13022mu.ex(true);
                int ZYk = this.awB.Xe.ZYk(i11);
                if (ZYk == i11) {
                    this.awB.f13022mu.oJ(String.valueOf(i11), null);
                } else if (ZYk > 0) {
                    this.awB.f13022mu.oJ(String.valueOf(i11), String.format(com.bytedance.sdk.component.utils.cY.oJ(this.awB.HyG.getApplicationContext(), "tt_skip_ad_time_text"), Integer.valueOf(ZYk)));
                } else if (Ln.so(this.PiB) && !awB()) {
                    this.awB.f13022mu.oJ(String.valueOf(i11), com.bytedance.sdk.component.utils.cY.oJ(this.awB.HyG.getApplicationContext(), "tt_reward_screen_skip_tx"));
                    this.awB.f13022mu.Pfn(true);
                } else {
                    this.awB.RZ.set(true);
                    this.awB.UK.awB();
                }
                Message obtain = Message.obtain();
                obtain.what = 900;
                obtain.arg1 = i11 - 1;
                this.eZI.sendMessageDelayed(obtain, 1000L);
                ex(i11);
            } else {
                if (Ln.so(this.PiB) && (!Ln.Id(this.PiB) || !this.awB.Xe.cFZ())) {
                    this.awB.f13022mu.tB();
                    this.awB.f13022mu.Pfn(true);
                } else {
                    this.awB.f13022mu.ex(false);
                    this.awB.RZ.set(true);
                    this.awB.UK.awB();
                }
                if (!this.jFA) {
                    this.Xe = true;
                }
            }
            this.awB.cdg.RZ();
        } else if (i10 != 800 || ((kku = this.RZ) != null && (!kku.isShown() || this.RZ.ex()))) {
            return true;
        } else {
            JSONObject jSONObject = new JSONObject();
            long j10 = 0;
            try {
                jSONObject.put("remove_loading_page_type", message.arg1);
                int i12 = message.arg2;
                if (i12 != 0) {
                    jSONObject.put("remove_loading_page_reason", i12);
                }
                String BTZ = Ln.BTZ(this.PiB);
                oJ oJVar = this.awB;
                if (oJVar != null && (siVar = oJVar.Jc) != null) {
                    String Xe = siVar.Xe();
                    if (!TextUtils.isEmpty(Xe)) {
                        BTZ = Xe;
                    }
                }
                jSONObject.put("playable_url", BTZ);
                com.bytedance.sdk.openadsdk.core.widget.kkU kku2 = this.RZ;
                if (kku2 != null) {
                    j10 = kku2.getDisplayDuration();
                }
                jSONObject.put("duration", j10);
            } catch (JSONException e10) {
                QSm.oJ("TTAD.RFPM", "handleMessage json error", e10);
            }
            long j11 = j10;
            oJ oJVar2 = this.awB;
            com.bytedance.sdk.openadsdk.ex.tB.oJ(oJVar2.ZYk, oJVar2.Pfn, "remove_loading_page", jSONObject, j11);
            this.eZI.removeMessages(800);
            if (!this.BTZ.isFinishing()) {
                this.awB.Xe.Pfn();
            }
        }
        return true;
    }

    public int jFA() {
        return this.f13012ba;
    }

    public int kkU() {
        return this.Pfn;
    }

    public boolean si() {
        com.bytedance.sdk.openadsdk.core.widget.kkU kku = this.RZ;
        if (kku != null && kku.isShown()) {
            return true;
        }
        return false;
    }

    public boolean so() {
        return this.dLZ;
    }

    public void Pfn() {
        if (this.f13016so && this.ex <= 0) {
            this.ex = System.currentTimeMillis();
            Handler handler = this.eZI;
            handler.sendMessage(handler.obtainMessage(900, jFA(), 0));
            tB(true);
        }
    }

    public void ZYk() {
        if (this.f13016so && !this.oJ.getAndSet(true)) {
            this.f13015si.mu();
            if (Ln.so(this.PiB)) {
                this.f13015si.cFZ();
            }
        }
    }

    public void ba() {
        com.bytedance.sdk.openadsdk.QSm.so soVar;
        com.bytedance.sdk.openadsdk.utils.WcQ wcQ;
        if (this.f13016so) {
            if (!Ln.so(this.PiB) && this.RZ.isShown() && (wcQ = this.awB.jXJ) != null) {
                wcQ.oJ(jFA() * 1000);
            }
            if (Ln.Ry(this.PiB) && this.RZ.isShown()) {
                oJ oJVar = this.awB;
                oJVar.XAo.ZYk(oJVar.UK);
            }
            com.bytedance.sdk.openadsdk.core.widget.kkU kku = this.RZ;
            if (kku != null) {
                kku.tB();
            }
            if (this.oJ.getAndSet(true)) {
                return;
            }
            if (this.awB.Jc.ofl() && (soVar = this.Id) != null) {
                soVar.oJ(1);
            }
            if (Ln.cFZ(this.PiB) && Ln.Id(this.PiB)) {
                si siVar = this.awB.Jc;
                if (siVar != null && !siVar.ofl()) {
                    int i10 = !this.awB.Jc.Ry() ? 2 : 3;
                    com.bytedance.sdk.openadsdk.QSm.so soVar2 = this.Id;
                    if (soVar2 != null) {
                        soVar2.oJ(i10);
                    }
                    if (Ln.si(this.awB.ZYk)) {
                        oJ oJVar2 = this.awB;
                        int i11 = oJVar2.f13020ba;
                        cY cYVar = oJVar2.ZYk;
                        oJ(i11, cYVar, cYVar.kO());
                        Pfn();
                        this.awB.cdg.eZI();
                    }
                    this.awB.XAo.oJ(false);
                    this.awB.Jc.XAo();
                    this.f13013jr = true;
                    this.awB.f13022mu.tB(false);
                    this.awB.Xe.Pfn(true);
                    this.awB.bgF = true;
                    if (Ln.Ry(this.PiB)) {
                        this.eZI.removeMessages(900);
                        this.awB.f13022mu.ex(false);
                        IUZ iuz = this.awB.Jm;
                        if (iuz != null) {
                            iuz.removeMessages(1);
                            this.awB.Jm.sendEmptyMessageDelayed(600, 1000L);
                        }
                    }
                    com.bytedance.sdk.openadsdk.QSm.so soVar3 = this.Id;
                    if (soVar3 != null) {
                        soVar3.tB(true);
                        return;
                    }
                    return;
                }
                oJ oJVar3 = this.awB;
                oJVar3.XAo.oJ(oJVar3.UK);
            }
        }
    }

    public void ex() {
        if (this.f13016so) {
            try {
                HomeWatcherReceiver homeWatcherReceiver = new HomeWatcherReceiver();
                this.f13014oq = homeWatcherReceiver;
                homeWatcherReceiver.oJ(new HomeWatcherReceiver.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.jFA.7
                    @Override // com.bytedance.sdk.component.utils.HomeWatcherReceiver.oJ
                    public void ZYk() {
                        jFA.this.tB = true;
                    }

                    @Override // com.bytedance.sdk.component.utils.HomeWatcherReceiver.oJ
                    public void oJ() {
                        jFA.this.tB = true;
                    }
                });
                this.BTZ.getApplicationContext().registerReceiver(this.f13014oq, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
            } catch (Throwable unused) {
            }
        }
    }

    public void tB() {
        if (this.f13016so && !this.f13017tb) {
            this.f13017tb = true;
            tB(false);
            oJ(this.BTZ.getApplicationContext());
            com.bytedance.sdk.openadsdk.QSm.so soVar = this.Id;
            if (soVar != null) {
                soVar.XAo();
            }
            this.eZI.removeCallbacksAndMessages(null);
        }
    }

    public static Message oJ(int i10, int i11) {
        Message obtain = Message.obtain();
        obtain.what = 800;
        obtain.arg1 = i10;
        if (i10 == 3) {
            obtain.arg2 = i11;
        }
        return obtain;
    }

    public void Pfn(int i10) {
        this.Pfn = i10;
    }

    public void ZYk(boolean z10) {
        if (this.f13016so) {
            if (z10) {
                try {
                    if (!TextUtils.isEmpty(this.f13015si.Xe()) && this.f13015si.cY() != 0) {
                        com.bytedance.sdk.openadsdk.awB.tB.oJ().oJ(this.f13015si.Xe(), this.f13015si.cY(), this.f13015si.jr());
                    }
                } catch (Throwable unused) {
                }
            }
            if (z10) {
                try {
                    if (TextUtils.isEmpty(this.f13015si.Xe())) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.awB.tB.oJ().ZYk(this.f13015si.Xe());
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public void ex(int i10) {
        this.Pfn = i10 - 1;
    }

    public void oJ(int i10) {
        if (this.f13016so) {
            if (i10 == 5) {
                this.jFA = true;
                if (Ln.Id(this.PiB)) {
                    this.eZI.removeMessages(900);
                    this.awB.Jm.sendEmptyMessage(600);
                }
            }
            this.eZI.sendMessage(oJ(i10, 0));
        }
    }

    public void Pfn(boolean z10) {
        com.bytedance.sdk.openadsdk.QSm.so soVar;
        if (this.f13016so && (soVar = this.Id) != null) {
            soVar.oJ(z10);
        }
    }

    public void ex(boolean z10) {
        com.bytedance.sdk.openadsdk.QSm.so soVar;
        if (this.f13016so && (soVar = this.Id) != null) {
            soVar.tB(z10);
        }
    }

    public void tB(boolean z10) {
        if (this.f13016so) {
            this.dLZ = z10;
            if (z10) {
                return;
            }
            this.eZI.removeMessages(900);
        }
    }

    public void ZYk(int i10) {
        com.bytedance.sdk.openadsdk.core.widget.kkU kku;
        if (this.f13016so && (kku = this.RZ) != null) {
            kku.setProgress(i10);
        }
    }

    public void oJ() {
        if (this.f13016so && !this.cY) {
            this.cY = true;
            oJ oJVar = this.awB;
            this.f13015si = oJVar.Jc;
            this.Ry = oJVar.oTd;
            oq();
            if (Id() && Ln.si(this.PiB) && Ln.awB(this.PiB)) {
                Handler handler = this.eZI;
                handler.sendMessageDelayed(handler.obtainMessage(800, 2, Ln.oJ(2)), Ln.RZ(this.PiB) * 1000);
            }
        }
    }

    public int tB(int i10) {
        return this.cFZ - (this.f13012ba - i10);
    }

    public void tB(String str) {
        com.bytedance.sdk.openadsdk.QSm.so soVar = this.Id;
        if (soVar == null || !this.f13016so) {
            return;
        }
        soVar.ba(com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(this.PiB));
        this.Id.so(str);
    }

    public void ZYk(String str) {
        com.bytedance.sdk.openadsdk.QSm.so soVar = this.Id;
        if (soVar != null) {
            if (!this.f13016so) {
                return;
            }
            soVar.ba(com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(this.PiB));
            this.Id.jFA(str);
        }
        if (awB()) {
            this.awB.Jc.Pfn(true);
            this.awB.nke.oJ(true);
            this.awB.bgF = true;
        }
    }

    public void oJ(final com.bytedance.sdk.openadsdk.BTZ.ba baVar, boolean z10) {
        com.bytedance.sdk.openadsdk.awB.ZYk zYk;
        com.bytedance.sdk.component.oJ.si ZYk;
        com.bytedance.sdk.openadsdk.QSm.so Pfn;
        if (this.f13016so && Ln.cFZ(this.PiB) && this.awB.Qu) {
            if (com.bytedance.sdk.openadsdk.core.jFA.ZYk().si()) {
                com.bytedance.sdk.openadsdk.QSm.cFZ.oJ(kkU);
            }
            com.bytedance.sdk.openadsdk.QSm.oJ oJVar = new com.bytedance.sdk.openadsdk.QSm.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.jFA.2
                @Override // com.bytedance.sdk.openadsdk.QSm.oJ
                public void ZYk() {
                    jFA.this.awB.Jc.BTZ().tB(true);
                    com.bytedance.sdk.openadsdk.BTZ.ba baVar2 = baVar;
                    if (baVar2 != null) {
                        baVar2.oJ();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.QSm.oJ
                public void oJ(int i10, String str) {
                    super.oJ(i10, str);
                    if (jFA.this.RZ == null || !jFA.this.RZ.isShown()) {
                        return;
                    }
                    jFA.this.eZI.sendMessage(jFA.oJ(3, Ln.oJ(i10)));
                }

                @Override // com.bytedance.sdk.openadsdk.QSm.oJ
                public com.bytedance.sdk.openadsdk.QSm.ex oJ() {
                    return jFA.RZ();
                }

                @Override // com.bytedance.sdk.openadsdk.QSm.oJ
                public void oJ(JSONObject jSONObject) {
                    com.bytedance.sdk.openadsdk.ex.tB.ZYk(jFA.this.PiB, jFA.this.WcQ, "playable_track", jSONObject);
                }
            };
            com.bytedance.sdk.openadsdk.QSm.tB tBVar = new com.bytedance.sdk.openadsdk.QSm.tB() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.jFA.3
                @Override // com.bytedance.sdk.openadsdk.QSm.tB
                public void oJ(String str, JSONObject jSONObject) {
                    jFA.this.awB.Jc.BTZ().oJ(str, jSONObject);
                }
            };
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(BidResponsedEx.KEY_CID, this.PiB.edj());
                jSONObject.put("log_extra", this.PiB.pe());
                Pfn = com.bytedance.sdk.openadsdk.QSm.so.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), this.awB.Jc.kkU().getWebView(), tBVar, oJVar).cFZ(this.awB.Jc.Xe()).Pfn(com.bytedance.sdk.openadsdk.common.ZYk.oJ(com.bytedance.sdk.openadsdk.core.si.oJ())).oJ(com.bytedance.sdk.openadsdk.common.ZYk.oJ()).tB(jSONObject).oJ("sdkEdition", com.bytedance.sdk.openadsdk.common.ZYk.tB()).ZYk(com.bytedance.sdk.openadsdk.common.ZYk.Pfn()).ex(com.bytedance.sdk.openadsdk.common.ZYk.ex()).ex(false).oJ(z10).oJ(Ln.RZ(this.PiB)).ZYk(Ln.RZ(this.PiB)).Pfn(Ln.si(this.PiB));
                this.Id = Pfn;
            } catch (Exception unused) {
                if (this.Id == null) {
                    zYk = new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.jFA.4
                        @Override // com.bytedance.sdk.openadsdk.awB.ZYk
                        public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("PlayablePlugin_is_null", true);
                            return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("PlayablePlugin_init").ZYk(jSONObject2.toString());
                        }
                    };
                }
            } catch (Throwable th2) {
                if (this.Id == null) {
                    com.bytedance.sdk.openadsdk.awB.tB.oJ("PlayablePlugin_init", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.jFA.4
                        @Override // com.bytedance.sdk.openadsdk.awB.ZYk
                        public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("PlayablePlugin_is_null", true);
                            return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("PlayablePlugin_init").ZYk(jSONObject2.toString());
                        }
                    });
                }
                throw th2;
            }
            if (Pfn == null) {
                zYk = new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.jFA.4
                    @Override // com.bytedance.sdk.openadsdk.awB.ZYk
                    public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("PlayablePlugin_is_null", true);
                        return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("PlayablePlugin_init").ZYk(jSONObject2.toString());
                    }
                };
                com.bytedance.sdk.openadsdk.awB.tB.oJ("PlayablePlugin_init", false, zYk);
            }
            if (this.Id != null && !TextUtils.isEmpty(Ln.dLZ(this.PiB))) {
                this.Id.tB(Ln.dLZ(this.PiB));
            }
            com.bytedance.sdk.openadsdk.QSm.so soVar = this.Id;
            if (soVar != null) {
                Set<String> dLZ = soVar.dLZ();
                final WeakReference weakReference = new WeakReference(this.Id);
                for (String str : dLZ) {
                    if (!"subscribe_app_ad".equals(str) && !"adInfo".equals(str) && !"webview_time_track".equals(str) && !"download_app_ad".equals(str) && (ZYk = this.awB.Jc.BTZ().ZYk()) != null) {
                        ZYk.oJ(str, new com.bytedance.sdk.component.oJ.Pfn<JSONObject, JSONObject>() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.jFA.5
                            @Override // com.bytedance.sdk.component.oJ.Pfn
                            public JSONObject oJ(@NonNull JSONObject jSONObject2, @NonNull com.bytedance.sdk.component.oJ.ba baVar2) {
                                try {
                                    com.bytedance.sdk.openadsdk.QSm.so soVar2 = (com.bytedance.sdk.openadsdk.QSm.so) weakReference.get();
                                    if (soVar2 == null) {
                                        return null;
                                    }
                                    return soVar2.ex(oJ(), jSONObject2);
                                } catch (Throwable unused2) {
                                    return null;
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    public void ba(boolean z10) {
        if (this.f13016so && z10 && !this.awB.Xe.cFZ()) {
            com.bytedance.sdk.openadsdk.QSm.so soVar = this.Id;
            if (soVar != null) {
                soVar.oJ(1);
            }
            boolean si2 = Ln.si(this.PiB);
            if ((si2 || Ln.Id(this.PiB)) && this.PiB.bbM() && !Ln.awB(this.PiB)) {
                Handler handler = this.eZI;
                handler.sendMessageDelayed(handler.obtainMessage(800, 0, 0), 1000L);
            }
            if (si2) {
                this.awB.Xe.so();
                this.awB.Jc.ZYk(true);
                this.awB.Jc.tB(true);
                com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), this.awB.ZYk, this.WcQ, "py_loading_success");
            }
        }
    }

    public void oJ(DownloadListener downloadListener) {
        com.bytedance.sdk.component.jFA.ba dLZ;
        if (this.f13016so && (dLZ = this.f13015si.dLZ()) != null) {
            String cY = cY();
            if (TextUtils.isEmpty(cY)) {
                return;
            }
            dLZ.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn(this.BTZ, this.f13015si.PiB(), this.PiB.edj(), null, false) { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.jFA.6
                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    if (jFA.this.QSm) {
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), jFA.this.PiB, jFA.this.WcQ, "loading_h5_success");
                    }
                    super.onPageFinished(webView, str);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                    jFA.this.QSm = false;
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                    super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                    jFA.this.QSm = false;
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, int i10, String str, String str2) {
                    super.onReceivedError(webView, i10, str, str2);
                    jFA.this.QSm = false;
                }
            });
            dLZ.a_(cY);
            dLZ.setDisplayZoomControls(false);
            dLZ.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.ex(this.f13015si.PiB(), this.f13015si.WcQ()));
            dLZ.setDownloadListener(downloadListener);
        }
    }

    public void oJ(boolean z10) {
        if (this.f13016so && z10) {
            this.f13015si.kkU().setDomStorageEnabled(true);
        }
    }

    private void oJ(Context context) {
        if (this.f13016so) {
            try {
                this.f13014oq.oJ(null);
                context.getApplicationContext().unregisterReceiver(this.f13014oq);
            } catch (Throwable unused) {
            }
        }
    }

    public void oJ(String str) {
        if (this.f13016so && this.tB) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("duration", System.currentTimeMillis() - this.ex);
            } catch (JSONException e10) {
                QSm.oJ("TTAD.RFPM", "sendPlayableEvent error", e10);
            }
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.PiB, this.WcQ, str, jSONObject);
            if ("return_foreground".equals(str)) {
                this.tB = false;
            }
        }
    }

    public void oJ(JSONObject jSONObject) {
        if (this.f13016so && jSONObject != null) {
            try {
                jSONObject.put("duration", System.currentTimeMillis() - this.ex);
            } catch (JSONException e10) {
                QSm.oJ("TTAD.RFPM", "endShow json error", e10);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void oJ(com.bytedance.sdk.openadsdk.core.ZYk.Pfn pfn) {
        com.bytedance.sdk.openadsdk.core.widget.kkU kku;
        if (!this.f13016so || (kku = this.RZ) == null || kku.getDownloadButton() == null) {
            return;
        }
        if (Ln.si(this.PiB) || Ln.Id(this.PiB)) {
            this.RZ.getDownloadButton().setOnClickListener(pfn);
            this.RZ.getDownloadButton().setOnTouchListener(pfn);
        }
    }

    public void oJ(int i10, cY cYVar, boolean z10) {
        if (this.f13016so && cYVar != null) {
            this.f13012ba = cYVar.zUb();
            this.cFZ = com.bytedance.sdk.openadsdk.core.si.ex().oJ(String.valueOf(i10), z10);
        }
    }

    public void oJ(int i10, String str, String str2) {
        if (this.f13016so) {
            try {
                com.bytedance.sdk.openadsdk.QSm.so soVar = this.Id;
                if (soVar != null) {
                    soVar.ba(com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(this.PiB));
                    this.Id.oJ(i10, str, str2);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void oJ(boolean z10, String str, int i10) {
        if (this.f13016so) {
            try {
                com.bytedance.sdk.openadsdk.QSm.so soVar = this.Id;
                if (soVar != null) {
                    soVar.ba(com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(this.PiB));
                    this.Id.oJ(z10, str, i10);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void oJ(long j10) {
        if (this.f13016so) {
            Message obtain = Message.obtain();
            obtain.what = 900;
            obtain.arg1 = kkU();
            this.eZI.sendMessageDelayed(obtain, j10);
        }
    }
}
