package com.bytedance.sdk.component.adexpress.dynamic.ex;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.startshorts.androidplayer.bean.shorts.SubtitleDataKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba {
    private String Amz;
    private List<oJ> BHY;
    private double BTZ;
    private JSONObject BWx;
    private int Dex;
    private int EP;
    private int HL;
    private int HyG;
    private double IUZ;
    private String Id;
    private int JJ;
    private String Jc;
    private double Jm;
    private String LE;
    private boolean LS;
    private double Ln;
    private String LpP;
    private int MVA;
    private int MoK;
    private boolean NO;
    private int NX;
    private boolean Oof;
    private boolean PdF;
    private boolean Pfn;
    private String PiB;
    private String QSm;
    private int Qu;
    private JSONObject Qzd;
    private String RZ;
    private int Rl;
    private String Ry;
    private int SCr;
    private int SWT;
    private int TA;
    private String UF;
    private int UK;
    private String UN;
    private long UUI = -1;
    private int Uf;
    private String VJm;
    private int VSB;
    private String WGj;
    private String WcQ;
    private boolean Wek;
    private boolean XAo;
    private double XQY;
    private String XSu;
    private boolean Xe;
    private JSONObject YF;
    private int YQ;
    private boolean Yg;
    private String ZMY;
    private float ZYk;
    private boolean Zjw;
    private int Zzm;
    private String awB;
    private boolean bD;

    /* renamed from: ba  reason: collision with root package name */
    private float f12688ba;
    private int bgF;
    private float cFZ;
    private String cY;
    private int cdg;
    private double dLZ;
    private boolean eXp;
    private String eZI;
    private float ex;
    private String hwh;

    /* renamed from: ib  reason: collision with root package name */
    private boolean f12689ib;
    private boolean jB;
    private float jFA;
    private int jXJ;

    /* renamed from: jr  reason: collision with root package name */
    private String f12690jr;
    private float kkU;
    private int lY;

    /* renamed from: mu  reason: collision with root package name */
    private String f12691mu;
    private String mwH;
    private boolean nQI;
    private String nke;
    private int oCU;
    private int oG;
    private boolean oIC;
    private float oJ;
    private boolean oTd;
    private int ofl;

    /* renamed from: oo  reason: collision with root package name */
    private int f12692oo;

    /* renamed from: oq  reason: collision with root package name */
    private String f12693oq;

    /* renamed from: rg  reason: collision with root package name */
    private int f12694rg;
    private JSONObject sH;
    private int sQ;

    /* renamed from: si  reason: collision with root package name */
    private String f12695si;

    /* renamed from: so  reason: collision with root package name */
    private float f12696so;
    private float tB;

    /* renamed from: tb  reason: collision with root package name */
    private int f12697tb;
    private int uaj;

    /* renamed from: uq  reason: collision with root package name */
    private int f12698uq;
    private int uvK;

    /* renamed from: wd  reason: collision with root package name */
    private int f12699wd;
    private int yB;
    private boolean yQF;
    private String ypD;
    private String yz;
    private int zGT;

    private void HL(String str) {
        this.Amz = str;
    }

    public static ba oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        ba baVar = new ba();
        baVar.ZYk(jSONObject.optString("adType", "embeded"));
        baVar.awB(jSONObject.optString("clickArea", "creative"));
        baVar.eZI(jSONObject.optString("clickTigger", "click"));
        baVar.tB(jSONObject.optString(TtmlNode.ATTR_TTS_FONT_FAMILY, "PingFangSC"));
        baVar.ex(jSONObject.optString(TtmlNode.ATTR_TTS_TEXT_ALIGN, TtmlNode.LEFT));
        baVar.Pfn(jSONObject.optString("color", "#999999"));
        baVar.ba(jSONObject.optString("bgColor", "transparent"));
        baVar.cFZ(jSONObject.optString("bgImgUrl", ""));
        baVar.HL(jSONObject.optString("bgImgData", ""));
        baVar.so(jSONObject.optString("borderColor", SubtitleDataKt.DEFAULT_SUBTITLE_SHADOW_COLOR));
        baVar.jFA(jSONObject.optString("borderStyle", "solid"));
        baVar.kkU(jSONObject.optString("heightMode", "auto"));
        baVar.dLZ(jSONObject.optString("widthMode", "fixed"));
        baVar.BTZ(jSONObject.optString("interactText", ""));
        baVar.tB(jSONObject.optBoolean("isShowBgControl", false));
        baVar.PiB(jSONObject.optString("interactBgColor", ""));
        JSONObject optJSONObject = jSONObject.optJSONObject("interactPosition");
        if (optJSONObject != null) {
            baVar.cFZ(optJSONObject.optInt("translateY", 0));
            baVar.so(optJSONObject.optInt("translateX", 0));
            baVar.ex(optJSONObject.optDouble("scaleX", 0.0d));
            baVar.Pfn(optJSONObject.optDouble("scaleY", 0.0d));
        }
        baVar.WcQ(jSONObject.optString("interactType", ""));
        baVar.Pfn(jSONObject.optInt("interactSlideDirection", -1));
        baVar.si(jSONObject.optString("justifyHorizontal", "space-around"));
        baVar.Ry(jSONObject.optString("justifyVertical", "flex-start"));
        baVar.ZYk(jSONObject.optDouble("timingStart"));
        baVar.tB(jSONObject.optDouble("timingEnd"));
        baVar.ex((float) jSONObject.optDouble("width", 0.0d));
        baVar.tB((float) jSONObject.optDouble("height", 0.0d));
        baVar.oJ((float) jSONObject.optDouble("borderRadius", 0.0d));
        baVar.ZYk((float) jSONObject.optDouble("borderSize", 0.0d));
        baVar.ZYk(jSONObject.optBoolean("interactValidate", false));
        baVar.jFA((float) jSONObject.optDouble(TtmlNode.ATTR_TTS_FONT_SIZE, 0.0d));
        baVar.Pfn((float) jSONObject.optDouble("paddingBottom", 0.0d));
        baVar.ba((float) jSONObject.optDouble("paddingLeft", 0.0d));
        baVar.cFZ((float) jSONObject.optDouble("paddingRight", 0.0d));
        baVar.so((float) jSONObject.optDouble("paddingTop", 0.0d));
        baVar.ex(jSONObject.optBoolean("lineFeed", false));
        baVar.jFA(jSONObject.optInt("lineCount", 0));
        baVar.ba(jSONObject.optDouble("lineHeight", 1.2d));
        baVar.WcQ(jSONObject.optInt("letterSpacing", 0));
        baVar.Pfn(jSONObject.optBoolean("isDataFixed", false));
        baVar.awB(jSONObject.optInt(TtmlNode.ATTR_TTS_FONT_WEIGHT));
        baVar.ba(jSONObject.optBoolean("lineLimit"));
        baVar.eZI(jSONObject.optInt("position"));
        baVar.RZ(jSONObject.optString("align"));
        baVar.cFZ(jSONObject.optBoolean("useLeft"));
        baVar.so(jSONObject.optBoolean("useRight"));
        baVar.jFA(jSONObject.optBoolean("useTop"));
        baVar.kkU(jSONObject.optBoolean("useBottom"));
        baVar.QSm(jSONObject.optString("data"));
        baVar.ZYk(jSONObject.optJSONObject("i18n"));
        baVar.BTZ(jSONObject.optInt("marginLeft"));
        baVar.PiB(jSONObject.optInt("marginRight"));
        baVar.kkU(jSONObject.optInt("marginTop"));
        baVar.dLZ(jSONObject.optInt("marginBottom"));
        baVar.si(jSONObject.optInt("tagMaxCount"));
        baVar.dLZ(jSONObject.optBoolean("allowTextFlow"));
        baVar.Ry(jSONObject.optInt("textFlowType"));
        baVar.RZ(jSONObject.optInt("textFlowDuration"));
        baVar.QSm(jSONObject.optInt(TtmlNode.LEFT));
        baVar.oq(jSONObject.optInt(TtmlNode.RIGHT));
        baVar.Id(jSONObject.optInt("top"));
        baVar.cY(jSONObject.optInt("bottom"));
        baVar.oq(jSONObject.optString("alignItems", "flex-start"));
        baVar.Id(jSONObject.optString(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, ""));
        baVar.oJ(jSONObject.optBoolean("loop", false));
        baVar.jr(jSONObject.optInt("zIndex"));
        baVar.Ln(jSONObject.optInt("interactVisibleTime"));
        baVar.Xe(jSONObject.optInt("interactHiddenTime"));
        baVar.PiB(jSONObject.optBoolean("interactEnableMask"));
        baVar.WcQ(jSONObject.optBoolean("interactWontHide"));
        baVar.oJ(jSONObject.optString("bgGradient"));
        baVar.nke(jSONObject.optInt("areaType"));
        baVar.Jc(jSONObject.optInt("interactSlideThreshold", 0));
        baVar.XAo(jSONObject.optInt("interactBottomDistance", com.bytedance.sdk.component.adexpress.ex.ZYk() ? 0 : 120));
        baVar.Ry(jSONObject.optBoolean("openPlayableLandingPage", false));
        baVar.tB(jSONObject.optJSONObject("video"));
        baVar.ex(jSONObject.optJSONObject("image"));
        baVar.UN(jSONObject.optInt("borderShadowExtent"));
        baVar.awB(jSONObject.optBoolean("bgGauseBlur"));
        baVar.mu(jSONObject.optInt("bgGauseBlurRadius"));
        baVar.eZI(jSONObject.optBoolean("showTimeProgress", false));
        baVar.si(jSONObject.optBoolean("showPlayButton", false));
        baVar.oJ(jSONObject.optDouble("bgColorCg", 0.0d));
        baVar.ba(jSONObject.optInt("bgMaterialCenterCalcColor", 0));
        baVar.ZYk(jSONObject.optInt("borderTopLeftRadius", 0));
        baVar.oJ(jSONObject.optInt("borderTopRightRadius", 0));
        baVar.ex(jSONObject.optInt("borderBottomLeftRadius", 0));
        baVar.tB(jSONObject.optInt("borderBottomRightRadius", 0));
        baVar.Pfn(jSONObject.optJSONObject("interactI18n"));
        baVar.jr(jSONObject.optString("imageObjectFit"));
        baVar.Xe(jSONObject.optString("interactTitle"));
        baVar.LpP(jSONObject.optInt("interactTextPositionTop"));
        baVar.cY(jSONObject.optString("imageLottieTosPath"));
        baVar.BTZ(jSONObject.optBoolean("animationsLoop"));
        baVar.tb(jSONObject.optInt("lottieAppNameMaxLength"));
        baVar.IUZ(jSONObject.optInt("lottieAdDescMaxLength"));
        baVar.HL(jSONObject.optInt("lottieAdTitleMaxLength"));
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("animations");
            if (optJSONArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i10);
                    oJ oJVar = new oJ();
                    oJVar.tB(jSONObject2.optString("animationType"));
                    oJVar.oJ(jSONObject2.optDouble("animationDuration"));
                    oJVar.ZYk(jSONObject2.optDouble("animationScaleX"));
                    oJVar.tB(jSONObject2.optDouble("animationScaleY"));
                    oJVar.ex(jSONObject2.optString("animationTimeFunction"));
                    oJVar.ex(jSONObject2.optDouble("animationDelay"));
                    oJVar.ba(jSONObject2.optInt("animationIterationCount"));
                    oJVar.Pfn(jSONObject2.optString("animationDirection"));
                    oJVar.Pfn(jSONObject2.optDouble("animationInterval"));
                    oJVar.oJ(jSONObject2.optInt("animationBorderWidth"));
                    oJVar.oJ(jSONObject2.optLong("key"));
                    oJVar.ZYk(jSONObject2.optInt("animationEffectWidth"));
                    oJVar.tB(jSONObject2.optInt("animationSwing", 1));
                    oJVar.ex(jSONObject2.optInt("animationTranslateX"));
                    oJVar.Pfn(jSONObject2.optInt("animationTranslateY"));
                    oJVar.ZYk(jSONObject2.optString("animationRippleBackgroundColor"));
                    oJVar.oJ(jSONObject2.optString("animationScaleDirection"));
                    oJVar.cFZ(jSONObject2.optInt("animationFadeStart"));
                    oJVar.so(jSONObject2.optInt("animationFadeEnd"));
                    oJVar.ba(jSONObject2.optString("animationFillMode"));
                    oJVar.jFA(jSONObject2.optInt("animationBounceHeight"));
                    if (baVar.RZ() > 0.0d) {
                        oJVar.ex(oJVar.WcQ() + baVar.RZ());
                    }
                    arrayList.add(oJVar);
                }
                baVar.oJ(arrayList);
            }
            if (jSONObject.has("triggerSlideMinDistance")) {
                baVar.tb(jSONObject.optString("triggerSlideDirection", MBridgeConstans.ENDCARD_URL_TYPE_PL));
                baVar.oJ(jSONObject.optLong("triggerSlideMinDistance", 0L));
            }
        } catch (Exception unused) {
        }
        return baVar;
    }

    public String BHY() {
        return this.UF;
    }

    public float BTZ() {
        return this.ZYk;
    }

    public String BWx() {
        return this.ZMY;
    }

    public boolean Dex() {
        return this.oTd;
    }

    public int EP() {
        return this.jXJ;
    }

    public String HyG() {
        return this.Jc;
    }

    public String IUZ() {
        return this.Id;
    }

    public String Id() {
        return this.eZI;
    }

    public int JJ() {
        return this.NX;
    }

    public int Jc() {
        return this.f12697tb;
    }

    public boolean Jm() {
        return this.XAo;
    }

    public String LE() {
        return this.WGj;
    }

    public boolean LS() {
        return this.nQI;
    }

    public String Ln() {
        return this.cY;
    }

    public String LpP() {
        return this.f12690jr;
    }

    public int MVA() {
        return this.zGT;
    }

    public boolean MoK() {
        return this.NO;
    }

    public int NO() {
        return this.bgF;
    }

    public int NX() {
        return this.oG;
    }

    public JSONObject Oof() {
        return this.BWx;
    }

    public boolean PdF() {
        return this.Zjw;
    }

    public int Pfn() {
        return this.f12694rg;
    }

    public boolean PiB() {
        return this.Pfn;
    }

    public double QSm() {
        return this.BTZ;
    }

    public int Qu() {
        return this.ofl;
    }

    public int Qzd() {
        return this.SWT;
    }

    public double RZ() {
        return this.dLZ;
    }

    public String Rl() {
        return this.f12691mu;
    }

    public float Ry() {
        return this.kkU;
    }

    public String SCr() {
        return this.XSu;
    }

    public String SWT() {
        return this.VJm;
    }

    public boolean TA() {
        return this.jB;
    }

    public int UF() {
        return this.MoK;
    }

    public String UK() {
        return this.yz;
    }

    public int UN() {
        return this.HL;
    }

    public int Uf() {
        return this.EP;
    }

    public int VJm() {
        return this.TA;
    }

    public JSONObject VSB() {
        return this.sH;
    }

    public long WGj() {
        return this.UUI;
    }

    public float WcQ() {
        return this.f12688ba;
    }

    public boolean Wek() {
        return this.Oof;
    }

    public double XAo() {
        return this.Ln;
    }

    public int XQY() {
        return this.YQ;
    }

    public boolean XSu() {
        return this.PdF;
    }

    public String Xe() {
        return this.Amz;
    }

    public boolean YF() {
        return this.f12689ib;
    }

    public int YQ() {
        return this.uvK;
    }

    public int Yg() {
        return this.cdg;
    }

    public boolean ZMY() {
        return this.eXp;
    }

    public int ZYk() {
        return this.sQ;
    }

    public String Zjw() {
        return this.hwh;
    }

    public boolean Zzm() {
        return this.Wek;
    }

    public float awB() {
        return this.cFZ;
    }

    public int bD() {
        return this.UK;
    }

    public JSONObject ba() {
        return this.Qzd;
    }

    public int bgF() {
        return this.HyG;
    }

    public int cFZ() {
        return this.JJ;
    }

    public String cY() {
        return this.f12695si;
    }

    public String cdg() {
        return this.UN;
    }

    public float dLZ() {
        return this.oJ;
    }

    public int eXp() {
        return this.f12698uq;
    }

    public float eZI() {
        return this.f12696so;
    }

    public int ex() {
        return this.f12692oo;
    }

    public List<oJ> hwh() {
        return this.BHY;
    }

    public int ib() {
        List<oJ> list = this.BHY;
        if (list != null) {
            for (oJ oJVar : list) {
                if ("translate".equals(oJVar.jFA()) && oJVar.cFZ() < 0) {
                    return -oJVar.cFZ();
                }
            }
            return 0;
        }
        return 0;
    }

    public boolean jB() {
        return this.Yg;
    }

    public int jFA() {
        return this.MVA;
    }

    public int jXJ() {
        return this.Dex;
    }

    public String jr() {
        return this.Ry;
    }

    public String kkU() {
        return this.ypD;
    }

    public int lY() {
        return this.Rl;
    }

    public double mu() {
        return this.IUZ;
    }

    public double mwH() {
        return this.Jm;
    }

    public int nQI() {
        return this.f12699wd;
    }

    public boolean nke() {
        return this.Xe;
    }

    public int oCU() {
        return this.VSB;
    }

    public int oG() {
        return this.uaj;
    }

    public boolean oIC() {
        return this.LS;
    }

    public int oTd() {
        return this.Qu;
    }

    public String ofl() {
        return this.LpP;
    }

    public int oo() {
        return this.SCr;
    }

    public String oq() {
        return this.awB;
    }

    public boolean rg() {
        return this.yQF;
    }

    public String sH() {
        return this.mwH;
    }

    public int sQ() {
        return this.Uf;
    }

    public float si() {
        return this.jFA;
    }

    public double so() {
        return this.XQY;
    }

    public int tB() {
        return this.Zzm;
    }

    public String tb() {
        return this.RZ;
    }

    public void uaj() {
        oJ(this, this.BWx);
    }

    public void uq() {
        oJ(this, this.YF);
    }

    public boolean uvK() {
        return this.oIC;
    }

    public String wd() {
        return this.nke;
    }

    public String yB() {
        return this.LE;
    }

    public int yQF() {
        return this.yB;
    }

    public int yz() {
        return this.lY;
    }

    public int zGT() {
        return this.oCU;
    }

    public void BTZ(String str) {
        this.cY = str;
    }

    public String HL() {
        return this.f12693oq;
    }

    public void IUZ(int i10) {
        this.uaj = i10;
    }

    public void Id(int i10) {
        this.jXJ = i10;
    }

    public void Jc(int i10) {
        this.zGT = i10;
    }

    public void Ln(int i10) {
        this.YQ = i10;
    }

    public void LpP(int i10) {
        this.NX = i10;
    }

    public void Pfn(int i10) {
        this.JJ = i10;
    }

    public void PiB(String str) {
        this.f12690jr = str;
    }

    public void QSm(String str) {
        this.yz = str;
    }

    public void RZ(String str) {
        this.mwH = str;
    }

    public void Ry(String str) {
        this.f12691mu = str;
    }

    public void UN(int i10) {
        this.Uf = i10;
    }

    public void WcQ(String str) {
        this.LpP = str;
    }

    public void XAo(int i10) {
        this.oG = i10;
    }

    public void Xe(int i10) {
        this.EP = i10;
    }

    public void ZYk(int i10) {
        this.Zzm = i10;
    }

    public void awB(String str) {
        this.nke = str;
    }

    public void ba(int i10) {
        this.MVA = i10;
    }

    public void cFZ(float f10) {
        this.f12696so = f10;
    }

    public void cY(int i10) {
        this.uvK = i10;
    }

    public void dLZ(String str) {
        this.Id = str;
    }

    public void eZI(String str) {
        this.Jc = str;
    }

    public void ex(int i10) {
        this.f12694rg = i10;
    }

    public void jFA(float f10) {
        this.kkU = f10;
    }

    public void jr(int i10) {
        this.oCU = i10;
    }

    public void kkU(String str) {
        this.f12693oq = str;
    }

    public void mu(int i10) {
        this.SCr = i10;
    }

    public void nke(int i10) {
        this.SWT = i10;
    }

    public void oq(int i10) {
        this.VSB = i10;
    }

    public void si(String str) {
        this.UN = str;
    }

    public void so(float f10) {
        this.jFA = f10;
    }

    public void tB(int i10) {
        this.f12692oo = i10;
    }

    public void tb(int i10) {
        this.yB = i10;
    }

    public void BTZ(int i10) {
        this.cdg = i10;
    }

    public void HL(int i10) {
        this.f12698uq = i10;
    }

    public void Id(String str) {
        this.VJm = str;
    }

    public void Pfn(float f10) {
        this.f12688ba = f10;
    }

    public void PiB(int i10) {
        this.Rl = i10;
    }

    public void QSm(int i10) {
        this.UK = i10;
    }

    public void RZ(int i10) {
        this.TA = i10;
    }

    public void Ry(int i10) {
        this.MoK = i10;
    }

    public void WcQ(int i10) {
        this.Qu = i10;
    }

    public void Xe(String str) {
        this.LE = str;
    }

    public void ZYk(float f10) {
        this.ZYk = f10;
    }

    public void awB(int i10) {
        this.bgF = i10;
    }

    public void ba(float f10) {
        this.cFZ = f10;
    }

    public void cFZ(String str) {
        this.Ry = str;
    }

    public void cY(String str) {
        this.XSu = str;
    }

    public void dLZ(int i10) {
        this.HyG = i10;
    }

    public void eZI(int i10) {
        this.lY = i10;
    }

    public void ex(float f10) {
        this.ex = f10;
    }

    public void jFA(String str) {
        this.QSm = str;
    }

    public void jr(String str) {
        this.ZMY = str;
    }

    public void kkU(int i10) {
        this.f12699wd = i10;
    }

    public void oq(String str) {
        this.UF = str;
    }

    public void si(int i10) {
        this.Dex = i10;
    }

    public void so(String str) {
        this.RZ = str;
    }

    public void tB(float f10) {
        this.tB = f10;
    }

    public void tb(String str) {
        this.WGj = str;
    }

    public void BTZ(boolean z10) {
        this.Oof = z10;
    }

    public void Pfn(String str) {
        this.eZI = str;
    }

    public void PiB(boolean z10) {
        this.Zjw = z10;
    }

    public void Ry(boolean z10) {
        this.PdF = z10;
    }

    public void WcQ(boolean z10) {
        this.f12689ib = z10;
    }

    public void ZYk(boolean z10) {
        this.Pfn = z10;
    }

    public void awB(boolean z10) {
        this.Wek = z10;
    }

    public void ba(String str) {
        this.f12695si = str;
    }

    public void cFZ(int i10) {
        this.f12697tb = i10;
    }

    public void dLZ(boolean z10) {
        this.oIC = z10;
    }

    public void eZI(boolean z10) {
        this.yQF = z10;
    }

    public void ex(String str) {
        this.awB = str;
    }

    public void jFA(int i10) {
        this.ofl = i10;
    }

    public void kkU(boolean z10) {
        this.jB = z10;
    }

    public void si(boolean z10) {
        this.eXp = z10;
    }

    public void so(int i10) {
        this.HL = i10;
    }

    public void tB(double d10) {
        this.BTZ = d10;
    }

    public void Pfn(double d10) {
        this.Ln = d10;
    }

    public void ZYk(double d10) {
        this.dLZ = d10;
    }

    public void ba(double d10) {
        this.Jm = d10;
    }

    public void cFZ(boolean z10) {
        this.oTd = z10;
    }

    public void ex(double d10) {
        this.IUZ = d10;
    }

    public void jFA(boolean z10) {
        this.NO = z10;
    }

    public void so(boolean z10) {
        this.LS = z10;
    }

    public void tB(String str) {
        this.WcQ = str;
    }

    public void Pfn(boolean z10) {
        this.nQI = z10;
    }

    public void ZYk(String str) {
        this.PiB = str;
    }

    public void ba(boolean z10) {
        this.Yg = z10;
    }

    public void ex(boolean z10) {
        this.XAo = z10;
    }

    public void tB(boolean z10) {
        this.Xe = z10;
    }

    public void Pfn(JSONObject jSONObject) {
        this.Qzd = jSONObject;
    }

    public void ZYk(JSONObject jSONObject) {
        this.sH = jSONObject;
    }

    public void ex(JSONObject jSONObject) {
        this.BWx = jSONObject;
    }

    public void tB(JSONObject jSONObject) {
        this.YF = jSONObject;
    }

    public boolean oJ() {
        return this.bD;
    }

    public void oJ(boolean z10) {
        this.bD = z10;
    }

    public void oJ(int i10) {
        this.sQ = i10;
    }

    public void oJ(double d10) {
        this.XQY = d10;
    }

    public void oJ(String str) {
        this.ypD = str;
    }

    public void oJ(float f10) {
        this.oJ = f10;
    }

    public void oJ(List<oJ> list) {
        this.BHY = list;
    }

    public void oJ(long j10) {
        this.UUI = j10;
    }

    private void oJ(ba baVar, JSONObject jSONObject) {
        if (baVar == null || jSONObject == null) {
            return;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            next.hashCode();
            char c10 = 65535;
            switch (next.hashCode()) {
                case -2067713583:
                    if (next.equals("isShowBgControl")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1965619659:
                    if (next.equals("clickArea")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1912831834:
                    if (next.equals("triggerSlideDirection")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -1885934767:
                    if (next.equals("bgImgUrl")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -1822062213:
                    if (next.equals("lineCount")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case -1821293778:
                    if (next.equals("openPlayableLandingPage")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case -1813937113:
                    if (next.equals("lineLimit")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case -1578250488:
                    if (next.equals("interactBgColor")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case -1501175880:
                    if (next.equals("paddingLeft")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case -1422965251:
                    if (next.equals("adType")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case -1383228885:
                    if (next.equals("bottom")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case -1224696685:
                    if (next.equals(TtmlNode.ATTR_TTS_FONT_FAMILY)) {
                        c10 = 11;
                        break;
                    }
                    break;
                case -1221029593:
                    if (next.equals("height")) {
                        c10 = '\f';
                        break;
                    }
                    break;
                case -1065511464:
                    if (next.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN)) {
                        c10 = '\r';
                        break;
                    }
                    break;
                case -1063257157:
                    if (next.equals("alignItems")) {
                        c10 = 14;
                        break;
                    }
                    break;
                case -1046708884:
                    if (next.equals("interactValidate")) {
                        c10 = 15;
                        break;
                    }
                    break;
                case -1044792121:
                    if (next.equals("marginTop")) {
                        c10 = 16;
                        break;
                    }
                    break;
                case -1019884910:
                    if (next.equals("useBottom")) {
                        c10 = 17;
                        break;
                    }
                    break;
                case -1005195314:
                    if (next.equals("triggerSlideMinDistance")) {
                        c10 = 18;
                        break;
                    }
                    break;
                case -962590849:
                    if (next.equals(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION)) {
                        c10 = 19;
                        break;
                    }
                    break;
                case -912366651:
                    if (next.equals("tagMaxCount")) {
                        c10 = 20;
                        break;
                    }
                    break;
                case -848877971:
                    if (next.equals("interactHiddenTime")) {
                        c10 = 21;
                        break;
                    }
                    break;
                case -836058546:
                    if (next.equals("useTop")) {
                        c10 = 22;
                        break;
                    }
                    break;
                case -734428249:
                    if (next.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT)) {
                        c10 = 23;
                        break;
                    }
                    break;
                case -731417480:
                    if (next.equals("zIndex")) {
                        c10 = 24;
                        break;
                    }
                    break;
                case -709393864:
                    if (next.equals("timingStart")) {
                        c10 = 25;
                        break;
                    }
                    break;
                case -515807685:
                    if (next.equals("lineHeight")) {
                        c10 = 26;
                        break;
                    }
                    break;
                case -321658193:
                    if (next.equals("textFlowDuration")) {
                        c10 = 27;
                        break;
                    }
                    break;
                case -295409451:
                    if (next.equals("useRight")) {
                        c10 = 28;
                        break;
                    }
                    break;
                case -289173127:
                    if (next.equals("marginBottom")) {
                        c10 = 29;
                        break;
                    }
                    break;
                case -204859874:
                    if (next.equals("bgColor")) {
                        c10 = 30;
                        break;
                    }
                    break;
                case -148259282:
                    if (next.equals("useLeft")) {
                        c10 = 31;
                        break;
                    }
                    break;
                case -51738487:
                    if (next.equals("widthMode")) {
                        c10 = ' ';
                        break;
                    }
                    break;
                case 115029:
                    if (next.equals("top")) {
                        c10 = '!';
                        break;
                    }
                    break;
                case 3076010:
                    if (next.equals("data")) {
                        c10 = '\"';
                        break;
                    }
                    break;
                case 3317767:
                    if (next.equals(TtmlNode.LEFT)) {
                        c10 = '#';
                        break;
                    }
                    break;
                case 3327652:
                    if (next.equals("loop")) {
                        c10 = '$';
                        break;
                    }
                    break;
                case 90130308:
                    if (next.equals("paddingTop")) {
                        c10 = '%';
                        break;
                    }
                    break;
                case 92903173:
                    if (next.equals("align")) {
                        c10 = '&';
                        break;
                    }
                    break;
                case 94842723:
                    if (next.equals("color")) {
                        c10 = '\'';
                        break;
                    }
                    break;
                case 108511772:
                    if (next.equals(TtmlNode.RIGHT)) {
                        c10 = '(';
                        break;
                    }
                    break;
                case 113126854:
                    if (next.equals("width")) {
                        c10 = ')';
                        break;
                    }
                    break;
                case 164611121:
                    if (next.equals("timingEnd")) {
                        c10 = '*';
                        break;
                    }
                    break;
                case 202355100:
                    if (next.equals("paddingBottom")) {
                        c10 = '+';
                        break;
                    }
                    break;
                case 247204452:
                    if (next.equals("allowTextFlow")) {
                        c10 = ',';
                        break;
                    }
                    break;
                case 302841174:
                    if (next.equals("interactWontHide")) {
                        c10 = '-';
                        break;
                    }
                    break;
                case 365601008:
                    if (next.equals(TtmlNode.ATTR_TTS_FONT_SIZE)) {
                        c10 = '.';
                        break;
                    }
                    break;
                case 428975654:
                    if (next.equals("justifyVertical")) {
                        c10 = '/';
                        break;
                    }
                    break;
                case 439444041:
                    if (next.equals("interactVisibleTime")) {
                        c10 = '0';
                        break;
                    }
                    break;
                case 713848971:
                    if (next.equals("paddingRight")) {
                        c10 = '1';
                        break;
                    }
                    break;
                case 722830999:
                    if (next.equals("borderColor")) {
                        c10 = '2';
                        break;
                    }
                    break;
                case 737768677:
                    if (next.equals("borderStyle")) {
                        c10 = '3';
                        break;
                    }
                    break;
                case 747804969:
                    if (next.equals("position")) {
                        c10 = '4';
                        break;
                    }
                    break;
                case 791643104:
                    if (next.equals("isDataFixed")) {
                        c10 = '5';
                        break;
                    }
                    break;
                case 975087886:
                    if (next.equals("marginRight")) {
                        c10 = '6';
                        break;
                    }
                    break;
                case 1110826708:
                    if (next.equals("justifyHorizontal")) {
                        c10 = '7';
                        break;
                    }
                    break;
                case 1122368895:
                    if (next.equals("interactPosition")) {
                        c10 = '8';
                        break;
                    }
                    break;
                case 1188229042:
                    if (next.equals("lineFeed")) {
                        c10 = '9';
                        break;
                    }
                    break;
                case 1332036739:
                    if (next.equals("interactText")) {
                        c10 = ':';
                        break;
                    }
                    break;
                case 1332055696:
                    if (next.equals("interactType")) {
                        c10 = ';';
                        break;
                    }
                    break;
                case 1349188574:
                    if (next.equals("borderRadius")) {
                        c10 = '<';
                        break;
                    }
                    break;
                case 1360828714:
                    if (next.equals("clickTigger")) {
                        c10 = '=';
                        break;
                    }
                    break;
                case 1490178922:
                    if (next.equals("heightMode")) {
                        c10 = '>';
                        break;
                    }
                    break;
                case 1761274325:
                    if (next.equals("textFlowType")) {
                        c10 = '?';
                        break;
                    }
                    break;
                case 1824903757:
                    if (next.equals("borderSize")) {
                        c10 = '@';
                        break;
                    }
                    break;
                case 1970934485:
                    if (next.equals("marginLeft")) {
                        c10 = 'A';
                        break;
                    }
                    break;
                case 2111078717:
                    if (next.equals("letterSpacing")) {
                        c10 = 'B';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    baVar.tB(jSONObject.optBoolean(next, false));
                    break;
                case 1:
                    baVar.awB(jSONObject.optString(next));
                    break;
                case 2:
                    baVar.tb(jSONObject.optString(next));
                    break;
                case 3:
                    baVar.cFZ(jSONObject.optString(next));
                    break;
                case 4:
                    baVar.jFA(jSONObject.optInt(next));
                    break;
                case 5:
                    baVar.Ry(jSONObject.optBoolean(next));
                    break;
                case 6:
                    baVar.ba(jSONObject.optBoolean(next));
                    break;
                case 7:
                    baVar.PiB(jSONObject.optString(next));
                    break;
                case '\b':
                    baVar.ba((float) jSONObject.optDouble(next));
                    break;
                case '\t':
                    baVar.ZYk(jSONObject.optString(next));
                    break;
                case '\n':
                    baVar.cY(jSONObject.optInt(next));
                    break;
                case 11:
                    baVar.tB(jSONObject.optString(next));
                    break;
                case '\f':
                    baVar.tB((float) jSONObject.optDouble(next));
                    break;
                case '\r':
                    baVar.ex(jSONObject.optString(next));
                    break;
                case 14:
                    baVar.oq(jSONObject.optString(next));
                    break;
                case 15:
                    baVar.ZYk(jSONObject.optBoolean(next));
                    break;
                case 16:
                    baVar.kkU(jSONObject.optInt(next));
                    break;
                case 17:
                    baVar.kkU(jSONObject.optBoolean(next));
                    break;
                case 18:
                    baVar.oJ(jSONObject.optLong(next));
                    break;
                case 19:
                    baVar.Id(jSONObject.optString(next));
                    break;
                case 20:
                    baVar.si(jSONObject.optInt(next));
                    break;
                case 21:
                    baVar.Xe(jSONObject.optInt(next));
                    break;
                case 22:
                    baVar.jFA(jSONObject.optBoolean(next));
                    break;
                case 23:
                    baVar.awB(jSONObject.optInt(next));
                    break;
                case 24:
                    baVar.jr(jSONObject.optInt(next));
                    break;
                case 25:
                    baVar.ZYk(jSONObject.optDouble(next));
                    break;
                case 26:
                    baVar.ba(jSONObject.optDouble(next));
                    break;
                case 27:
                    baVar.RZ(jSONObject.optInt(next));
                    break;
                case 28:
                    baVar.so(jSONObject.optBoolean(next));
                    break;
                case 29:
                    baVar.dLZ(jSONObject.optInt(next));
                    break;
                case 30:
                    baVar.ba(jSONObject.optString(next));
                    break;
                case 31:
                    baVar.cFZ(jSONObject.optBoolean(next));
                    break;
                case ' ':
                    baVar.dLZ(jSONObject.optString(next));
                    break;
                case '!':
                    baVar.Id(jSONObject.optInt(next));
                    break;
                case '\"':
                    baVar.QSm(jSONObject.optString(next));
                    break;
                case '#':
                    baVar.QSm(jSONObject.optInt(next));
                    break;
                case '$':
                    baVar.oJ(jSONObject.optBoolean(next));
                    break;
                case '%':
                    baVar.so((float) jSONObject.optDouble(next));
                    break;
                case '&':
                    baVar.RZ(jSONObject.optString(next));
                    break;
                case '\'':
                    baVar.Pfn(jSONObject.optString(next));
                    break;
                case '(':
                    baVar.oq(jSONObject.optInt(next));
                    break;
                case ')':
                    baVar.ex((float) jSONObject.optDouble(next));
                    break;
                case '*':
                    baVar.tB(jSONObject.optDouble(next));
                    break;
                case '+':
                    baVar.Pfn((float) jSONObject.optDouble(next));
                    break;
                case ',':
                    baVar.dLZ(jSONObject.optBoolean(next));
                    break;
                case '-':
                    baVar.WcQ(jSONObject.optBoolean(next));
                    break;
                case '.':
                    baVar.jFA((float) jSONObject.optDouble(next));
                    break;
                case '/':
                    baVar.Ry(jSONObject.optString(next));
                    break;
                case '0':
                    baVar.Ln(jSONObject.optInt(next));
                    break;
                case '1':
                    baVar.cFZ((float) jSONObject.optDouble(next));
                    break;
                case '2':
                    baVar.so(jSONObject.optString(next));
                    break;
                case '3':
                    baVar.jFA(jSONObject.optString(next));
                    break;
                case '4':
                    baVar.eZI(jSONObject.optInt(next));
                    break;
                case '5':
                    baVar.Pfn(jSONObject.optBoolean(next));
                    break;
                case '6':
                    baVar.PiB(jSONObject.optInt(next));
                    break;
                case '7':
                    baVar.si(jSONObject.optString(next));
                    break;
                case '8':
                    JSONObject optJSONObject = jSONObject.optJSONObject(next);
                    if (optJSONObject == null) {
                        break;
                    } else {
                        baVar.cFZ(optJSONObject.optInt("translateY", 0));
                        baVar.so(optJSONObject.optInt("translateX", 0));
                        baVar.ex(optJSONObject.optDouble("scaleX", 0.0d));
                        baVar.Pfn(optJSONObject.optDouble("scaleY", 0.0d));
                        break;
                    }
                case '9':
                    baVar.ex(jSONObject.optBoolean(next));
                    break;
                case ':':
                    baVar.BTZ(jSONObject.optString(next));
                    break;
                case ';':
                    baVar.WcQ(jSONObject.optString(next));
                    break;
                case '<':
                    baVar.oJ((float) jSONObject.optDouble(next));
                    break;
                case '=':
                    baVar.eZI(jSONObject.optString(next));
                    break;
                case '>':
                    baVar.kkU(jSONObject.optString(next));
                    break;
                case '?':
                    baVar.Ry(jSONObject.optInt(next));
                    break;
                case '@':
                    baVar.ZYk((float) jSONObject.optDouble(next));
                    break;
                case 'A':
                    baVar.BTZ(jSONObject.optInt(next));
                    break;
                case 'B':
                    baVar.WcQ(jSONObject.optInt(next));
                    break;
            }
        }
    }
}
