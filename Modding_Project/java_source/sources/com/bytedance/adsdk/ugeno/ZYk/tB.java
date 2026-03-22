package com.bytedance.adsdk.ugeno.ZYk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.adsdk.ugeno.ZYk.oJ;
import com.bytedance.adsdk.ugeno.cFZ.oJ;
import com.bytedance.adsdk.ugeno.core.IAnimation;
import com.bytedance.adsdk.ugeno.core.PiB;
import com.bytedance.adsdk.ugeno.core.Ry;
import com.bytedance.adsdk.ugeno.core.WcQ;
import com.bytedance.adsdk.ugeno.core.ZYk.Pfn;
import com.bytedance.adsdk.ugeno.core.ZYk.ba;
import com.bytedance.adsdk.ugeno.core.ZYk.ex;
import com.bytedance.adsdk.ugeno.core.awB;
import com.bytedance.adsdk.ugeno.core.cFZ;
import com.bytedance.adsdk.ugeno.core.dLZ;
import com.bytedance.adsdk.ugeno.core.eZI;
import com.bytedance.adsdk.ugeno.core.kkU;
import com.bytedance.adsdk.ugeno.core.so;
import com.bytedance.adsdk.ugeno.ex;
import com.bytedance.adsdk.ugeno.ex.jFA;
import com.bytedance.adsdk.ugeno.oJ;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.texturerender.TextureRenderKeys;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class tB<T extends View> implements View.OnTouchListener, awB.ZYk, awB.oJ, ex {
    private boolean Amz;
    protected float BHY;
    protected String BTZ;
    private boolean BWx;
    private boolean Dc;
    protected int Dex;
    protected float EP;
    protected float HL;
    protected ImageView.ScaleType HyG;
    protected float IUZ;
    protected boolean Id;
    private boolean JJ;
    protected boolean Jc;
    protected boolean Jm;
    private boolean LE;
    protected boolean LS;
    protected float Ln;
    protected float LpP;
    private boolean MVA;
    protected boolean MoK;
    protected boolean NO;
    @Deprecated
    private ba NX;
    @Deprecated
    private Pfn Oof;
    private float PQw;
    protected oJ.C0143oJ PdF;
    protected T Pfn;
    protected float PiB;
    protected float QSm;
    protected float Qu;
    private boolean Qzd;
    protected float RZ;
    protected boolean Rl;
    protected float Ry;
    private boolean SB;
    protected awB SCr;
    protected float SWT;
    protected ViewGroup.LayoutParams TA;
    private boolean TNk;
    protected float UF;
    protected com.bytedance.adsdk.ugeno.oJ.oJ UK;
    protected boolean UN;
    private Ry UUI;
    protected so Uf;
    protected float VJm;
    protected com.bytedance.adsdk.ugeno.oJ.ba VSB;
    private boolean WGj;
    protected float WcQ;
    private boolean Wd;
    protected eZI Wek;
    protected boolean XAo;
    protected jFA XQY;
    @Deprecated
    private com.bytedance.adsdk.ugeno.core.ZYk.tB XSu;
    protected boolean Xe;
    private boolean YF;
    protected float YQ;
    protected float Yg;
    private com.bytedance.adsdk.ugeno.core.oJ ZMY;
    protected Context ZYk;
    @Deprecated
    private com.bytedance.adsdk.ugeno.core.ZYk.ZYk Zjw;
    private boolean Zzm;
    protected float awB;
    protected float bD;

    /* renamed from: ba  reason: collision with root package name */
    protected oJ<ViewGroup> f11628ba;
    protected float bgF;
    protected oJ<ViewGroup> cFZ;
    protected boolean cY;
    protected float cdg;
    protected String dLZ;
    private JSONObject dZS;
    private boolean eW;
    protected Map<Integer, PiB> eXp;
    protected float eZI;
    private boolean edj;
    protected JSONObject ex;
    private boolean hwh;

    /* renamed from: ib  reason: collision with root package name */
    private boolean f11629ib;
    protected float jB;
    protected dLZ jFA;
    protected float jXJ;

    /* renamed from: jr  reason: collision with root package name */
    protected boolean f11630jr;
    protected boolean kkU;
    protected float lY;

    /* renamed from: mu  reason: collision with root package name */
    protected boolean f11631mu;
    protected boolean mwH;
    protected float nQI;
    protected boolean nke;
    protected float oCU;
    protected boolean oG;
    protected float oIC;
    private boolean oJ;
    protected boolean oTd;
    protected int ofl;

    /* renamed from: oo  reason: collision with root package name */
    private GradientDrawable f11632oo;

    /* renamed from: oq  reason: collision with root package name */
    protected float f11633oq;

    /* renamed from: pe  reason: collision with root package name */
    private com.bytedance.adsdk.ugeno.ex.oJ.oJ f11634pe;
    private long rJ;

    /* renamed from: rg  reason: collision with root package name */
    private String f11635rg;
    protected String sH;
    private boolean sQ;

    /* renamed from: si  reason: collision with root package name */
    protected float f11636si;

    /* renamed from: so  reason: collision with root package name */
    protected cFZ.oJ f11637so;
    protected JSONObject tB;

    /* renamed from: tb  reason: collision with root package name */
    protected float f11638tb;
    private String uaj;

    /* renamed from: uq  reason: collision with root package name */
    private kkU f11639uq;
    protected float uvK;

    /* renamed from: wd  reason: collision with root package name */
    protected String f11640wd;
    @Deprecated
    private ex.oJ yB;
    protected com.bytedance.adsdk.ugeno.core.ba yQF;
    private boolean ypD;
    protected int yz;
    protected float zGT;

    public tB(Context context) {
        this(context, null);
    }

    private void LS() {
        if (TextUtils.equals("dashed", this.sH)) {
            GradientDrawable gradientDrawable = this.f11632oo;
            float f10 = this.jB;
            gradientDrawable.setStroke((int) f10, this.yz, 3.0f * f10, f10);
        } else if (TextUtils.equals("dotted", this.sH)) {
            GradientDrawable gradientDrawable2 = this.f11632oo;
            float f11 = this.jB;
            gradientDrawable2.setStroke((int) f11, this.yz, f11 / 2.0f, f11);
        } else {
            this.f11632oo.setStroke((int) this.jB, this.yz);
        }
    }

    private void NO() {
        float f10;
        float f11;
        float f12;
        float f13;
        if (this.mwH) {
            f10 = this.nQI;
        } else {
            f10 = this.Qu;
        }
        if (this.oTd) {
            f11 = this.Yg;
        } else {
            f11 = this.Qu;
        }
        if (this.LS) {
            f12 = this.bgF;
        } else {
            f12 = this.Qu;
        }
        if (this.NO) {
            f13 = this.lY;
        } else {
            f13 = this.Qu;
        }
        this.f11632oo.setCornerRadii(new float[]{f10, f10, f11, f11, f13, f13, f12, f12});
    }

    @Deprecated
    private void ex() {
        com.bytedance.adsdk.ugeno.core.ZYk.ex ex;
        this.Pfn.setVisibility(this.Dex);
        float f10 = this.SWT;
        if (f10 != 0.0f) {
            this.Pfn.setRotation(f10);
        }
        cFZ.oJ oJVar = this.f11637so;
        if (oJVar != null && TextUtils.isEmpty(oJVar.ZYk())) {
            this.Pfn.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.adsdk.ugeno.ZYk.tB.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    tB tBVar = tB.this;
                    if (tBVar.Uf != null) {
                        boolean unused = tBVar.eW;
                    }
                }
            });
        } else if (ZYk(1) && !this.LE) {
            this.Pfn.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.adsdk.ugeno.ZYk.tB.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Log.d("GesThrough_UGenWidget", "UGenWidget onClick handling");
                    tB tBVar = tB.this;
                    if (tBVar.SCr != null && tBVar.eW) {
                        tB tBVar2 = tB.this;
                        tB tBVar3 = tB.this;
                        tBVar2.SCr.oJ(tBVar2.eXp.get(1), tBVar3, tBVar3);
                    }
                }
            });
        }
        if (this.SCr != null && ZYk(4)) {
            if (ZYk(1)) {
                Log.d("GesThrough_UGenWidget", "onSlide & onTap, view.id: " + UN());
                this.WGj = true;
                this.Oof = new Pfn(this.ZYk, this.eXp.get(4), this.eXp.get(1), this.WGj, oTd());
            } else {
                Log.d("GesThrough_UGenWidget", "onSlide only, view.id: " + UN());
                this.Oof = new Pfn(this.ZYk, this.eXp.get(4), this.WGj, oTd());
            }
        }
        if (this.SCr != null && ZYk(1) && this.LE) {
            Log.d("GesThrough_UGenWidget", "onTap only, mOnlyTap: " + this.LE + ", view.id: " + UN());
            this.XSu = new com.bytedance.adsdk.ugeno.core.ZYk.tB(this.ZYk, this.eXp.get(1));
        }
        jFA();
        if (this.SCr != null && ZYk(3) && (ex = com.bytedance.adsdk.ugeno.Pfn.oJ().ex()) != null) {
            this.yB = ex.oJ(this.ZYk, this);
            new Object() { // from class: com.bytedance.adsdk.ugeno.ZYk.tB.3
            };
        }
        if (this.SCr != null && ZYk(9)) {
            ba baVar = new ba(this.ZYk, this.eXp.get(9), this);
            this.NX = baVar;
            baVar.oJ(this.SCr);
        }
        if (ZYk(10)) {
            com.bytedance.adsdk.ugeno.core.ZYk.ZYk zYk = new com.bytedance.adsdk.ugeno.core.ZYk.ZYk(this.ZYk, this.eXp.get(10), this);
            this.Zjw = zYk;
            zYk.oJ(this.SCr);
        }
    }

    private void jFA() {
        PiB piB;
        if (this.SCr == null || !ZYk(18) || (piB = this.eXp.get(18)) == null) {
            return;
        }
        JSONObject tB = piB.tB();
        if (tB != null) {
            try {
                tB.put("rotateZ", com.bytedance.adsdk.ugeno.tB.ZYk.oJ(tB.optString("rotateZ"), this.ex));
            } catch (JSONException unused) {
            }
        }
        this.SCr.oJ(piB, this, this);
    }

    private void kkU() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.dLZ);
        this.Pfn.setContentDescription(sb2);
    }

    public JSONObject BTZ() {
        return this.ex;
    }

    protected void HL() {
        Bitmap.Config config;
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        if (TextUtils.isEmpty(this.f11640wd)) {
            if (this.oG) {
                oJ(this.PdF);
                return;
            }
            this.f11632oo.setColor(this.ofl);
            ex(this.ofl);
        } else if (this.f11640wd.startsWith("local://")) {
            String replace = this.f11640wd.replace("local://", "");
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                if (this.Rl) {
                    config = Bitmap.Config.ARGB_4444;
                } else {
                    config = Bitmap.Config.RGB_565;
                }
                options.inPreferredConfig = config;
                options.inPurgeable = true;
                options.inInputShareable = true;
                Bitmap decodeStream = BitmapFactory.decodeStream(this.ZYk.getResources().openRawResource(com.bytedance.adsdk.ugeno.cFZ.ex.ZYk(this.ZYk, replace)), null, options);
                if (this.Rl) {
                    Bitmap oJ = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, decodeStream, (int) this.cdg);
                    if (oJ != null) {
                        bitmapDrawable2 = new BitmapDrawable(this.ZYk.getResources(), oJ);
                        oJ(bitmapDrawable2);
                    }
                    bitmapDrawable = new BitmapDrawable(this.ZYk.getResources(), decodeStream);
                } else {
                    bitmapDrawable = new BitmapDrawable(this.ZYk.getResources(), decodeStream);
                }
                bitmapDrawable2 = bitmapDrawable;
                oJ(bitmapDrawable2);
            } catch (Throwable unused) {
            }
        } else {
            IUZ();
        }
    }

    public int HyG() {
        return this.ofl;
    }

    protected void IUZ() {
        com.bytedance.adsdk.ugeno.Pfn.oJ().ZYk().oJ(this.jFA, this.f11640wd, new oJ.InterfaceC0148oJ() { // from class: com.bytedance.adsdk.ugeno.ZYk.tB.4
            @Override // com.bytedance.adsdk.ugeno.oJ.InterfaceC0148oJ
            public void oJ(final Bitmap bitmap) {
                if (bitmap == null) {
                    return;
                }
                tB tBVar = tB.this;
                if (tBVar.Rl) {
                    final Bitmap oJ = com.bytedance.adsdk.ugeno.cFZ.so.oJ(tBVar.ZYk, bitmap, (int) tBVar.cdg);
                    if (oJ != null) {
                        com.bytedance.adsdk.ugeno.cFZ.so.oJ(new Runnable() { // from class: com.bytedance.adsdk.ugeno.ZYk.tB.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                tB.this.oJ(new BitmapDrawable(oJ));
                            }
                        });
                        return;
                    }
                    return;
                }
                com.bytedance.adsdk.ugeno.cFZ.so.oJ(new Runnable() { // from class: com.bytedance.adsdk.ugeno.ZYk.tB.4.2
                    @Override // java.lang.Runnable
                    public void run() {
                        tB.this.oJ(new BitmapDrawable(bitmap));
                    }
                });
            }
        });
    }

    public float Id() {
        return this.zGT;
    }

    public oJ Jc() {
        return this.f11628ba;
    }

    public ViewGroup.LayoutParams Ln() {
        return this.TA;
    }

    public cFZ.oJ LpP() {
        return this.f11637so;
    }

    public tB<T> Pfn(String str) {
        return ZYk(str);
    }

    public void PiB() {
        this.Dc = this.ex.optBoolean("gesture_through_enable", false);
        Log.d("GesThrough_UGenWidget", "mGestureThroughEnabled: " + this.Dc);
    }

    public float QSm() {
        return this.BHY;
    }

    public boolean Qu() {
        if (this.oIC > 0.0f) {
            return true;
        }
        return false;
    }

    public float RZ() {
        return this.YQ;
    }

    public float Ry() {
        return this.oCU;
    }

    public String UN() {
        return this.dLZ;
    }

    protected void WcQ() {
        float f10;
        float f11;
        float f12;
        float f13;
        if (this.Jc) {
            f10 = this.HL;
        } else {
            f10 = this.f11638tb;
        }
        if (this.UN) {
            f11 = this.IUZ;
        } else {
            f11 = this.f11638tb;
        }
        if (this.f11631mu) {
            f12 = this.Ln;
        } else {
            f12 = this.f11638tb;
        }
        if (this.XAo) {
            f13 = this.LpP;
        } else {
            f13 = this.f11638tb;
        }
        this.Pfn.setPadding((int) f10, (int) f12, (int) f11, (int) f13);
    }

    public int XAo() {
        return (int) this.PiB;
    }

    public long Xe() {
        return this.rJ;
    }

    public float Yg() {
        T t10 = this.Pfn;
        if (t10 instanceof com.bytedance.adsdk.ugeno.oJ.cFZ) {
            return ((com.bytedance.adsdk.ugeno.oJ.cFZ) t10).getStretch();
        }
        return 0.0f;
    }

    public void ZYk(JSONObject jSONObject) {
        this.ex = jSONObject;
        PiB();
    }

    public float awB() {
        return this.uvK;
    }

    public tB<T> ba(String str) {
        return tB(str);
    }

    public float bgF() {
        T t10 = this.Pfn;
        if (t10 instanceof com.bytedance.adsdk.ugeno.oJ.cFZ) {
            return ((com.bytedance.adsdk.ugeno.oJ.cFZ) t10).getShine();
        }
        return 0.0f;
    }

    @Override // com.bytedance.adsdk.ugeno.ex
    public void cFZ() {
        com.bytedance.adsdk.ugeno.core.oJ oJVar = this.ZMY;
        if (oJVar != null) {
            kkU kku = new kkU(this.Pfn, oJVar);
            this.f11639uq = kku;
            kku.oJ();
        }
        com.bytedance.adsdk.ugeno.oJ.oJ oJVar2 = this.UK;
        if (oJVar2 != null) {
            oJVar2.oJ();
        }
        com.bytedance.adsdk.ugeno.oJ.ba baVar = this.VSB;
        if (baVar != null) {
            baVar.ZYk();
        }
        jFA jfa = this.XQY;
        if (jfa != null) {
            jfa.Pfn();
        }
        if (this.Zjw != null && ZYk(10)) {
            this.Zjw.oJ();
        }
        if (this.NX != null && ZYk(9)) {
            this.NX.oJ();
        }
        Pfn pfn = this.Oof;
        if (pfn != null) {
            pfn.oJ();
        }
        this.rJ = System.currentTimeMillis();
    }

    public float cY() {
        return this.Qu;
    }

    public com.bytedance.adsdk.ugeno.ex.oJ.oJ cdg() {
        return this.f11634pe;
    }

    public T dLZ() {
        return this.Pfn;
    }

    public float eZI() {
        return this.UF;
    }

    public awB jr() {
        return this.SCr;
    }

    public float lY() {
        T t10 = this.Pfn;
        if (t10 instanceof com.bytedance.adsdk.ugeno.oJ.cFZ) {
            return ((com.bytedance.adsdk.ugeno.oJ.cFZ) t10).getRubIn();
        }
        return 0.0f;
    }

    public String mu() {
        return this.BTZ;
    }

    public boolean mwH() {
        return this.Zzm;
    }

    public float nQI() {
        T t10 = this.Pfn;
        if (t10 instanceof com.bytedance.adsdk.ugeno.oJ.cFZ) {
            return ((com.bytedance.adsdk.ugeno.oJ.cFZ) t10).getRipple();
        }
        return 0.0f;
    }

    public boolean nke() {
        return this.kkU;
    }

    public T oJ() {
        return null;
    }

    public boolean oTd() {
        return this.Dc;
    }

    public int ofl() {
        return (int) this.WcQ;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        Pfn pfn;
        awB awb;
        com.bytedance.adsdk.ugeno.core.ZYk.tB tBVar;
        Log.d("GesThrough_UGenWidget", "UGenWidget onTouch event: " + motionEvent.toString());
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 3) {
                Jm();
            }
        } else {
            Rl();
        }
        eZI ezi = this.Wek;
        if (ezi != null) {
            ezi.oJ(this, motionEvent);
        }
        if (ZYk(17) && motionEvent.getAction() == 0) {
            this.SCr.oJ(this.eXp.get(17), this, this);
        }
        if (ZYk(1) && this.LE && (awb = this.SCr) != null && (tBVar = this.XSu) != null) {
            return tBVar.oJ(awb, this, motionEvent);
        }
        awB awb2 = this.SCr;
        if (awb2 != null && (pfn = this.Oof) != null) {
            return pfn.oJ(awb2, this, motionEvent, oTd());
        }
        jFA jfa = this.XQY;
        if (jfa != null) {
            return jfa.oJ(motionEvent);
        }
        return false;
    }

    public float oq() {
        return this.SWT;
    }

    public float si() {
        return this.bD;
    }

    @Override // com.bytedance.adsdk.ugeno.ex
    public void so() {
        kkU kku = this.f11639uq;
        if (kku != null) {
            kku.ZYk();
        }
        com.bytedance.adsdk.ugeno.oJ.oJ oJVar = this.UK;
        if (oJVar != null) {
            oJVar.tB();
        }
        com.bytedance.adsdk.ugeno.oJ.ba baVar = this.VSB;
        if (baVar != null) {
            baVar.tB();
        }
    }

    public JSONObject tb() {
        return this.tB;
    }

    public boolean wd() {
        return this.MoK;
    }

    public tB(Context context, oJ<ViewGroup> oJVar) {
        this.PiB = -2.0f;
        this.WcQ = -2.0f;
        this.sH = "solid";
        this.Dex = 0;
        this.MoK = true;
        this.jXJ = 0.0f;
        this.uvK = 0.0f;
        this.UF = 0.0f;
        this.VJm = 1.0f;
        this.bD = 1.0f;
        this.oCU = 1.0f;
        this.EP = 0.0f;
        this.YQ = 0.0f;
        this.BHY = 0.0f;
        this.SWT = 0.0f;
        this.zGT = 1.0f;
        this.sQ = true;
        this.eW = true;
        this.Wd = false;
        this.TNk = false;
        this.Dc = false;
        this.PQw = 12.0f;
        this.ZYk = context;
        this.f11628ba = oJVar;
        this.eXp = new HashMap();
        this.f11632oo = new GradientDrawable();
        this.Pfn = oJ();
    }

    private boolean BTZ(String str) {
        return TextUtils.isEmpty(str) || !TextUtils.equals(str, "hidden");
    }

    private ImageView.ScaleType dLZ(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 0;
                    break;
                }
                break;
            case 101393:
                if (str.equals("fit")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3062416:
                if (str.equals("crop")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.HyG = ImageView.ScaleType.CENTER;
                break;
            case 1:
                this.HyG = ImageView.ScaleType.FIT_CENTER;
                break;
            case 2:
                this.HyG = ImageView.ScaleType.CENTER_CROP;
                break;
            default:
                this.HyG = ImageView.ScaleType.FIT_XY;
                break;
        }
        return this.HyG;
    }

    private void tB() {
        if (this.oJ) {
            this.Pfn.setTranslationX(this.uvK);
        }
        if (this.YF) {
            this.Pfn.setTranslationY(this.UF);
        }
        if (this.BWx) {
            this.Pfn.setScaleX(this.bD);
        }
        if (this.JJ) {
            this.Pfn.setScaleY(this.oCU);
        }
        if (this.hwh) {
            this.Pfn.setRotation(this.EP);
        }
        if (this.f11629ib) {
            this.Pfn.setRotationX(this.YQ);
        }
        if (this.Qzd) {
            this.Pfn.setRotationY(-this.BHY);
        }
        if (this.MVA) {
            this.Pfn.setAlpha(this.zGT);
        }
        float f10 = this.SWT;
        if (f10 != 0.0f) {
            this.Pfn.setRotation(f10);
        }
        if (this.hwh || this.f11629ib || this.Qzd) {
            this.Pfn.setCameraDistance(10000.0f);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ex
    public void Pfn() {
        if (this.UUI == null || this.Amz) {
            return;
        }
        this.Amz = true;
    }

    @Override // com.bytedance.adsdk.ugeno.ex
    public void ba() {
        if (this.UUI == null || this.SB) {
            return;
        }
        this.SB = true;
    }

    public void oJ(JSONObject jSONObject) {
        this.ex = jSONObject;
        PiB();
        JSONObject jSONObject2 = this.tB;
        if (jSONObject2 == null) {
            return;
        }
        Iterator<String> keys = jSONObject2.keys();
        oJ.C0141oJ kkU = this.f11628ba != null ? this.f11628ba.kkU() : null;
        while (keys.hasNext()) {
            String next = keys.next();
            String oJ = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(this.tB.optString(next), jSONObject);
            oJ(next, oJ);
            if (kkU != null) {
                kkU.oJ(this.ZYk, next, oJ);
            }
        }
        if (kkU != null) {
            oJ(kkU.oJ());
        }
        if (this.dZS == null || this.ex == null) {
            return;
        }
        try {
            if (nke()) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("i18n", this.dZS);
                this.ex.put("xNode", jSONObject3);
                return;
            }
            this.ex.put("i18n", this.dZS);
        } catch (JSONException unused) {
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void ZYk() {
        HL();
        WcQ();
        tB(this.Dex);
        tB();
        ex();
        jFA jfa = this.XQY;
        if (jfa != null) {
            jfa.oJ();
            this.XQY.ZYk();
            this.XQY.tB();
        }
        this.Pfn.setOnTouchListener(this);
        kkU();
        ViewGroup viewGroup = (ViewGroup) this.Pfn.getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(!this.sQ);
        }
        com.bytedance.adsdk.ugeno.oJ.oJ oJVar = this.UK;
        if (oJVar != null) {
            oJVar.ex();
        }
        com.bytedance.adsdk.ugeno.oJ.ba baVar = this.VSB;
        if (baVar != null) {
            baVar.oJ();
        }
        jFA jfa2 = this.XQY;
        if (jfa2 != null) {
            jfa2.ex();
        }
        if (this.SCr == null || !ZYk(22)) {
            return;
        }
        this.SCr.oJ(this.eXp.get(22), this, this);
    }

    public com.bytedance.adsdk.ugeno.oJ.oJ kkU(String str) {
        com.bytedance.adsdk.ugeno.oJ.oJ oJVar = this.UK;
        if (oJVar != null && TextUtils.equals(str, oJVar.Pfn())) {
            return this.UK;
        }
        com.bytedance.adsdk.ugeno.oJ.ba baVar = this.VSB;
        if (baVar != null) {
            return baVar.oJ(str);
        }
        return null;
    }

    public void Pfn(int i10) {
        if (nke()) {
            T t10 = this.Pfn;
            if (t10 instanceof ZYk) {
                ((ZYk) t10).oJ(i10);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) t10.getParent();
            if (viewGroup instanceof ZYk) {
                ((ZYk) viewGroup).oJ(this.Pfn, i10);
                return;
            }
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.Pfn.getLayoutParams();
        layoutParams.width = i10;
        this.Pfn.setLayoutParams(layoutParams);
    }

    public void ba(int i10) {
        if (nke()) {
            T t10 = this.Pfn;
            if (t10 instanceof ZYk) {
                ((ZYk) t10).ZYk(i10);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) t10.getParent();
            if (viewGroup instanceof ZYk) {
                ((ZYk) viewGroup).ZYk(this.Pfn, i10);
                return;
            }
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.Pfn.getLayoutParams();
        layoutParams.height = i10;
        this.Pfn.setLayoutParams(layoutParams);
    }

    public void so(String str) {
        this.BTZ = str;
    }

    public List<com.bytedance.adsdk.ugeno.ex.ex.tB> jFA(String str) {
        jFA jfa;
        if (TextUtils.isEmpty(str) || (jfa = this.XQY) == null) {
            return null;
        }
        return jfa.oJ(str);
    }

    public void cFZ(String str) {
        this.dLZ = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Jm() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Rl() {
    }

    public void oJ(Ry ry) {
        this.UUI = ry;
    }

    public void oJ(eZI ezi) {
        this.Wek = ezi;
    }

    public void oJ(awB awb) {
        this.SCr = awb;
    }

    public void tB(int i10) {
        ViewGroup viewGroup = (ViewGroup) this.Pfn.getParent();
        if (viewGroup instanceof ZYk) {
            ((ZYk) viewGroup).tB(this.Pfn, i10);
        } else {
            this.Pfn.setVisibility(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(oJ.C0143oJ c0143oJ) {
        if (c0143oJ == null) {
            return;
        }
        this.f11632oo.setShape(0);
        this.f11632oo.setOrientation(c0143oJ.oJ);
        if (Build.VERSION.SDK_INT >= 29) {
            this.f11632oo.setColors(c0143oJ.ZYk, c0143oJ.tB);
        } else {
            this.f11632oo.setColors(c0143oJ.ZYk);
        }
        NO();
        LS();
        this.Pfn.setBackground(this.f11632oo);
    }

    public boolean ZYk(int i10) {
        Map<Integer, PiB> map = this.eXp;
        return map != null && map.containsKey(Integer.valueOf(i10));
    }

    protected tB<T> ZYk(String str) {
        if (TextUtils.isEmpty(this.BTZ) || !TextUtils.equals(this.BTZ, str)) {
            return null;
        }
        return this;
    }

    public void tB(JSONObject jSONObject) {
        this.tB = jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ZYk(String str, String str2) {
        if (TextUtils.isEmpty(str2) || this.eXp == null) {
            return;
        }
        try {
            int oJ = WcQ.oJ(str).oJ();
            PiB piB = new PiB();
            piB.oJ(oJ);
            piB.oJ(this);
            JSONObject jSONObject = new JSONObject(str2);
            if (oJ == 3) {
                try {
                    this.PQw = Float.parseFloat(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jSONObject.optString("shakeAmplitude"), this.ex));
                } catch (NumberFormatException unused) {
                    this.PQw = 12.0f;
                }
            }
            if (!(this.SCr instanceof com.bytedance.adsdk.ugeno.core.oJ.ZYk)) {
                oJ(oJ, jSONObject, piB);
                return;
            }
            throw null;
        } catch (JSONException unused2) {
        }
    }

    protected tB<T> tB(String str) {
        if (kkU(str) != null) {
            return this;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ex(int i10) {
        this.f11632oo.setShape(0);
        this.f11632oo.setColor(i10);
        NO();
        LS();
        this.Pfn.setBackground(this.f11632oo);
    }

    protected void oJ(Drawable drawable) {
        this.Pfn.setBackground(drawable);
    }

    public void oJ(ViewGroup.LayoutParams layoutParams) {
        T t10 = this.Pfn;
        if (t10 != null) {
            t10.setLayoutParams(layoutParams);
        }
        this.TA = layoutParams;
    }

    public tB<T> ex(String str) {
        return oJ(str);
    }

    public void oJ(boolean z10, boolean z11) {
        if (this.Pfn != null) {
            oJ(this.TA);
            if (z10) {
                Pfn((int) this.PiB);
            }
            if (z11) {
                ba((int) this.WcQ);
            }
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ex
    public void ZYk(Canvas canvas) {
        if (this instanceof oJ) {
            com.bytedance.adsdk.ugeno.oJ.oJ oJVar = this.UK;
            if (oJVar != null) {
                oJVar.ZYk(canvas);
            }
            com.bytedance.adsdk.ugeno.oJ.ba baVar = this.VSB;
            if (baVar != null) {
                baVar.ZYk(canvas);
            }
        }
    }

    public void oJ(cFZ.oJ oJVar) {
        this.f11637so = oJVar;
    }

    protected tB<T> oJ(String str) {
        if (TextUtils.isEmpty(this.dLZ) || !TextUtils.equals(this.dLZ, str)) {
            return null;
        }
        return this;
    }

    public void oJ(boolean z10) {
        this.kkU = z10;
    }

    public void oJ(oJ oJVar) {
        this.f11628ba = oJVar;
    }

    public void oJ(dLZ dlz) {
        this.jFA = dlz;
    }

    @Override // com.bytedance.adsdk.ugeno.ex
    public void ZYk(int i10, int i11, int i12, int i13) {
        kkU kku = this.f11639uq;
        if (kku != null) {
            kku.oJ(i10, i11);
        }
        com.bytedance.adsdk.ugeno.oJ.oJ oJVar = this.UK;
        if (oJVar != null) {
            oJVar.oJ(i10, i11);
        }
        com.bytedance.adsdk.ugeno.oJ.ba baVar = this.VSB;
        if (baVar != null) {
            baVar.oJ(i10, i11);
        }
    }

    public void oJ(so soVar) {
        this.Uf = soVar;
    }

    public void oJ(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1964681502:
                if (str.equals("clickable")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1901681170:
                if (str.equals("onRenderSuccess")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1721943862:
                if (str.equals("translateX")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1721943861:
                if (str.equals("translateY")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1501175880:
                if (str.equals("paddingLeft")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1375815020:
                if (str.equals("minWidth")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1351184668:
                if (str.equals("onDelay")) {
                    c10 = 6;
                    break;
                }
                break;
            case -1337252761:
                if (str.equals("onShake")) {
                    c10 = 7;
                    break;
                }
                break;
            case -1337126126:
                if (str.equals("onSlide")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -1336288090:
                if (str.equals("onTimer")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -1335874424:
                if (str.equals("onTwist")) {
                    c10 = '\n';
                    break;
                }
                break;
            case -1332194002:
                if (str.equals("background")) {
                    c10 = 11;
                    break;
                }
                break;
            case -1291329255:
                if (str.equals("events")) {
                    c10 = '\f';
                    break;
                }
                break;
            case -1267206133:
                if (str.equals("opacity")) {
                    c10 = '\r';
                    break;
                }
                break;
            case -1228066334:
                if (str.equals("borderTopLeftRadius")) {
                    c10 = 14;
                    break;
                }
                break;
            case -1221029593:
                if (str.equals("height")) {
                    c10 = 15;
                    break;
                }
                break;
            case -1081309778:
                if (str.equals("margin")) {
                    c10 = 16;
                    break;
                }
                break;
            case -1044792121:
                if (str.equals("marginTop")) {
                    c10 = 17;
                    break;
                }
                break;
            case -1013407967:
                if (str.equals("onDown")) {
                    c10 = 18;
                    break;
                }
                break;
            case -933876756:
                if (str.equals("backgroundDrawable")) {
                    c10 = 19;
                    break;
                }
                break;
            case -925180581:
                if (str.equals("rotate")) {
                    c10 = 20;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c10 = 21;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c10 = 22;
                    break;
                }
                break;
            case -806339567:
                if (str.equals("padding")) {
                    c10 = 23;
                    break;
                }
                break;
            case -681357156:
                if (str.equals("triggerFunc")) {
                    c10 = 24;
                    break;
                }
                break;
            case -289173127:
                if (str.equals("marginBottom")) {
                    c10 = 25;
                    break;
                }
                break;
            case -133587431:
                if (str.equals("minHeight")) {
                    c10 = 26;
                    break;
                }
                break;
            case 3355:
                if (str.equals("id")) {
                    c10 = 27;
                    break;
                }
                break;
            case 3176990:
                if (str.equals("i18n")) {
                    c10 = 28;
                    break;
                }
                break;
            case 3373707:
                if (str.equals("name")) {
                    c10 = 29;
                    break;
                }
                break;
            case 87811796:
                if (str.equals("backgroundImageBlur")) {
                    c10 = 30;
                    break;
                }
                break;
            case 90130308:
                if (str.equals("paddingTop")) {
                    c10 = 31;
                    break;
                }
                break;
            case 94750088:
                if (str.equals("click")) {
                    c10 = ' ';
                    break;
                }
                break;
            case 105871684:
                if (str.equals("onTap")) {
                    c10 = '!';
                    break;
                }
                break;
            case 108285963:
                if (str.equals("ratio")) {
                    c10 = '\"';
                    break;
                }
                break;
            case 109250890:
                if (str.equals(TextureRenderKeys.KEY_IS_SCALE)) {
                    c10 = '#';
                    break;
                }
                break;
            case 113126854:
                if (str.equals("width")) {
                    c10 = '$';
                    break;
                }
                break;
            case 202355100:
                if (str.equals("paddingBottom")) {
                    c10 = '%';
                    break;
                }
                break;
            case 314070383:
                if (str.equals("animations")) {
                    c10 = '&';
                    break;
                }
                break;
            case 320386138:
                if (str.equals("onLoadMore")) {
                    c10 = '\'';
                    break;
                }
                break;
            case 333432965:
                if (str.equals("borderTopRightRadius")) {
                    c10 = '(';
                    break;
                }
                break;
            case 529642498:
                if (str.equals("overflow")) {
                    c10 = ')';
                    break;
                }
                break;
            case 581268560:
                if (str.equals("borderBottomLeftRadius")) {
                    c10 = '*';
                    break;
                }
                break;
            case 588239831:
                if (str.equals("borderBottomRightRadius")) {
                    c10 = '+';
                    break;
                }
                break;
            case 713848971:
                if (str.equals("paddingRight")) {
                    c10 = ',';
                    break;
                }
                break;
            case 722830999:
                if (str.equals("borderColor")) {
                    c10 = '-';
                    break;
                }
                break;
            case 737768677:
                if (str.equals("borderStyle")) {
                    c10 = '.';
                    break;
                }
                break;
            case 741115130:
                if (str.equals("borderWidth")) {
                    c10 = '/';
                    break;
                }
                break;
            case 843948038:
                if (str.equals("onExposure")) {
                    c10 = '0';
                    break;
                }
                break;
            case 975087886:
                if (str.equals("marginRight")) {
                    c10 = '1';
                    break;
                }
                break;
            case 1052832078:
                if (str.equals("translate")) {
                    c10 = '2';
                    break;
                }
                break;
            case 1087723621:
                if (str.equals("onAnimation")) {
                    c10 = '3';
                    break;
                }
                break;
            case 1118509956:
                if (str.equals("animation")) {
                    c10 = '4';
                    break;
                }
                break;
            case 1151851515:
                if (str.equals("animatorSet")) {
                    c10 = '5';
                    break;
                }
                break;
            case 1158381436:
                if (str.equals("onPullToRefresh")) {
                    c10 = '6';
                    break;
                }
                break;
            case 1287124693:
                if (str.equals(TtmlNode.ATTR_TTS_BACKGROUND_COLOR)) {
                    c10 = '7';
                    break;
                }
                break;
            case 1292595405:
                if (str.equals("backgroundImage")) {
                    c10 = '8';
                    break;
                }
                break;
            case 1301532860:
                if (str.equals("backgroundScale")) {
                    c10 = '9';
                    break;
                }
                break;
            case 1349188574:
                if (str.equals("borderRadius")) {
                    c10 = ':';
                    break;
                }
                break;
            case 1384173149:
                if (str.equals("rotateX")) {
                    c10 = ';';
                    break;
                }
                break;
            case 1384173150:
                if (str.equals("rotateY")) {
                    c10 = '<';
                    break;
                }
                break;
            case 1384173151:
                if (str.equals("rotateZ")) {
                    c10 = '=';
                    break;
                }
                break;
            case 1490730380:
                if (str.equals("onScroll")) {
                    c10 = '>';
                    break;
                }
                break;
            case 1671308008:
                if (str.equals("disable")) {
                    c10 = '?';
                    break;
                }
                break;
            case 1685004456:
                if (str.equals("onLongTap")) {
                    c10 = '@';
                    break;
                }
                break;
            case 1941332754:
                if (str.equals("visibility")) {
                    c10 = 'A';
                    break;
                }
                break;
            case 1970934485:
                if (str.equals("marginLeft")) {
                    c10 = 'B';
                    break;
                }
                break;
            case 1997542747:
                if (str.equals("availability")) {
                    c10 = 'C';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.eW = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, true);
                return;
            case 1:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 18:
            case '!':
            case '\'':
            case '0':
            case '3':
            case '6':
            case '>':
            case '@':
                ZYk(str, str2);
                return;
            case 2:
                this.oJ = true;
                this.uvK = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f));
                return;
            case 3:
                this.YF = true;
                this.UF = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f));
                return;
            case 4:
                this.HL = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.Jc = true;
                return;
            case 5:
                this.QSm = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case 11:
            case '7':
                if (com.bytedance.adsdk.ugeno.cFZ.oJ.tB(str2)) {
                    this.oG = true;
                    this.PdF = com.bytedance.adsdk.ugeno.cFZ.oJ.ZYk(str2);
                    return;
                }
                this.ofl = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2, 0);
                this.oG = false;
                return;
            case '\f':
                this.XQY = jFA.oJ(this, str2);
                return;
            case '\r':
                this.MVA = true;
                this.zGT = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 1.0f);
                return;
            case 14:
                this.nQI = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.mwH = true;
                return;
            case 15:
                if (TextUtils.equals(str2, "match_parent")) {
                    this.WcQ = -1.0f;
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.WcQ = -2.0f;
                } else {
                    this.WcQ = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                }
                this.TNk = true;
                return;
            case 16:
                this.awB = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                return;
            case 17:
                this.Ry = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.f11630jr = true;
                return;
            case 19:
            case '8':
                this.f11640wd = str2;
                return;
            case 20:
                this.hwh = true;
                this.EP = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case 21:
                this.BWx = true;
                this.bD = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case 22:
                this.JJ = true;
                this.oCU = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case 23:
                this.f11638tb = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.nke = true;
                return;
            case 24:
                this.uaj = str2;
                return;
            case 25:
                this.RZ = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.Xe = true;
                return;
            case 26:
                this.f11633oq = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case 27:
                this.dLZ = str2;
                return;
            case 28:
                this.dZS = com.bytedance.adsdk.ugeno.cFZ.ZYk.oJ(str2, (JSONObject) null);
                return;
            case 29:
                this.BTZ = str2;
                return;
            case 30:
                float oJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                this.cdg = oJ;
                if (oJ > 0.0f) {
                    this.Rl = true;
                    return;
                }
                return;
            case 31:
                this.Ln = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.f11631mu = true;
                return;
            case ' ':
                this.f11635rg = str2;
                return;
            case '\"':
                this.oIC = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case '#':
                this.BWx = true;
                this.JJ = true;
                float[] tB = com.bytedance.adsdk.ugeno.oJ.ex.tB(str2);
                this.bD = tB[0];
                this.oCU = tB[1];
                return;
            case '$':
                if (TextUtils.equals(str2, "match_parent")) {
                    this.PiB = -1.0f;
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.PiB = -2.0f;
                } else {
                    this.PiB = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                }
                this.Wd = true;
                return;
            case '%':
                this.LpP = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.XAo = true;
                return;
            case '&':
                List<com.bytedance.adsdk.ugeno.oJ.tB> oJ2 = com.bytedance.adsdk.ugeno.oJ.ex.oJ(str2, this.ex);
                if (oJ2 == null || oJ2.isEmpty()) {
                    return;
                }
                this.VSB = new com.bytedance.adsdk.ugeno.oJ.ba(this.ZYk, this, oJ2);
                return;
            case '(':
                this.Yg = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.oTd = true;
                return;
            case ')':
                this.sQ = BTZ(str2);
                return;
            case '*':
                this.bgF = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.LS = true;
                return;
            case '+':
                this.lY = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.NO = true;
                return;
            case ',':
                this.IUZ = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.UN = true;
                return;
            case '-':
                this.yz = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2);
                return;
            case '.':
                this.sH = str2;
                return;
            case '/':
                this.jB = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                return;
            case '1':
                this.f11636si = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.cY = true;
                return;
            case '2':
                this.oJ = true;
                this.YF = true;
                float[] tB2 = com.bytedance.adsdk.ugeno.oJ.ex.tB(str2);
                this.uvK = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, tB2[0]);
                this.UF = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, tB2[1]);
                return;
            case '4':
                try {
                    this.UK = new com.bytedance.adsdk.ugeno.oJ.oJ(this.ZYk, this, com.bytedance.adsdk.ugeno.oJ.ex.oJ(new JSONObject(str2), this.ex));
                    return;
                } catch (JSONException unused) {
                    return;
                }
            case '5':
                this.ZMY = com.bytedance.adsdk.ugeno.core.oJ.oJ(str2, this);
                return;
            case '9':
                this.Jm = true;
                this.HyG = dLZ(str2);
                return;
            case ':':
                this.Qu = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                return;
            case ';':
                this.f11629ib = true;
                this.YQ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case '<':
                this.Qzd = true;
                this.BHY = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case '=':
                this.SWT = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case '?':
                this.Zzm = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, false);
                return;
            case 'A':
                if (TextUtils.equals("visible", str2)) {
                    this.Dex = 0;
                } else if (TextUtils.equals("invisible", str2)) {
                    this.Dex = 4;
                } else if (TextUtils.equals("gone", str2) || TextUtils.equals("hidden", str2)) {
                    this.Dex = 8;
                }
                this.Pfn.setVisibility(this.Dex);
                return;
            case 'B':
                this.eZI = com.bytedance.adsdk.ugeno.cFZ.so.oJ(this.ZYk, str2);
                this.Id = true;
                return;
            case 'C':
                this.MoK = !TextUtils.equals(str2, "unavailable");
                return;
            default:
                return;
        }
    }

    public tB ZYk(tB tBVar) {
        return (tBVar.Jc() == null && (tBVar instanceof oJ)) ? tBVar : ZYk(tBVar.Jc());
    }

    @Deprecated
    protected void oJ(int i10, JSONObject jSONObject, PiB piB) {
        JSONObject optJSONObject = jSONObject.optJSONObject("success");
        if (optJSONObject != null) {
            PiB piB2 = new PiB();
            piB2.oJ(optJSONObject);
            piB2.oJ(this);
            piB.oJ(piB2);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("fail");
        if (optJSONObject2 != null) {
            PiB piB3 = new PiB();
            piB3.oJ(optJSONObject2);
            piB3.oJ(this);
            piB.ZYk(piB3);
        }
        piB.oJ(jSONObject);
        this.eXp.put(Integer.valueOf(i10), piB);
    }

    @Override // com.bytedance.adsdk.ugeno.ex
    public int[] oJ(int i10, int i11) {
        if (this.oIC > 0.0f) {
            if (this.Wd) {
                int size = View.MeasureSpec.getSize(i10);
                float f10 = this.oIC;
                if (f10 != 0.0f) {
                    i11 = View.MeasureSpec.makeMeasureSpec((int) (size / f10), 1073741824);
                }
            } else if (this.TNk) {
                int size2 = View.MeasureSpec.getSize(i11);
                float f11 = this.oIC;
                if (f11 != 0.0f) {
                    i10 = View.MeasureSpec.makeMeasureSpec((int) (size2 * f11), 1073741824);
                }
            }
        }
        if (this.UUI != null && !this.ypD) {
            this.ypD = true;
        }
        return new int[]{i10, i11};
    }

    @Override // com.bytedance.adsdk.ugeno.ex
    public void oJ(int i10, int i11, int i12, int i13) {
        if (this.UUI == null || this.edj) {
            return;
        }
        this.edj = true;
    }

    @Override // com.bytedance.adsdk.ugeno.ex
    public void oJ(Canvas canvas, IAnimation iAnimation) {
        kkU kku = this.f11639uq;
        if (kku != null) {
            kku.oJ(canvas, iAnimation);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ex
    public void oJ(Canvas canvas) {
        if (this instanceof oJ) {
            return;
        }
        com.bytedance.adsdk.ugeno.oJ.oJ oJVar = this.UK;
        if (oJVar != null) {
            oJVar.oJ(canvas);
        }
        com.bytedance.adsdk.ugeno.oJ.ba baVar = this.VSB;
        if (baVar != null) {
            baVar.oJ(canvas);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.awB.ZYk
    public void oJ(PiB piB) {
        oJ<ViewGroup> oJVar;
        tB<T> ex;
        if (piB == null || piB.tB() == null || !TextUtils.equals(piB.tB().optString("type"), "onDismiss")) {
            return;
        }
        String optString = piB.tB().optString("nodeId");
        tB(8);
        this.cFZ = (oJ) ZYk(this);
        if (TextUtils.isEmpty(optString) || (oJVar = this.cFZ) == null || (ex = oJVar.ex(optString)) == null) {
            return;
        }
        ex.tB(8);
    }

    public void oJ(com.bytedance.adsdk.ugeno.ex.oJ.oJ oJVar) {
        this.f11634pe = oJVar;
    }

    public void oJ(String str, Object... objArr) {
        List<com.bytedance.adsdk.ugeno.ex.ex.tB> jFA = jFA(str);
        if (jFA == null || jFA.isEmpty()) {
            return;
        }
        for (com.bytedance.adsdk.ugeno.ex.ex.tB tBVar : jFA) {
            tBVar.oJ(this.XQY);
            tBVar.oJ(objArr);
        }
    }

    public void oJ(com.bytedance.adsdk.ugeno.core.Pfn pfn) {
        jFA jfa = this.XQY;
        if (jfa != null) {
            jfa.oJ(pfn);
        }
    }

    public void oJ(com.bytedance.adsdk.ugeno.core.ba baVar) {
        this.yQF = baVar;
    }
}
