package com.bytedance.sdk.openadsdk.core.model;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sb;
import com.applovin.sdk.AppLovinErrorCodes;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.wd;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.huawei.hms.support.feature.result.CommonConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class cY {
    private int BHY;
    private PAGBannerSize BP;
    private so CE;
    private volatile boolean Dc;
    private boolean Du;
    private int EP;
    private com.bytedance.sdk.openadsdk.core.kkU.so.oJ Efd;
    private String HDW;
    private String Id;
    private int JC;
    private String JJ;
    private int Jc;
    private String Jm;
    private LpP KYc;
    private int LE;
    private String LS;
    private String LTg;
    private int LpP;
    private JSONObject MVA;
    private RZ Mrg;
    private String NO;
    private WcQ NX;
    private boolean OP;
    private String Oof;
    public long PiB;
    private com.bytedance.sdk.openadsdk.core.model.oJ QSm;
    private String Qu;
    private String RZ;
    private String Rl;
    private Pfn Ry;
    private oq SB;
    private JSONObject SCr;
    private Map<String, Object> SWT;
    private boolean SzJ;
    private long TA;
    private si TNk;
    private boolean Tt;
    private com.bytedance.sdk.openadsdk.core.kkU.so.oJ Tvw;
    private com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk UF;
    private int UK;
    private Ry UN;
    private String Uf;
    private boolean VJm;
    private int VSB;
    private String Vh;
    private String VzB;
    private JSONObject Wd;
    private String XAo;
    private AdSlot XQY;
    private int Xe;
    private int YF;
    private boolean YQ;
    private String Yk;
    private String ZMY;
    private awB Zwf;
    private int Zy;
    private boolean bD;
    private int bgF;
    private int cY;
    private String cdg;
    private String dZS;
    private String dzr;
    private int eGo;
    private com.bytedance.sdk.openadsdk.core.dLZ.oJ eW;
    private Ln edj;
    private int fXU;
    private IUZ hW;
    private boolean jA;
    private String jB;
    protected long jFA;
    private com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk jXJ;

    /* renamed from: jr  reason: collision with root package name */
    private boolean f13208jr;
    private JSONObject lG;
    private ba lY;

    /* renamed from: ln  reason: collision with root package name */
    private String f13209ln;
    private int mCw;

    /* renamed from: mf  reason: collision with root package name */
    private boolean f13210mf;

    /* renamed from: ms  reason: collision with root package name */
    private int f13211ms;

    /* renamed from: mu  reason: collision with root package name */
    private Ry f13212mu;
    private PiB mwH;
    private String nQI;
    private int nke;
    private boolean oCU;
    private int oTd;
    private String ofl;

    /* renamed from: oo  reason: collision with root package name */
    private int f13213oo;

    /* renamed from: oq  reason: collision with root package name */
    private String f13214oq;

    /* renamed from: pe  reason: collision with root package name */
    private int f13215pe;
    private cFZ qF;
    private Xe rQ;

    /* renamed from: rg  reason: collision with root package name */
    private String f13216rg;
    private JSONObject sQ;

    /* renamed from: si  reason: collision with root package name */
    private boolean f13217si;

    /* renamed from: so  reason: collision with root package name */
    protected int f13218so;
    private int uaj;

    /* renamed from: uq  reason: collision with root package name */
    private int f13220uq;
    private com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk uvK;
    private String wLv;
    private int yB;
    private String yV;
    private int ypD;
    private oJ zGT;
    private Jc zUb;
    public static final String ZYk = sb.a("_", new CharSequence[]{"is", HyG.Ln()});
    public static final String tB = sb.a("_", new CharSequence[]{"is", HyG.Ln(), "sample"});
    public static final String ex = sb.a("_", new CharSequence[]{HyG.Ln(), "strategy"});
    protected static int dLZ = 330;
    private long eZI = 0;
    protected boolean oJ = false;
    protected boolean Pfn = com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ;

    /* renamed from: ba  reason: collision with root package name */
    protected int f13206ba = com.bytedance.sdk.openadsdk.jr.oJ.tB.ZYk;
    protected String cFZ = com.bytedance.sdk.openadsdk.jr.oJ.tB.tB;
    protected int kkU = 0;

    /* renamed from: tb  reason: collision with root package name */
    private final List<Ry> f13219tb = new ArrayList();
    private final List<String> HL = new ArrayList();
    private final List<FilterWord> IUZ = new ArrayList();
    private final wd Ln = wd.tB();
    public boolean BTZ = false;

    /* renamed from: wd  reason: collision with root package name */
    private List<String> f13221wd = new ArrayList();
    private List<String> HyG = new ArrayList();
    private String Yg = MBridgeConstans.ENDCARD_URL_TYPE_PL;
    private String yz = "";
    private int sH = 0;
    private int Dex = 2;
    private int oIC = -1;
    private int MoK = 0;
    private int Wek = 0;
    private int yQF = 1;
    private dLZ eXp = new dLZ();
    private int oG = AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES;
    private int PdF = 0;
    private int BWx = 1;
    private int hwh = 0;

    /* renamed from: ib  reason: collision with root package name */
    private int f13207ib = 0;
    private int Qzd = 0;
    private int Zzm = 1;
    private int Zjw = 1;
    private float XSu = 100.0f;
    private int WGj = 2;
    private int UUI = 1;
    private int Amz = 0;
    private int rJ = -1;
    private long PQw = -1;
    private int TF = 0;
    private boolean PH = false;
    private int Br = 0;
    private int SYE = 50;

    /* renamed from: ai  reason: collision with root package name */
    private int f13205ai = -1;
    private final ZYk IxS = new ZYk();
    private boolean jTO = false;
    private com.bytedance.sdk.openadsdk.jr.oJ.ZYk bbM = null;
    protected int WcQ = -1;
    protected int awB = -1;
    private float DTf = -1.0f;

    /* loaded from: classes3.dex */
    public static class oJ {
        private String BTZ;
        private String Pfn;
        private String PiB;
        private String WcQ;
        private String ZYk;

        /* renamed from: ba  reason: collision with root package name */
        private String f13222ba;
        private String cFZ;
        private String dLZ;
        private String ex;
        private String jFA;
        private String kkU;
        private String oJ;

        /* renamed from: so  reason: collision with root package name */
        private List<Integer> f13223so;
        private String tB;

        @NonNull
        public static com.bytedance.sdk.openadsdk.core.kkU.so.oJ ZYk(oJ oJVar, String str) {
            return new com.bytedance.sdk.openadsdk.core.kkU.so.oJ().oJ(oJVar.ex()).ZYk(oJVar.WcQ()).tB(oJVar.PiB()).ex(oJVar.awB()).Pfn(str);
        }

        @NonNull
        public static com.bytedance.sdk.component.adexpress.oJ.tB.ex oJ(oJ oJVar, String str) {
            return com.bytedance.sdk.component.adexpress.oJ.tB.ex.oJ().oJ(oJVar.ex()).ZYk(oJVar.Pfn()).tB(oJVar.ba()).ex(oJVar.cFZ()).Pfn(oJVar.tB()).ba(str);
        }

        public boolean BTZ() {
            return !TextUtils.isEmpty(this.kkU) && this.kkU.equals("v3");
        }

        public String Pfn() {
            return this.ZYk;
        }

        public String PiB() {
            return this.BTZ;
        }

        public String WcQ() {
            return this.PiB;
        }

        public String awB() {
            return this.WcQ;
        }

        public String ba() {
            return this.tB;
        }

        public String cFZ() {
            return this.ex;
        }

        public String dLZ() {
            return this.kkU;
        }

        public String ex() {
            return this.oJ;
        }

        public String jFA() {
            return this.cFZ;
        }

        public String kkU() {
            return this.dLZ;
        }

        public String so() {
            return this.Pfn;
        }

        public String tB() {
            return this.f13222ba;
        }

        public void BTZ(String str) {
            this.PiB = str;
        }

        public void Pfn(String str) {
            this.tB = str;
        }

        public void PiB(String str) {
            this.WcQ = str;
        }

        public void ba(String str) {
            this.ex = str;
        }

        public void cFZ(String str) {
            this.Pfn = str;
        }

        public void dLZ(String str) {
            this.BTZ = str;
        }

        public void ex(String str) {
            this.ZYk = str;
        }

        public void jFA(String str) {
            this.dLZ = str;
        }

        public void kkU(String str) {
            this.kkU = str;
        }

        public void so(String str) {
            this.cFZ = str;
        }

        public void tB(String str) {
            this.oJ = str;
        }

        public String ZYk() {
            return this.jFA;
        }

        public void ZYk(String str) {
            this.f13222ba = str;
        }

        public List<Integer> oJ() {
            return this.f13223so;
        }

        public void oJ(List<Integer> list) {
            this.f13223so = list;
        }

        public void oJ(String str) {
            this.jFA = str;
        }
    }

    public cY() {
        com.bytedance.sdk.openadsdk.core.model.oJ oJVar = new com.bytedance.sdk.openadsdk.core.model.oJ();
        this.QSm = oJVar;
        oJVar.oJ(this);
    }

    public static boolean LS(int i10) {
        return i10 == 44 || i10 == 43 || i10 == 30 || i10 == 40 || i10 == 41 || i10 == 39;
    }

    public static String ZYk(Context context, cY cYVar) {
        return null;
    }

    private static double jFA(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optDouble("pack_time", 0.0d);
        }
        return 0.0d;
    }

    private com.bytedance.sdk.openadsdk.core.kkU.so.oJ sR() {
        oJ PdF = PdF();
        if (PdF == null) {
            return null;
        }
        return oJ.ZYk(PdF, String.valueOf(uv()));
    }

    private static long so(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optLong(CommonConstant.KEY_UID, 0L);
        }
        return 0L;
    }

    private com.bytedance.sdk.openadsdk.core.kkU.so.oJ uP() {
        Jc BWx = BWx();
        if (BWx == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.kkU.so.oJ ex2 = new com.bytedance.sdk.openadsdk.core.kkU.so.oJ().oJ(BWx.oJ()).ZYk(BWx.ZYk()).tB(BWx.tB()).ex(BWx.ex());
        return ex2.Pfn(uv() + "_v3");
    }

    public boolean AEN() {
        int i10 = this.nke;
        if ((i10 == 2 || i10 == 1) && 3 == this.LpP) {
            return true;
        }
        return false;
    }

    public String Amz() {
        return this.Rl;
    }

    public AdSlot BHY() {
        return this.XQY;
    }

    public int BP() {
        return this.EP;
    }

    public boolean BTZ() {
        return this.f13208jr;
    }

    public Jc BWx() {
        return this.zUb;
    }

    @NonNull
    public List<cY> BnM() {
        return this.QSm.ex();
    }

    public boolean Br() {
        int i10 = this.TF;
        if ((i10 == 1 || i10 == 3) && Du() != null) {
            return true;
        }
        return false;
    }

    public awB CE() {
        return this.Zwf;
    }

    public JSONObject DTf() {
        if (this.SCr == null) {
            try {
                if (!TextUtils.isEmpty(this.jB)) {
                    this.SCr = new JSONObject(this.jB);
                }
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.QSm.tB("MaterialMeta", e10.getMessage());
            }
        }
        return this.SCr;
    }

    public int Dc() {
        return this.oTd;
    }

    public int Dex() {
        return this.sH;
    }

    public com.bytedance.sdk.openadsdk.core.dLZ.oJ Du() {
        return this.eW;
    }

    public int EP() {
        if (Br()) {
            return 5;
        }
        if (dzr() == 100.0f && oIC() != 2) {
            return this.PdF;
        }
        return 0;
    }

    public JSONObject Efd() {
        JSONObject mf2 = mf();
        JSONObject si2 = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().si(String.valueOf(uv()));
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(mf2);
            jSONObject.put("creatives", jSONArray);
            jSONObject.put("did", 1);
            jSONObject.put("processing_time_ms", 100);
            jSONObject.put("request_id", "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa");
            jSONObject.put("s_receive_ts", 1);
            jSONObject.put("s_send_ts", 1);
            jSONObject.put("status_code", 20000);
            jSONObject.put("core_settings", si2);
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.QSm.tB("MaterialMeta", "toJsonObjPlus", e10.getMessage());
        }
        return jSONObject;
    }

    public String FjF() {
        return this.HDW;
    }

    public int GSK() {
        return this.TF;
    }

    public float Gdk() {
        float f10 = this.DTf;
        if (f10 > 0.0f) {
            return f10;
        }
        Jc jc2 = this.zUb;
        if (jc2 != null) {
            String ex2 = jc2.ex();
            if (TextUtils.isEmpty(ex2)) {
                ex2 = com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ().oJ("adv3", this.zUb.oJ(), this.zUb.ZYk());
            }
            if (ex2 != null) {
                try {
                    JSONObject optJSONObject = new JSONObject(ex2).optJSONObject("body");
                    if (optJSONObject != null) {
                        float optDouble = (float) optJSONObject.optDouble("ratio");
                        this.DTf = optDouble;
                        return optDouble;
                    }
                } catch (JSONException unused) {
                }
            }
        }
        this.DTf = 0.0f;
        return 0.0f;
    }

    public void Geh() {
        this.Ln.Pfn();
        ba(false);
    }

    public int HDW() {
        return this.bgF;
    }

    public boolean HL() {
        return this.f13210mf;
    }

    public int HUl() {
        int i10 = this.WcQ;
        if (i10 >= 0) {
            return i10;
        }
        return com.bytedance.sdk.openadsdk.core.si.ex().Ry(String.valueOf(uv()));
    }

    public int HyG() {
        return this.SYE;
    }

    public com.bytedance.sdk.openadsdk.core.kkU.so.oJ IUZ() {
        return this.Efd;
    }

    public boolean Id() {
        return this.Tt;
    }

    public com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk IxS() {
        return this.UF;
    }

    public boolean JC() {
        return this.YQ;
    }

    public com.bytedance.sdk.component.adexpress.oJ.tB.ex JJ() {
        oJ PdF = PdF();
        if (PdF == null) {
            return null;
        }
        return oJ.oJ(PdF, String.valueOf(uv()));
    }

    public boolean Jc() {
        return this.SzJ;
    }

    public int Jm() {
        if (this.f13205ai < 0) {
            try {
                JSONObject DTf = DTf();
                if (DTf != null) {
                    this.f13205ai = DTf.optInt("is_drop_to_retargeting_sample", 0);
                } else {
                    this.f13205ai = 0;
                }
            } catch (Throwable unused) {
                this.f13205ai = 0;
            }
        }
        return this.f13205ai;
    }

    public int KYc() {
        return this.ypD;
    }

    public List<String> LE() {
        return this.HyG;
    }

    public boolean LTg() {
        if (Br() || ln() != 1) {
            return false;
        }
        return true;
    }

    public com.bytedance.sdk.openadsdk.core.kkU.so.oJ Ln() {
        return this.Tvw;
    }

    public int LpP() {
        return this.Br;
    }

    public String MVA() {
        return this.nQI;
    }

    public int MoK() {
        return this.oIC;
    }

    public String Mrg() {
        return this.Qu;
    }

    public int NO() {
        return this.Jc;
    }

    @Nullable
    public ex NTC() {
        ex exVar;
        Pfn pfn = this.Ry;
        if (pfn != null) {
            exVar = pfn.tB();
        } else {
            com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar = this.eW;
            if (oJVar != null) {
                exVar = oJVar.WcQ();
            } else {
                exVar = null;
            }
        }
        if (exVar != null) {
            exVar.oJ(this);
        }
        return exVar;
    }

    public int NX() {
        return this.Zy;
    }

    public String OP() {
        return this.dZS;
    }

    public String Oof() {
        return this.XAo;
    }

    public int PH() {
        return this.LE;
    }

    public wd PLU() {
        return this.Ln;
    }

    public com.bytedance.sdk.openadsdk.jr.oJ.ZYk PO() {
        return this.bbM;
    }

    public String PQw() {
        return this.ZMY;
    }

    public oJ PdF() {
        return this.zGT;
    }

    public boolean Pfn() {
        int LS = LS();
        return ((wd() && Ln.tB(this) && LS != 43 && LS != 44) || oIC() != 2 || LS == 33 || LS == 5 || LS == 6 || LS == 19 || LS == 12) ? false : true;
    }

    public int PiB() {
        return this.kkU;
    }

    public so QSm() {
        return this.CE;
    }

    public boolean Qu() {
        if (this.rJ <= 0) {
            this.rJ = qnr();
        }
        int i10 = this.rJ;
        return (i10 == 7 || i10 == 8) && !Pfn(this) && NO() != 21 && this.mCw == 1;
    }

    public boolean Quj() {
        return this.BTZ;
    }

    public String Qzd() {
        return this.LS;
    }

    public boolean RQ() {
        if (BHY() == null || BHY().getDurationSlotType() != 8 || !jA()) {
            return false;
        }
        return true;
    }

    public oq RZ() {
        return this.SB;
    }

    public String Rl() {
        return this.wLv;
    }

    public boolean Ry() {
        return (TextUtils.isEmpty(eZI()) || TextUtils.isEmpty(si())) ? false : true;
    }

    public String SB() {
        return this.Jm;
    }

    public int SCr() {
        return this.f13213oo;
    }

    public int SWT() {
        return this.YF;
    }

    public int SYE() {
        JSONObject jSONObject = this.Wd;
        if (jSONObject == null) {
            return 0;
        }
        return jSONObject.optInt("easy_playable_skip_duration", 0);
    }

    public long Sb() {
        return this.jFA;
    }

    public boolean SzJ() {
        if (!Br() && this.Ry == null) {
            return false;
        }
        return true;
    }

    public int TA() {
        return this.hwh;
    }

    public boolean TAr() {
        awB awb;
        if (!Br() || Tjr() || (awb = this.Zwf) == null || awb.oJ() != 1) {
            return false;
        }
        return true;
    }

    public boolean TF() {
        if (this.f13219tb.isEmpty()) {
            return false;
        }
        if (this.oTd == 4 && this.f13219tb.size() < 3) {
            return false;
        }
        for (Ry ry : this.f13219tb) {
            if (!ry.Pfn()) {
                return false;
            }
        }
        return true;
    }

    public PiB TNk() {
        return this.mwH;
    }

    public boolean Tjr() {
        if (this.Ln.oJ > 0) {
            return true;
        }
        return false;
    }

    public int Tt() {
        if (this.Zjw != 2) {
            this.Zjw = 1;
        }
        return this.Zjw;
    }

    public int Tvw() {
        return this.yB;
    }

    public int TxP() {
        return this.rJ;
    }

    public int UF() {
        return this.yQF;
    }

    public String UK() {
        return this.Oof;
    }

    public void UN() {
        this.Du = true;
    }

    public String UUI() {
        return this.cdg;
    }

    public int Uf() {
        return this.Zzm;
    }

    public String VJm() {
        return this.f13216rg;
    }

    public boolean VSB() {
        if (this.hwh == 1) {
            return true;
        }
        return false;
    }

    public long Vh() {
        return this.TA;
    }

    public JSONObject VzB() {
        return this.sQ;
    }

    public List<String> WGj() {
        return this.HL;
    }

    public boolean WcQ() {
        return this.VJm;
    }

    public ba Wd() {
        return this.lY;
    }

    public int Wek() {
        return this.VSB;
    }

    public int XAo() {
        try {
            JSONObject DTf = DTf();
            if (DTf != null) {
                return DTf.optInt("rec_clk", 0);
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public boolean XQY() {
        oJ oJVar = this.zGT;
        if (oJVar != null) {
            if (TextUtils.isEmpty(oJVar.dLZ())) {
                return false;
            }
            return true;
        }
        int i10 = this.Wek;
        if (i10 != 9 && i10 != 10) {
            return false;
        }
        return true;
    }

    public boolean XS() {
        RZ rz;
        AdSlot adSlot = this.XQY;
        if (adSlot != null && (rz = this.Mrg) != null) {
            return rz.oJ(!TextUtils.isEmpty(adSlot.getBidAdm()));
        }
        return false;
    }

    public Ry XSu() {
        return this.f13212mu;
    }

    public boolean Xe() {
        List<Integer> oJ2;
        return (PdF() == null || (oJ2 = PdF().oJ()) == null || !oJ2.contains(57)) ? false : true;
    }

    public JSONObject YF() {
        return this.lG;
    }

    public int YI() {
        return this.f13206ba;
    }

    public dLZ YQ() {
        return this.eXp;
    }

    public int Yg() {
        cFZ cfz = this.qF;
        if (cfz == null) {
            return 2;
        }
        return cfz.ZYk();
    }

    public JSONObject Yk() {
        return this.Wd;
    }

    public int ZMY() {
        return this.f13211ms;
    }

    @Nullable
    public String ZiK() {
        ba Wd = Wd();
        if (Wd != null && !TextUtils.isEmpty(Wd.oJ())) {
            return Wd.oJ();
        }
        return null;
    }

    public Ry Zjw() {
        return this.UN;
    }

    public Map<String, Object> Zwf() {
        return this.SWT;
    }

    public int Zy() {
        return this.JC;
    }

    public boolean Zzm() {
        if (this.fXU == 1) {
            return true;
        }
        return false;
    }

    public boolean ai() {
        if (this.f13215pe == 1) {
            return true;
        }
        return false;
    }

    public boolean awB() {
        return this.bD;
    }

    public int bD() {
        return this.f13207ib;
    }

    public String bTd() {
        return this.cFZ;
    }

    public String ba() {
        jr BTZ;
        com.bytedance.sdk.openadsdk.core.model.oJ tB2 = tB();
        if (tB2 == null || (BTZ = tB2.BTZ()) == null) {
            return null;
        }
        return BTZ.cFZ();
    }

    public boolean bbM() {
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk zYk = this.jXJ;
        if (zYk == null || zYk.RZ() != 1) {
            return true;
        }
        return false;
    }

    public cFZ bgF() {
        return this.qF;
    }

    public boolean bj() {
        return this.PH;
    }

    public long cFZ() {
        return this.eZI;
    }

    public boolean cMS() {
        return this.jTO;
    }

    public String cY() {
        return this.dzr;
    }

    public String cdg() {
        JSONObject DTf;
        if (this.Yk == null && (DTf = DTf()) != null) {
            this.Yk = DTf.optString(BidResponsedEx.KEY_CID, "");
        }
        return this.Yk;
    }

    public ZYk crS() {
        return this.IxS;
    }

    public boolean dLZ() {
        return this.f13217si;
    }

    public boolean dTl() {
        return this.oJ;
    }

    public String dZS() {
        return this.RZ;
    }

    public long dwQ() {
        if (this.PQw < 0) {
            JSONObject DTf = DTf();
            if (DTf != null) {
                this.PQw = DTf.optLong("ad_id", 0L);
            } else {
                this.PQw = 0L;
            }
        }
        return this.PQw;
    }

    public float dzr() {
        if (this.XSu <= 0.0f) {
            this.XSu = 100.0f;
        }
        return (this.XSu * 1000.0f) / 1000.0f;
    }

    public int eGo() {
        return this.UK;
    }

    public void eL() {
        if (!TextUtils.isEmpty(VJm())) {
            WcQ(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
        Map<String, Object> Zwf = Zwf();
        if (Zwf != null && Zwf.containsKey("price")) {
            Zwf.put("price", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
    }

    public String eW() {
        return this.NO;
    }

    public boolean eXp() {
        if (Wek() != 100 && this.nke != 20) {
            return false;
        }
        return true;
    }

    public String eZI() {
        return this.yV;
    }

    public String edj() {
        return this.Yg;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && cY.class == obj.getClass()) {
            cY cYVar = (cY) obj;
            if (this.Yg.equals(cYVar.edj()) && this.jB.equals(cYVar.pe())) {
                return true;
            }
        }
        return false;
    }

    public String ex() {
        int TxP = TxP();
        if (TxP != 1) {
            if (TxP != 3) {
                if (TxP != 5) {
                    if (TxP != 7) {
                        if (TxP != 8) {
                            return "unknown";
                        }
                        return "fullscreen_interstitial_ad";
                    }
                    return "rewarded_video";
                }
                return "embeded_ad";
            }
            return "open_ad";
        }
        return "banner_ad";
    }

    public double fTJ() {
        return jFA(DTf());
    }

    public boolean fXU() {
        return this.Dc;
    }

    public com.bytedance.sdk.component.jFA.ZYk.oJ hW() {
        com.bytedance.sdk.component.jFA.ZYk.oJ oJVar = new com.bytedance.sdk.component.jFA.ZYk.oJ();
        oJVar.oJ(this.BHY);
        oJVar.ZYk(this.Yg);
        oJVar.oJ(pe());
        return oJVar;
    }

    public IUZ hZN() {
        return this.hW;
    }

    public int hwh() {
        WcQ wcQ = this.NX;
        if (wcQ == null) {
            return 0;
        }
        return wcQ.oJ();
    }

    public String iPr() {
        JSONObject DTf;
        String str = this.Vh;
        if (TextUtils.isEmpty(str) && (DTf = DTf()) != null) {
            str = DTf.optString("req_id", "");
            Jc(str);
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    public com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib() {
        return this.jXJ;
    }

    public boolean jA() {
        if (this.TF == 2) {
            return true;
        }
        return false;
    }

    public int jB() {
        return this.UUI;
    }

    public com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk jTO() {
        return this.uvK;
    }

    public int jXJ() {
        return this.Qzd;
    }

    public String jr() {
        return this.LTg;
    }

    public boolean kO() {
        if (qnr() == 7) {
            return true;
        }
        return false;
    }

    public boolean kZ() {
        Xe xe2 = this.rQ;
        if (xe2 == null || xe2.oJ() != 1) {
            return false;
        }
        return true;
    }

    public int kkU() {
        return this.cY;
    }

    public int lG() {
        return this.uaj;
    }

    public int lY() {
        if (Xe()) {
            return 5;
        }
        if (jA()) {
            return 4;
        }
        cFZ cfz = this.qF;
        if (cfz == null) {
            return 1;
        }
        return cfz.tB();
    }

    public int ln() {
        return this.MoK;
    }

    public void mCw() {
        this.Dc = true;
    }

    public JSONObject mf() {
        JSONObject ex2;
        JSONObject kkU;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("raw_response_info", FjF());
            jSONObject.put("interaction_type", sQ());
            jSONObject.put("iv_skip_time", this.WcQ);
            jSONObject.put("rv_skip_time", this.awB);
            jSONObject.put(tB, oo());
            jSONObject.put("interaction_method", NO());
            jSONObject.put("lp_click_type", rD());
            jSONObject.put("lp_click_interval", Sb());
            jSONObject.put("proportion_watching", MoK());
            jSONObject.put(ZYk, ZMY());
            jSONObject.put(ex, NX());
            jSONObject.put("target_url", Oof());
            jSONObject.put("app_log_url", eW());
            jSONObject.put("settings_url", this.RZ);
            jSONObject.put("gecko_id", PQw());
            jSONObject.put("extension", Yk());
            jSONObject.put("ad_id", edj());
            jSONObject.put("source", Qzd());
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, MVA());
            jSONObject.put("screenshot", JC());
            jSONObject.put("dislike_control", ln());
            jSONObject.put("play_bar_show_time", zGT());
            jSONObject.put("play_bar_style", EP());
            jSONObject.put("if_block_lp", TA());
            jSONObject.put("cache_sort", Uf());
            jSONObject.put("if_sp_cache", SCr());
            jSONObject.put("render_control", oIC());
            jSONObject.put("mrc_report", this.f13215pe);
            jSONObject.put("isMrcReportFinish", this.Dc);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(InMobiNetworkValues.CTA, yz());
            jSONObject2.put("other", jB());
            jSONObject.put("set_click_type", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(CampaignEx.JSON_KEY_REWARD_NAME, sH());
            jSONObject3.put(CampaignEx.JSON_KEY_REWARD_AMOUNT, Dex());
            jSONObject.put("reward_data", jSONObject3);
            if (!TextUtils.isEmpty(eZI()) && !TextUtils.isEmpty(si())) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("adchoices_icon", eZI());
                jSONObject4.put("adchoices_url", si());
                jSONObject.put("dsp_adchoices", jSONObject4);
            }
            Ry Zjw = Zjw();
            if (Zjw != null && !TextUtils.isEmpty(Zjw.oJ())) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put("url", Zjw.oJ());
                jSONObject5.put("height", Zjw.tB());
                jSONObject5.put("width", Zjw.ZYk());
                jSONObject.put("icon", jSONObject5);
            }
            Ry XSu = XSu();
            if (XSu != null && !TextUtils.isEmpty(XSu.oJ())) {
                JSONObject jSONObject6 = new JSONObject();
                jSONObject6.put("url", XSu.oJ());
                jSONObject6.put("height", XSu.tB());
                jSONObject6.put("width", XSu.ZYk());
                jSONObject.put("cover_image", jSONObject6);
            }
            JSONObject yV = yV();
            if (yV != null) {
                jSONObject.put("session_params", yV);
            }
            JSONObject VzB = VzB();
            if (VzB != null) {
                jSONObject.put("dynamic_configs", VzB);
            }
            dLZ YQ = YQ();
            if (YQ != null) {
                JSONObject jSONObject7 = new JSONObject();
                jSONObject7.put("click_upper_content_area", YQ.oJ);
                jSONObject7.put("click_upper_non_content_area", YQ.ZYk);
                jSONObject7.put("click_lower_content_area", YQ.tB);
                jSONObject7.put("click_lower_non_content_area", YQ.ex);
                jSONObject7.put("click_button_area", YQ.Pfn);
                jSONObject7.put("click_video_area", YQ.f13224ba);
                jSONObject.put("click_area", jSONObject7);
            }
            so QSm = QSm();
            if (QSm != null) {
                jSONObject.put("arbitrage_interceptor_params", QSm.cFZ());
            }
            AdSlot BHY = BHY();
            if (BHY != null) {
                jSONObject.put("adslot", BHY.toJsonObj());
            }
            oJ(this, jSONObject);
            List<String> uaj = uaj();
            if (uaj != null) {
                JSONArray jSONArray = new JSONArray();
                for (String str : uaj) {
                    jSONArray.put(str);
                }
                jSONObject.put("show_url", jSONArray);
            }
            List<String> LE = LE();
            if (LE != null) {
                JSONArray jSONArray2 = new JSONArray();
                for (String str2 : LE) {
                    jSONArray2.put(str2);
                }
                jSONObject.put(CampaignEx.JSON_KEY_CLICK_URL, jSONArray2);
            }
            List<String> WGj = WGj();
            if (WGj != null) {
                JSONArray jSONArray3 = new JSONArray();
                for (String str3 : WGj) {
                    jSONArray3.put(str3);
                }
                jSONObject.put("play_start", jSONArray3);
            }
            jSONObject.put("phone_num", uq());
            jSONObject.put("title", UUI());
            jSONObject.put(InMobiNetworkValues.DESCRIPTION, Amz());
            jSONObject.put("ext", pe());
            jSONObject.put("image_mode", Dc());
            jSONObject.put("cover_click_area", Wek());
            jSONObject.put("intercept_flag", SWT());
            jSONObject.put("button_text", ypD());
            jSONObject.put("ad_logo", oCU());
            jSONObject.put("video_adaptation", bD());
            jSONObject.put("feed_video_opentype", jXJ());
            jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, Tt());
            jSONObject.put(TextureRenderKeys.KEY_IS_ASPECT_RATIO, dzr());
            ZYk(this, jSONObject);
            PiB TNk = TNk();
            if (TNk != null) {
                JSONObject jSONObject8 = new JSONObject();
                jSONObject8.put("deeplink_url", TNk.oJ());
                jSONObject8.put("fallback_url", TNk.ZYk());
                jSONObject8.put("fallback_type", TNk.tB());
                jSONObject.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, jSONObject8);
            }
            jSONObject.put("is_web_jump_ip", this.kkU);
            IUZ hZN = hZN();
            if (hZN != null && (kkU = hZN.kkU()) != null) {
                jSONObject.put("oem", kkU);
            }
            Xe na2 = na();
            if (na2 != null && (ex2 = na2.ex()) != null) {
                jSONObject.put("multi_ad_scene", ex2);
            }
            List<FilterWord> rJ = rJ();
            if (rJ != null) {
                JSONArray jSONArray4 = new JSONArray();
                for (FilterWord filterWord : rJ) {
                    JSONObject ZYk2 = ZYk(filterWord);
                    if (ZYk2 != null) {
                        jSONArray4.put(ZYk2);
                    }
                }
                jSONObject.put("filter_words", jSONArray4);
            }
            oTd().oJ(jSONObject);
            jSONObject.put("count_down", eGo());
            jSONObject.put("expiration_time", Vh());
            com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk IxS = IxS();
            if (IxS != null) {
                jSONObject.put("video", IxS.Ry());
            }
            com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk jTO = jTO();
            if (jTO != null) {
                jSONObject.put("h265_video", jTO.Ry());
            }
            jSONObject.put("video_encode_type", KYc());
            JSONObject jSONObject9 = new JSONObject();
            jSONObject9.put("if_send_click", hwh());
            jSONObject.put("download_conf", jSONObject9);
            if (Zwf() != null) {
                JSONObject jSONObject10 = new JSONObject();
                Set<Map.Entry<String, Object>> entrySet = Zwf().entrySet();
                if (!entrySet.isEmpty()) {
                    for (Map.Entry<String, Object> entry : entrySet) {
                        jSONObject10.put(entry.getKey(), entry.getValue());
                    }
                }
                jSONObject.put("media_ext", jSONObject10);
            }
            oJ PdF = PdF();
            if (PdF != null) {
                JSONObject jSONObject11 = new JSONObject();
                jSONObject11.put("id", PdF.ex());
                jSONObject11.put("md5", PdF.Pfn());
                jSONObject11.put("url", PdF.ba());
                jSONObject11.put("data", PdF.cFZ());
                jSONObject11.put("diff_data", PdF.so());
                jSONObject11.put("version", PdF.tB());
                jSONObject11.put("dynamic_creative", PdF.jFA());
                jSONObject11.put("engine_version", PdF.dLZ());
                jSONObject11.put("ugen_data", PdF.awB());
                jSONObject11.put("ugen_md5", PdF.WcQ());
                jSONObject11.put("ugen_url", PdF.PiB());
                jSONObject.put("tpl_info", jSONObject11);
            }
            Jc jc2 = this.zUb;
            if (jc2 != null) {
                jSONObject.put("tpl_info_v3", jc2.cFZ());
            }
            jSONObject.put("dynamic_creative", YF());
            jSONObject.put("creative_extra", yQF());
            jSONObject.put("market_url", qF());
            jSONObject.put("auction_price", VJm());
            jSONObject.put("ad_info", UK());
            jSONObject.put("is_package_open", Tvw());
            jSONObject.put("playable_duration_time", zUb());
            jSONObject.put("playable_endcard_close_time", lG());
            jSONObject.put("endcard_close_time", PH());
            JSONObject jSONObject12 = new JSONObject();
            jSONObject12.put("render_sequence", uvK());
            jSONObject12.put("backup_render_control", UF());
            jSONObject12.put("reserve_time", ms());
            jSONObject12.put("render_thread", Zy());
            jSONObject.put("render", jSONObject12);
            if (this.SB == null) {
                oq oqVar = new oq();
                this.SB = oqVar;
                oqVar.oJ("");
                this.SB.oJ(10L);
                this.SB.ZYk(20L);
                this.SB.tB(10L);
                this.SB.ex(20L);
            }
            JSONObject jSONObject13 = new JSONObject();
            jSONObject13.put("onlylp_loading_maxtime", this.SB.oJ());
            jSONObject13.put("straight_lp_showtime", this.SB.ZYk());
            jSONObject13.put("onlyagg_loading_maxtime", this.SB.tB());
            jSONObject13.put("straight_agg_showtime", this.SB.ex());
            jSONObject13.put("loading_text", this.SB.Pfn());
            RZ rz = this.Mrg;
            if (rz != null) {
                jSONObject13 = rz.oJ(jSONObject13);
            }
            jSONObject.put("interaction_method_params", jSONObject13);
            JSONObject jSONObject14 = new JSONObject();
            jSONObject14.put("splash_clickarea", Yg());
            jSONObject14.put("splash_layout_id", lY());
            jSONObject14.put("load_wait_time", mwH());
            cFZ cfz = this.qF;
            jSONObject14.put("skip_time", cfz != null ? cfz.oJ() : 0);
            jSONObject.put("splash_control", jSONObject14);
            if (jA()) {
                jSONObject.put("dsp_html", this.dZS);
            }
            if (Br()) {
                jSONObject.put("vast_json", this.eW.kkU());
            }
            jSONObject.put("dsp_material_type", GSK());
            jSONObject.put("deep_link_appname", this.Qu);
            jSONObject.put("landing_page_download_clicktype", this.bgF);
            awB awb = this.Zwf;
            if (awb != null) {
                jSONObject.put("dsp_style", awb.tB());
            }
            jSONObject.put("identificationOverlayContent", this.LTg);
            if (this.Efd != null) {
                JSONObject jSONObject15 = new JSONObject();
                jSONObject15.put(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, this.Efd.oJ(this.Tvw));
                jSONObject.put("ugen", jSONObject15);
            }
            jSONObject.put("preload_h5_type", LpP());
            jSONObject.put("hasReportShow", this.jA);
            jSONObject.put("endcard_creative", this.wLv);
            jSONObject.put("image_stay", this.mCw);
            jSONObject.put("ad_label", this.IxS.ba());
            JSONObject jSONObject16 = new JSONObject();
            jSONObject16.put("enable", this.Pfn);
            jSONObject16.put("wait_time", this.f13206ba);
            jSONObject16.put("label", this.cFZ);
            jSONObject.put("ev", jSONObject16);
            jSONObject.put("ad_label", this.IxS.ba());
            if (this.BP != null) {
                JSONObject jSONObject17 = new JSONObject();
                jSONObject17.put("width", this.BP.getWidth());
                jSONObject17.put("height", this.BP.getHeight());
                jSONObject.put("banner", jSONObject17);
            }
            if (!TextUtils.isEmpty(this.dzr)) {
                jSONObject.put("gdid_encrypted", this.dzr);
            }
            Pfn pfn = this.Ry;
            if (pfn != null) {
                jSONObject.put("ad_tracks", pfn.ZYk());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public int mlK() {
        String str;
        com.bytedance.sdk.openadsdk.core.model.oJ tB2 = tB();
        if (tB2 != null && tB2.BTZ() != null) {
            return tB2.BTZ().jFA();
        }
        if (BHY() != null) {
            str = BHY().getCodeId();
        } else {
            int uv = uv();
            if (uv != 0) {
                str = String.valueOf(uv);
            } else {
                str = null;
            }
        }
        if (str != null) {
            return com.bytedance.sdk.openadsdk.core.si.ex().Ry(str);
        }
        return 5;
    }

    public int ms() {
        return this.eGo;
    }

    public PAGBannerSize mse() {
        return this.BP;
    }

    public boolean mu() {
        return this.Du;
    }

    public long mwH() {
        cFZ cfz = this.qF;
        if (cfz == null) {
            return 0L;
        }
        return cfz.ex();
    }

    public void nQI() {
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk zYk = this.jXJ;
        if (zYk == null || TextUtils.isEmpty(zYk.BTZ())) {
            return;
        }
        try {
            if (this.jXJ.BTZ().contains("style_id")) {
                this.f13210mf = true;
                this.f13209ln = Uri.parse(this.jXJ.BTZ()).getQueryParameters("style_id").get(0);
                return;
            }
            this.f13210mf = false;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB(th2.getMessage(), new Object[0]);
        }
    }

    public boolean nYE() {
        int i10 = this.Jc;
        if (i10 != 44 && i10 != 43) {
            return false;
        }
        return true;
    }

    public Xe na() {
        return this.rQ;
    }

    public boolean nip() {
        if (qnr() == 1) {
            return true;
        }
        return false;
    }

    public void nke() {
        this.SzJ = true;
    }

    public long nnj() {
        return this.PiB;
    }

    public int oCU() {
        return this.BWx;
    }

    public int oG() {
        return this.BHY;
    }

    public int oIC() {
        int i10 = this.nke;
        if (i10 != 5 && i10 != 6 && i10 != 33) {
            if (RQ()) {
                return 2;
            }
            return this.Dex;
        }
        return 1;
    }

    public int oJ() {
        cFZ bgF = bgF();
        if (bgF != null) {
            return bgF.oJ();
        }
        return -1;
    }

    public Ln oTd() {
        return this.edj;
    }

    public int ocG() {
        Map<String, Object> map = this.SWT;
        if (map != null) {
            try {
                Object obj = map.get(TTAdConstant.SDK_BIDDING_TYPE);
                if (obj != null) {
                    return Integer.parseInt(obj.toString());
                }
                return 0;
            } catch (Throwable unused) {
                return 0;
            }
        }
        return 0;
    }

    public boolean ofl() {
        return this.jA;
    }

    public int oo() {
        return this.fXU;
    }

    public RZ oq() {
        return this.Mrg;
    }

    public String pe() {
        return this.jB;
    }

    public String qF() {
        return this.JJ;
    }

    public int qnr() {
        if (this.rJ < 0) {
            JSONObject DTf = DTf();
            if (DTf != null) {
                this.rJ = DTf.optInt("ad_slot_type", 0);
            } else {
                this.rJ = 0;
            }
        }
        return this.rJ;
    }

    @Nullable
    public Pfn qr() {
        return this.Ry;
    }

    public int rD() {
        return this.f13218so;
    }

    public List<FilterWord> rJ() {
        return this.IUZ;
    }

    public int rQ() {
        return this.Amz;
    }

    public boolean rg() {
        if (this.f13211ms == 1) {
            return true;
        }
        return false;
    }

    public boolean rxj() {
        return this.Pfn;
    }

    public String sH() {
        return this.yz;
    }

    public int sQ() {
        return this.LpP;
    }

    public boolean sXx() {
        if (qnr() == 5) {
            return true;
        }
        return false;
    }

    public String si() {
        return this.VzB;
    }

    public com.bytedance.sdk.openadsdk.core.model.oJ tB() {
        return this.QSm;
    }

    public String tb() {
        return this.f13209ln;
    }

    public int uWF() {
        return this.awB;
    }

    public boolean uZd() {
        if (qnr() == 8) {
            return true;
        }
        return false;
    }

    public List<String> uaj() {
        return this.f13221wd;
    }

    public String uq() {
        return this.ofl;
    }

    public int uv() {
        JSONObject DTf = DTf();
        if (DTf == null) {
            return 0;
        }
        return DTf.optInt("rit", 0);
    }

    public int uvK() {
        return this.Wek;
    }

    public boolean wHC() {
        return true;
    }

    public si wLv() {
        return this.TNk;
    }

    public int wM() {
        String str;
        com.bytedance.sdk.openadsdk.core.model.oJ tB2 = tB();
        if (tB2 != null && tB2.BTZ() != null) {
            return tB2.BTZ().jFA();
        }
        if (BHY() != null) {
            str = BHY().getCodeId();
        } else {
            int uv = uv();
            if (uv != 0) {
                str = String.valueOf(uv);
            } else {
                str = null;
            }
        }
        if (str != null) {
            return com.bytedance.sdk.openadsdk.core.si.ex().kkU(str);
        }
        return 30;
    }

    public boolean wd() {
        return this.OP;
    }

    public int xwf() {
        int i10 = this.awB;
        if (i10 >= 0) {
            return i10;
        }
        return com.bytedance.sdk.openadsdk.core.si.ex().jFA(String.valueOf(uv()));
    }

    public List<Ry> yB() {
        return this.f13219tb;
    }

    public String yQF() {
        return this.Uf;
    }

    public JSONObject yV() {
        return this.MVA;
    }

    public String ypD() {
        if (!TextUtils.isEmpty(this.Jm)) {
            return this.Jm;
        }
        Context oJ2 = com.bytedance.sdk.openadsdk.core.si.oJ();
        int sQ = sQ();
        if (sQ != 2 && sQ != 3) {
            if (sQ != 4) {
                if (sQ != 8) {
                    return this.Jm;
                }
            } else if (oJ2 != null) {
                return com.bytedance.sdk.component.utils.cY.oJ(oJ2, "tt_video_download_apk");
            } else {
                return this.Jm;
            }
        }
        if (oJ2 != null) {
            return com.bytedance.sdk.component.utils.cY.oJ(oJ2, "tt_video_mobile_go_detail");
        }
        return this.Jm;
    }

    public int yz() {
        return this.WGj;
    }

    public boolean zF() {
        if (qnr() != 3 && qnr() != 4) {
            return false;
        }
        return true;
    }

    public int zGT() {
        return this.oG;
    }

    public int zUb() {
        int i10 = this.f13220uq;
        if (i10 > 0) {
            return i10;
        }
        return 20;
    }

    public LpP zxE() {
        return this.KYc;
    }

    public static boolean cFZ(cY cYVar) {
        Object obj;
        if (cYVar == null) {
            return false;
        }
        try {
            Map<String, Object> Zwf = cYVar.Zwf();
            if (Zwf == null || (obj = Zwf.get(TTAdConstant.SDK_BIDDING_TYPE)) == null) {
                return false;
            }
            return 2 == Integer.parseInt(obj.toString());
        } catch (Throwable th2) {
            th2.getMessage();
            return false;
        }
    }

    public static boolean tB(cY cYVar) {
        return (cYVar == null || cYVar.ib() == null || cYVar.ib().ex() != 7 || Ln.cFZ(cYVar)) ? false : true;
    }

    public void BTZ(String str) {
        this.yz = str;
    }

    public void HL(int i10) {
        this.f13211ms = i10;
    }

    public void HyG(int i10) {
        this.eGo = Math.max(0, i10);
    }

    public void IUZ(int i10) {
        this.Zy = i10;
    }

    public void Id(int i10) {
        this.f13213oo = i10;
    }

    public void Jc(int i10) {
        this.MoK = i10;
    }

    public int LS() {
        return this.nke;
    }

    public void Ln(int i10) {
        this.oTd = i10;
    }

    public void LpP(int i10) {
        this.UK = i10;
    }

    public void PiB(String str) {
        this.Oof = str;
    }

    public void QSm(int i10) {
        this.oG = i10;
    }

    public void RZ(int i10) {
        this.YF = i10;
    }

    public void Rl(int i10) {
        this.EP = i10;
    }

    public void Ry(int i10) {
        this.PdF = i10;
    }

    public void UN(int i10) {
        this.yB = i10;
    }

    public void WcQ(int i10) {
        this.Wek = i10;
    }

    public void Yg(int i10) {
        this.f13218so = i10;
    }

    public int ZYk() {
        return this.Xe;
    }

    public void awB(int i10) {
        this.yQF = i10;
    }

    public void bgF(int i10) {
        this.TF = i10;
    }

    public void cY(int i10) {
        this.VSB = i10;
    }

    public void dLZ(String str) {
        this.wLv = str;
    }

    public void eZI(int i10) {
        this.f13207ib = i10;
    }

    public String jFA() {
        return this.Id;
    }

    public void jr(int i10) {
        this.BHY = i10;
    }

    public void kkU(String str) {
        this.LTg = str;
    }

    public void mu(int i10) {
        this.f13220uq = i10;
    }

    public void mwH(int i10) {
        this.WcQ = i10;
    }

    public void nke(int i10) {
        this.Zjw = i10;
    }

    public void oTd(int i10) {
        this.awB = i10;
    }

    public void ofl(int i10) {
        this.LE = i10;
    }

    public void oq(int i10) {
        this.Zzm = i10;
    }

    public void si(int i10) {
        this.BWx = i10;
    }

    public String so() {
        return this.f13214oq;
    }

    public void tb(int i10) {
        this.LpP = i10;
    }

    public void wd(int i10) {
        this.f13215pe = i10;
    }

    private String XAo(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return com.bytedance.sdk.component.utils.eZI.oJ(str);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("MaterialMeta", "generate icon key error", th2.getMessage());
            return null;
        }
    }

    public static boolean ZYk(cY cYVar) {
        return (oJ(cYVar) || tB(cYVar)) ? false : true;
    }

    public static JSONObject tB(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return new JSONObject(str);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.QSm.tB("MaterialMeta", e10.getMessage());
            }
        }
        return null;
    }

    public void BTZ(int i10) {
        this.hwh = i10;
    }

    public void HL(String str) {
        this.ZMY = str;
    }

    public void IUZ(String str) {
        this.JJ = str;
    }

    public void Id(String str) {
        this.Jm = str;
    }

    public void Jc(String str) {
        this.Vh = str;
    }

    public void Ln(String str) {
        this.dZS = str;
    }

    public void LpP(String str) {
        this.Qu = str;
    }

    public void PiB(int i10) {
        this.Qzd = i10;
    }

    public void QSm(String str) {
        this.cdg = str;
    }

    public void RZ(String str) {
        this.ofl = str;
    }

    public void Ry(String str) {
        this.XAo = str;
    }

    public void UN(String str) {
        this.HDW = str;
    }

    public void WcQ(String str) {
        this.f13216rg = str;
    }

    public void awB(String str) {
        this.Uf = str;
    }

    public void cY(String str) {
        this.Yg = str;
    }

    public void dLZ(int i10) {
        this.Dex = i10;
    }

    public void eZI(String str) {
        this.LS = str;
    }

    public void jFA(String str) {
        this.dzr = str;
    }

    public void jr(String str) {
        this.NO = str;
    }

    public void kkU(int i10) {
        this.oIC = i10;
    }

    public void mu(String str) {
        if (TextUtils.isEmpty(str)) {
            this.cFZ = com.bytedance.sdk.openadsdk.jr.oJ.tB.tB;
        } else {
            this.cFZ = str;
        }
    }

    public String nke(String str) {
        JSONObject DTf = DTf();
        return DTf != null ? DTf.optString("rit", str) : str;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        if (oJVar != null) {
            this.QSm = oJVar;
        }
    }

    public void oq(String str) {
        this.Rl = str;
    }

    public void si(String str) {
        this.nQI = str;
    }

    public void so(String str) {
        this.VzB = str;
    }

    public void tb(String str) {
        this.jB = str;
    }

    public static boolean Pfn(cY cYVar) {
        if (cYVar == null) {
            return false;
        }
        int Dc = cYVar.Dc();
        return cYVar.Br() || Dc == 5 || Dc == 15 || Dc == 50;
    }

    public static double ZYk(String str) {
        return jFA(tB(str));
    }

    public static boolean ba(cY cYVar) {
        if (cYVar == null) {
            return false;
        }
        int Dc = cYVar.Dc();
        return Dc == 5 || Dc == 15 || Dc == 50;
    }

    public void BTZ(boolean z10) {
        this.oJ = z10;
    }

    public void PiB(boolean z10) {
        this.jTO = z10;
    }

    public void WcQ(boolean z10) {
        this.Pfn = z10;
    }

    public void Xe(int i10) {
        this.fXU = i10;
    }

    public void dLZ(boolean z10) {
        this.PH = z10;
    }

    public void jFA(int i10) {
        this.sH = i10;
    }

    public void kkU(boolean z10) {
        this.BTZ = z10;
    }

    public void lY(int i10) {
        this.f13206ba = (i10 < 0 || i10 > 30) ? 6 : 6;
    }

    public void oJ(int i10) {
        this.Xe = i10;
    }

    public void so(boolean z10) {
        this.OP = z10;
    }

    public void Xe(String str) {
        this.RZ = str;
    }

    public void ba(String str) {
        this.Id = str;
    }

    public void cdg(int i10) {
        this.JC = i10;
    }

    public void jFA(boolean z10) {
        this.YQ = z10;
    }

    public void oJ(long j10) {
        this.eZI = j10;
    }

    public void so(int i10) {
        this.nke = i10;
    }

    public static boolean oJ(cY cYVar, boolean z10, boolean z11, boolean z12, boolean z13) {
        if (oJ(cYVar) || z13 || cYVar == null || cYVar.ib() == null || TextUtils.isEmpty(cYVar.ib().BTZ())) {
            return false;
        }
        return tB(cYVar) ? z12 : (cYVar.ib() == null || cYVar.ib().oJ() != 1) ? z10 : z11;
    }

    public void Pfn(String str) {
        this.f13214oq = str;
    }

    public void Qu(int i10) {
        this.ypD = i10;
    }

    public void XAo(int i10) {
        this.uaj = i10;
    }

    public void ZYk(int i10) {
        this.cY = i10;
    }

    public void ba(boolean z10) {
        this.Tt = z10;
    }

    public void cFZ(String str) {
        this.yV = str;
    }

    public void tB(int i10) {
        this.kkU = i10;
    }

    public void Jm(int i10) {
        this.Amz = i10;
    }

    public void Pfn(boolean z10) {
        this.oCU = z10;
    }

    public void ZYk(boolean z10) {
        this.f13208jr = z10;
    }

    public void ba(int i10) {
        this.mCw = i10;
    }

    public void cFZ(boolean z10) {
        this.jA = z10;
    }

    public void tB(boolean z10) {
        this.VJm = z10;
    }

    public static boolean ex(cY cYVar) {
        return (cYVar == null || cYVar.ib() == null || cYVar.ib().oJ() != 1) ? false : true;
    }

    public void Pfn(int i10) {
        this.SYE = i10;
    }

    public void ZYk(com.bytedance.sdk.openadsdk.core.kkU.so.oJ oJVar) {
        this.Tvw = oJVar;
        com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ().oJ(oJVar, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD);
    }

    public void ba(JSONObject jSONObject) {
        this.Wd = jSONObject;
    }

    public void cFZ(int i10) {
        oJ(i10, -1);
    }

    public void nQI(int i10) {
        this.bgF = i10;
    }

    public void tB(Ry ry) {
        this.f13219tb.add(ry);
    }

    public void Pfn(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.LpP = 4;
        this.Yg = jSONObject.optString("id");
        this.LS = jSONObject.optString("source");
        ba baVar = new ba();
        this.lY = baVar;
        baVar.tB(jSONObject.optString("pkg_name"));
        this.lY.ZYk(jSONObject.optString("name"));
        this.lY.oJ(jSONObject.optString(DownloadModel.DOWNLOAD_URL));
    }

    public void cFZ(JSONObject jSONObject) {
        this.IxS.oJ(jSONObject);
    }

    public void tB(JSONObject jSONObject) {
        this.MVA = jSONObject;
    }

    public static int ex(String str) {
        return oJ(tB(str));
    }

    public static boolean oJ(cY cYVar) {
        return (cYVar == null || cYVar.ib() == null || cYVar.ib().ex() != 1) ? false : true;
    }

    public void ZYk(double d10) {
        if (d10 != 2.0d && d10 != 1.0d) {
            this.WGj = 2;
        } else {
            this.WGj = (int) d10;
        }
    }

    public void tB(com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk zYk) {
        this.uvK = zYk;
    }

    public static com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ(String str, cY cYVar) {
        cYVar.Jm(0);
        int qnr = cYVar.qnr();
        int i10 = 3;
        if (qnr == 3) {
            i10 = 4;
        } else if (qnr == 7) {
            i10 = 1;
        } else if (qnr == 8) {
            i10 = 2;
        }
        com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk zYk = new com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk(str, cYVar.IxS(), cYVar.jTO(), cYVar.rQ(), cYVar.KYc(), i10);
        zYk.oJ(com.bytedance.sdk.openadsdk.oq.oJ.oJ("video_error_conf", 0));
        return zYk;
    }

    public void ex(boolean z10) {
        this.bD = z10;
    }

    public void tB(long j10) {
        this.PiB = j10;
    }

    public void ZYk(JSONObject jSONObject) {
        this.lG = jSONObject;
    }

    public void ex(int i10) {
        this.Br = i10;
    }

    public void ZYk(Ry ry) {
        this.f13212mu = ry;
    }

    public void ex(JSONObject jSONObject) {
        this.sQ = jSONObject;
    }

    public void ZYk(long j10) {
        this.TA = j10;
    }

    public void ex(long j10) {
        this.jFA = j10;
    }

    private JSONObject ZYk(FilterWord filterWord) {
        if (filterWord == null) {
            return null;
        }
        try {
            if (filterWord.isValid()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", filterWord.getId());
                jSONObject.put("name", filterWord.getName());
                jSONObject.put("is_selected", filterWord.getIsSelected());
                if (filterWord.hasSecondOptions()) {
                    JSONArray jSONArray = new JSONArray();
                    for (FilterWord filterWord2 : filterWord.getOptions()) {
                        jSONArray.put(ZYk(filterWord2));
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("options", jSONArray);
                    }
                }
                return jSONObject;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static long oJ(String str) {
        return so(tB(str));
    }

    public static int oJ(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optInt("ut", 0);
        }
        return 0;
    }

    public static String oJ(Context context, cY cYVar) {
        if (context == null || cYVar == null || !((cYVar.qnr() == 8 || cYVar.qnr() == 7) && cYVar.eXp())) {
            return null;
        }
        String ZYk2 = ZYk(context, cYVar);
        if (TextUtils.isEmpty(ZYk2) || com.bytedance.sdk.openadsdk.core.act.oJ.oJ() != 1) {
            return null;
        }
        return ZYk2;
    }

    public void oJ(boolean z10) {
        this.f13217si = z10;
    }

    public void oJ(so soVar) {
        this.CE = soVar;
    }

    public void oJ(oq oqVar) {
        this.SB = oqVar;
    }

    public void oJ(RZ rz) {
        this.Mrg = rz;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.kkU.so.oJ oJVar) {
        this.Efd = oJVar;
        com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ().oJ(oJVar, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD);
    }

    public void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk zYk) {
        this.UF = zYk;
    }

    public static void ZYk(cY cYVar, JSONObject jSONObject) throws JSONException {
        ba Wd = cYVar.Wd();
        if (Wd != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, Wd.ZYk());
            jSONObject2.put("package_name", Wd.tB());
            jSONObject2.put(DownloadModel.DOWNLOAD_URL, Wd.oJ());
            jSONObject2.put("score", Wd.ex());
            jSONObject2.put("comment_num", Wd.Pfn());
            jSONObject2.put(CampaignEx.JSON_KEY_APP_SIZE, Wd.ba());
            jSONObject2.put("app_category", Wd.cFZ());
            jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_WX_APP, jSONObject2);
        }
    }

    public void oJ(cFZ cfz) {
        this.qF = cfz;
    }

    public void oJ(Ln ln2) {
        this.edj = ln2;
    }

    public void oJ(int i10, int i11) {
        this.Jc = i10;
        this.nke = i10;
        if (this.XQY == null) {
            this.nke = 0;
            return;
        }
        if (i11 <= 0) {
            i11 = qnr();
        }
        if (this.XQY.getDurationSlotType() != 3 && i11 != 3) {
            if (this.XQY.getDurationSlotType() != 7 && this.XQY.getDurationSlotType() != 8 && i11 != 7 && i11 != 8) {
                if (!this.OP && Ln.ZYk(this)) {
                    this.nke = 4;
                    return;
                }
                if (this.Jc == 4 && !Ln.ZYk(this)) {
                    this.nke = 0;
                }
                int i12 = this.Jc;
                if (i12 == 41) {
                    this.nke = 41;
                    return;
                } else if (i10 >= 5) {
                    this.nke = 0;
                    return;
                } else if (i12 == 2 && sQ() != 3) {
                    this.nke = 0;
                    return;
                } else if (i10 == 0 || (i10 == 1 && sQ() != 3)) {
                    this.nke = 0;
                    return;
                } else {
                    return;
                }
            }
            if (!this.OP) {
                if (Ln.tB(this)) {
                    this.nke = 12;
                    return;
                } else if (Ln.ZYk(this)) {
                    this.nke = 9;
                    return;
                }
            }
            if (this.Jc == 5 && !QSm.ex(this)) {
                this.nke = 7;
            }
            if (this.Jc == 6 && !QSm.ZYk(this)) {
                this.nke = 7;
            }
            if (this.Jc == 8 && Wek() != 100) {
                this.nke = 7;
            }
            if (this.Jc == 19 && TextUtils.isEmpty(this.XAo)) {
                this.nke = 7;
            }
            if (this.Jc == 20 && TextUtils.isEmpty(this.XAo)) {
                this.nke = 7;
            }
            if (this.Jc == 38 && !QSm.tB(this)) {
                this.nke = 7;
            }
            if (i10 < 5) {
                this.nke = 7;
                return;
            }
            return;
        }
        this.nke = 14;
    }

    public void oJ(double d10) {
        if (d10 != 2.0d && d10 != 1.0d) {
            this.UUI = 1;
        } else {
            this.UUI = (int) d10;
        }
    }

    public void oJ(dLZ dlz) {
        this.eXp = dlz;
    }

    public void oJ(AdSlot adSlot) {
        this.XQY = adSlot;
    }

    public void oJ(oJ oJVar) {
        this.zGT = oJVar;
        com.bytedance.sdk.component.adexpress.oJ.tB.ex JJ = JJ();
        if (JJ != null && !XQY()) {
            com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.oJ(JJ);
        }
        if (oJVar == null || TextUtils.isEmpty(oJVar.PiB())) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ().oJ(sR(), "ad");
    }

    public void oJ(Jc jc2) {
        this.zUb = jc2;
        if (jc2 == null || TextUtils.isEmpty(jc2.tB())) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ().oJ(uP(), "adv3");
    }

    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk zYk) {
        this.jXJ = zYk;
    }

    public void oJ(WcQ wcQ) {
        this.NX = wcQ;
    }

    public void oJ(Ry ry) {
        oJ(ry, dLZ);
        String XAo = XAo(ry.oJ());
        if (!TextUtils.isEmpty(XAo)) {
            ry.ZYk(XAo);
        }
        this.UN = ry;
    }

    private void oJ(Ry ry, int i10) {
        if (ry != null) {
            try {
                if (TextUtils.isEmpty(ry.oJ())) {
                    return;
                }
                if (ry.ZYk() == 0 && ry.tB() == 0) {
                    ry.oJ(i10);
                    ry.ZYk(i10);
                } else if (ry.ZYk() == 0) {
                    if (ry.tB() > i10) {
                        ry.ZYk(i10);
                        ry.oJ(i10);
                        return;
                    }
                    ry.oJ(ry.tB());
                } else if (ry.tB() == 0) {
                    if (ry.ZYk() > i10) {
                        ry.ZYk(i10);
                        ry.oJ(i10);
                        return;
                    }
                    ry.ZYk(ry.ZYk());
                } else if (ry.ZYk() > ry.tB()) {
                    if (ry.ZYk() > i10) {
                        ry.ZYk((int) (i10 / (ry.ZYk() / ry.tB())));
                        ry.oJ(i10);
                    }
                } else if (ry.tB() > i10) {
                    ry.oJ((int) (i10 * (ry.ZYk() / ry.tB())));
                    ry.ZYk(i10);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void oJ(ba baVar) {
        this.lY = baVar;
    }

    public void oJ(PiB piB) {
        this.mwH = piB;
    }

    public void oJ(FilterWord filterWord) {
        this.IUZ.add(filterWord);
    }

    public void oJ(Map<String, Object> map) {
        this.SWT = map;
    }

    public void oJ(float f10) {
        this.XSu = f10;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar) {
        this.eW = oJVar;
    }

    public void oJ(si siVar) {
        this.TNk = siVar;
    }

    public void oJ(awB awb) {
        this.Zwf = awb;
    }

    public void oJ(IUZ iuz) {
        this.hW = iuz;
    }

    public void oJ(PAGBannerSize pAGBannerSize) {
        this.BP = pAGBannerSize;
    }

    public void oJ(Xe xe2) {
        this.rQ = xe2;
    }

    public void oJ(com.bytedance.sdk.openadsdk.jr.oJ.ZYk zYk) {
        this.bbM = zYk;
    }

    public void oJ(LpP lpP) {
        this.KYc = lpP;
    }

    public void oJ(Pfn pfn) {
        this.Ry = pfn;
    }

    public static void oJ(cY cYVar, JSONObject jSONObject) throws JSONException {
        List<Ry> yB = cYVar.yB();
        if (yB != null) {
            JSONArray jSONArray = new JSONArray();
            for (Ry ry : yB) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("url", ry.oJ());
                jSONObject2.put("height", ry.tB());
                jSONObject2.put("width", ry.ZYk());
                jSONObject2.put("image_preview", ry.ba());
                jSONObject2.put("image_key", ry.cFZ());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("image", jSONArray);
        }
    }
}
