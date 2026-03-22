package com.bytedance.adsdk.ugeno.core;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.bytedance.adsdk.ugeno.ZYk.oJ;
import com.bytedance.adsdk.ugeno.core.cFZ;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BTZ {
    private awB Pfn;
    private com.bytedance.adsdk.ugeno.ex.oJ.oJ PiB;
    private jFA RZ;
    private float Ry;
    private boolean WcQ;
    private JSONObject ZYk;
    private List<String> awB;

    /* renamed from: ba  reason: collision with root package name */
    private Ry f11649ba;
    private eZI cFZ;
    private Pfn eZI;
    private so ex;
    private String jFA;
    private dLZ kkU;
    private Context oJ;

    /* renamed from: si  reason: collision with root package name */
    private float f11650si;

    /* renamed from: so  reason: collision with root package name */
    private cFZ f11651so;
    private com.bytedance.adsdk.ugeno.ZYk.tB<View> tB;
    private boolean dLZ = true;
    private boolean BTZ = false;

    public BTZ(Context context) {
        this.oJ = context;
    }

    public com.bytedance.adsdk.ugeno.ZYk.tB<View> ZYk(cFZ.oJ oJVar, com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar) {
        List<cFZ.oJ> tB;
        oJ.C0141oJ c0141oJ = null;
        if (cFZ.ex(oJVar)) {
            String tB2 = oJVar.tB();
            ZYk oJ = ex.oJ(tB2);
            if (oJ == null) {
                Log.d("UGTemplateEngine", "not found component ".concat(String.valueOf(tB2)));
                this.WcQ = true;
                if (this.awB == null) {
                    this.awB = new ArrayList();
                }
                this.awB.add(tB2);
                return null;
            }
            com.bytedance.adsdk.ugeno.ZYk.tB oJ2 = oJ.oJ(this.oJ);
            if (oJ2 == null) {
                return null;
            }
            oJ2.cFZ(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(oJVar.oJ(), this.ZYk));
            oJ2.so(tB2);
            oJ2.tB(oJVar.ex());
            oJ2.oJ(oJVar);
            oJ2.oJ(this.kkU);
            if (tBVar instanceof com.bytedance.adsdk.ugeno.ZYk.oJ) {
                com.bytedance.adsdk.ugeno.ZYk.oJ oJVar2 = (com.bytedance.adsdk.ugeno.ZYk.oJ) tBVar;
                oJ2.oJ(oJVar2);
                c0141oJ = oJVar2.kkU();
            }
            Iterator<String> keys = oJVar.ex().keys();
            while (keys.hasNext()) {
                String next = keys.next();
                String oJ3 = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(oJVar.ex().optString(next), this.ZYk);
                oJ2.oJ(next, oJ3);
                if (c0141oJ != null) {
                    c0141oJ.oJ(this.oJ, next, oJ3);
                }
            }
            if (oJ2 instanceof com.bytedance.adsdk.ugeno.ZYk.oJ) {
                List<cFZ.oJ> Pfn = oJVar.Pfn();
                if (Pfn != null && Pfn.size() > 0) {
                    if (TextUtils.equals(oJ2.mu(), "Swiper") && Pfn.size() != 1) {
                        Log.e("UGTemplateEngine", "Swiper must be only one widget");
                    }
                    for (cFZ.oJ oJVar3 : Pfn) {
                        com.bytedance.adsdk.ugeno.ZYk.tB<View> ZYk = ZYk(oJVar3, oJ2);
                        if (ZYk != null && ZYk.wd()) {
                            ((com.bytedance.adsdk.ugeno.ZYk.oJ) oJ2).oJ(ZYk);
                        }
                    }
                } else {
                    if (TextUtils.equals(oJ2.mu(), "RecyclerLayout") && (tB = this.f11651so.tB()) != null && tB.size() > 0) {
                        for (cFZ.oJ oJVar4 : tB) {
                            com.bytedance.adsdk.ugeno.ZYk.tB<View> ZYk2 = ZYk(oJVar4, oJ2);
                            if (ZYk2 != null && ZYk2.wd()) {
                                ((com.bytedance.adsdk.ugeno.ZYk.oJ) oJ2).oJ(ZYk2);
                            }
                        }
                    }
                    return oJ2;
                }
            }
            if (c0141oJ != null) {
                oJ2.oJ(c0141oJ.oJ());
            }
            this.tB = oJ2;
            return oJ2;
        }
        return null;
    }

    public void oJ(String str, dLZ dlz) {
        this.kkU = dlz;
        this.jFA = str;
        if (dlz != null) {
            this.ZYk = dlz.oJ();
        }
    }

    public com.bytedance.adsdk.ugeno.ZYk.tB<View> oJ(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        this.ZYk = jSONObject2;
        Ry ry = this.f11649ba;
        if (ry != null) {
            ry.oJ();
        }
        cFZ cfz = new cFZ(jSONObject, jSONObject2, jSONObject3);
        this.f11651so = cfz;
        cfz.oJ(this.f11650si, this.Ry);
        this.PiB = new com.bytedance.adsdk.ugeno.ex.oJ.oJ();
        if (!(this.Pfn instanceof com.bytedance.adsdk.ugeno.core.oJ.ZYk)) {
            this.tB = oJ(this.f11651so.oJ(), (com.bytedance.adsdk.ugeno.ZYk.tB<View>) null);
            if (this.RZ == null) {
                Ry ry2 = this.f11649ba;
                if (ry2 != null) {
                    ry2.ZYk();
                    this.tB.oJ(this.f11649ba);
                    this.f11649ba.tB();
                }
                oJ(this.tB);
                if (this.f11649ba != null) {
                    si siVar = new si();
                    siVar.oJ(0);
                    siVar.oJ(this.tB);
                    this.f11649ba.oJ(siVar);
                }
                return this.tB;
            }
            throw null;
        }
        this.f11651so.ZYk();
        throw null;
    }

    public com.bytedance.adsdk.ugeno.ZYk.tB<View> oJ(cFZ.oJ oJVar, JSONObject jSONObject, JSONObject jSONObject2) {
        this.ZYk = jSONObject;
        Ry ry = this.f11649ba;
        if (ry != null) {
            ry.oJ();
        }
        this.PiB = new com.bytedance.adsdk.ugeno.ex.oJ.oJ();
        if (!(this.Pfn instanceof com.bytedance.adsdk.ugeno.core.oJ.ZYk)) {
            this.tB = oJ(oJVar, (com.bytedance.adsdk.ugeno.ZYk.tB<View>) null);
            Ry ry2 = this.f11649ba;
            if (ry2 != null) {
                ry2.ZYk();
                this.tB.oJ(this.f11649ba);
            }
            oJ(this.tB);
            return this.tB;
        }
        throw null;
    }

    public com.bytedance.adsdk.ugeno.ZYk.tB<View> oJ(cFZ.oJ oJVar, com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar) {
        oJ.C0141oJ c0141oJ;
        List<cFZ.oJ> tB;
        if (cFZ.ex(oJVar)) {
            String tB2 = oJVar.tB();
            ZYk oJ = ex.oJ(tB2);
            ZYk zYk = oJ;
            if (oJ == null) {
                this.WcQ = true;
                if (this.awB == null) {
                    this.awB = new ArrayList();
                }
                this.awB.add(tB2);
                tB2 = "View";
                oJVar.oJ("View");
                ZYk oJ2 = ex.oJ("View");
                Log.d("UGTemplateEngine", "unknown component; use view widget");
                zYk = oJ2;
                if (oJ2 == null) {
                    Log.d("UGTemplateEngine", "not found component ".concat("View"));
                    return null;
                }
            }
            com.bytedance.adsdk.ugeno.ZYk.tB oJ3 = zYk.oJ(this.oJ);
            if (oJ3 == null) {
                return null;
            }
            JSONObject ex = oJVar.ex();
            oJ3.cFZ(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(oJVar.oJ(), this.ZYk));
            oJ3.so(tB2);
            oJ3.tB(ex);
            oJ3.oJ(oJVar);
            oJ3.ZYk(this.ZYk);
            cFZ cfz = this.f11651so;
            if (cfz == null) {
                oJ3.oJ(true);
            } else {
                oJ3.oJ(cfz.ex());
            }
            oJ3.oJ(this.kkU);
            oJ3.oJ(this.PiB);
            Iterator<String> keys = ex.keys();
            if (tBVar instanceof com.bytedance.adsdk.ugeno.ZYk.oJ) {
                com.bytedance.adsdk.ugeno.ZYk.oJ oJVar2 = (com.bytedance.adsdk.ugeno.ZYk.oJ) tBVar;
                c0141oJ = oJVar2.kkU();
                oJ3.oJ(oJVar2);
            } else {
                c0141oJ = null;
            }
            while (keys.hasNext()) {
                String next = keys.next();
                String oJ4 = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(ex.optString(next), this.ZYk);
                oJ3.oJ(next, oJ4);
                if (this.RZ != null) {
                    throw null;
                }
                if (c0141oJ != null) {
                    c0141oJ.oJ(this.oJ, next, oJ4);
                }
            }
            if (c0141oJ != null) {
                oJ3.oJ(c0141oJ.oJ());
            }
            if (oJ3 instanceof com.bytedance.adsdk.ugeno.ZYk.oJ) {
                List<cFZ.oJ> Pfn = oJVar.Pfn();
                if (Pfn != null && Pfn.size() > 0) {
                    if (TextUtils.equals(oJ3.mu(), "Swiper") && Pfn.size() != 1) {
                        Log.e("UGTemplateEngine", "Swiper must be only one widget");
                    }
                    try {
                        Collections.sort(Pfn, new Comparator<cFZ.oJ>() { // from class: com.bytedance.adsdk.ugeno.core.BTZ.1
                            @Override // java.util.Comparator
                            /* renamed from: oJ */
                            public int compare(cFZ.oJ oJVar3, cFZ.oJ oJVar4) {
                                return oJVar3.ex().optInt("order", 0) - oJVar4.ex().optInt("order", 0);
                            }
                        });
                    } catch (Throwable unused) {
                    }
                    for (cFZ.oJ oJVar3 : Pfn) {
                        com.bytedance.adsdk.ugeno.ZYk.tB<View> oJ5 = oJ(oJVar3, oJ3);
                        if (oJ5 != null && !oJ5.mwH()) {
                            ((com.bytedance.adsdk.ugeno.ZYk.oJ) oJ3).oJ(oJ5, oJ5.Ln());
                        }
                    }
                } else {
                    if (TextUtils.equals(oJ3.mu(), "RecyclerLayout") && (tB = this.f11651so.tB()) != null && tB.size() > 0) {
                        for (cFZ.oJ oJVar4 : tB) {
                            com.bytedance.adsdk.ugeno.ZYk.tB<View> oJ6 = oJ(oJVar4, oJ3);
                            if (oJ6 != null && oJ6.wd()) {
                                ((com.bytedance.adsdk.ugeno.ZYk.oJ) oJ3).oJ(oJ6);
                            }
                        }
                    }
                    return oJ3;
                }
            }
            this.tB = oJ3;
            return oJ3;
        }
        return null;
    }

    public void ZYk(JSONObject jSONObject) {
        Ry ry = this.f11649ba;
        if (ry != null) {
            ry.tB();
        }
        this.ZYk = jSONObject;
        oJ(this.tB, jSONObject);
        oJ(this.tB);
        if (this.f11649ba != null) {
            si siVar = new si();
            siVar.oJ(0);
            siVar.oJ(this.tB);
            this.f11649ba.oJ(siVar);
        }
    }

    private void ZYk(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        try {
            if (!tBVar.nke() || tBVar.LpP() == null || tBVar.LpP().ba() == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("i18n", tBVar.LpP().ba());
            this.ZYk.put("xNode", jSONObject);
        } catch (Exception unused) {
        }
    }

    public List<String> ZYk() {
        return this.awB;
    }

    public com.bytedance.adsdk.ugeno.ZYk.tB<View> oJ(JSONObject jSONObject) {
        Ry ry = this.f11649ba;
        if (ry != null) {
            ry.oJ();
        }
        cFZ cfz = new cFZ(jSONObject, this.ZYk);
        this.f11651so = cfz;
        if (!(this.Pfn instanceof com.bytedance.adsdk.ugeno.core.oJ.ZYk)) {
            this.tB = ZYk(cfz.oJ(), null);
            Ry ry2 = this.f11649ba;
            if (ry2 != null) {
                ry2.ZYk();
                this.tB.oJ(this.f11649ba);
            }
            return this.tB;
        }
        cfz.ZYk();
        throw null;
    }

    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, JSONObject jSONObject) {
        if (tBVar == null) {
            return;
        }
        if (tBVar instanceof com.bytedance.adsdk.ugeno.ZYk.oJ) {
            tBVar.oJ(jSONObject);
            List<com.bytedance.adsdk.ugeno.ZYk.tB<View>> jFA = ((com.bytedance.adsdk.ugeno.ZYk.oJ) tBVar).jFA();
            if (jFA == null || jFA.size() <= 0) {
                return;
            }
            for (com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar2 : jFA) {
                oJ(tBVar2, jSONObject);
            }
            return;
        }
        tBVar.oJ(jSONObject);
    }

    private void oJ(com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar) {
        List<com.bytedance.adsdk.ugeno.ZYk.tB<View>> jFA;
        if (tBVar == null) {
            return;
        }
        JSONObject tb2 = tBVar.tb();
        Iterator<String> keys = tb2.keys();
        com.bytedance.adsdk.ugeno.ZYk.oJ Jc = tBVar.Jc();
        oJ.C0141oJ kkU = Jc != null ? Jc.kkU() : null;
        ZYk(tBVar);
        while (keys.hasNext()) {
            String next = keys.next();
            String oJ = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(tb2.optString(next), this.ZYk);
            tBVar.oJ(next, oJ);
            if (kkU != null) {
                kkU.oJ(this.oJ, next, oJ);
            }
        }
        tBVar.oJ(this.ex);
        tBVar.oJ(this.Pfn);
        tBVar.oJ(this.cFZ);
        jFA jfa = this.RZ;
        if (jfa != null) {
            tBVar.oJ(jfa);
        }
        Pfn pfn = this.eZI;
        if (pfn != null) {
            tBVar.oJ(pfn);
        }
        if ((tBVar instanceof com.bytedance.adsdk.ugeno.ZYk.oJ) && (jFA = ((com.bytedance.adsdk.ugeno.ZYk.oJ) tBVar).jFA()) != null && jFA.size() > 0) {
            for (com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar2 : jFA) {
                oJ(tBVar2);
            }
        }
        if (kkU != null) {
            tBVar.oJ(kkU.oJ());
        }
        tBVar.ZYk();
    }

    public void oJ(awB awb) {
        com.bytedance.adsdk.ugeno.core.oJ.oJ Pfn = com.bytedance.adsdk.ugeno.Pfn.oJ().Pfn();
        if (Pfn == null) {
            this.Pfn = awb;
        } else if (Pfn.oJ(awb) == null) {
            this.Pfn = awb;
        } else {
            throw null;
        }
    }

    public void oJ(eZI ezi) {
        this.cFZ = ezi;
    }

    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, Object... objArr) {
        List<com.bytedance.adsdk.ugeno.ZYk.tB<View>> jFA;
        if (tBVar == null) {
            return;
        }
        tBVar.oJ(str, objArr);
        if (!(tBVar instanceof com.bytedance.adsdk.ugeno.ZYk.oJ) || (jFA = ((com.bytedance.adsdk.ugeno.ZYk.oJ) tBVar).jFA()) == null || jFA.isEmpty()) {
            return;
        }
        for (com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar2 : jFA) {
            oJ(tBVar2, str, objArr);
        }
    }

    public boolean oJ() {
        return this.WcQ;
    }

    public void oJ(Pfn pfn) {
        this.eZI = pfn;
    }
}
