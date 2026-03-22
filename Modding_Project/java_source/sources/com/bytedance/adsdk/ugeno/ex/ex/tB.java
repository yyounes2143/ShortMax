package com.bytedance.adsdk.ugeno.ex.ex;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.ex.ba;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class tB {
    protected Map<String, String> Pfn;
    protected com.bytedance.adsdk.ugeno.ZYk.tB ZYk;

    /* renamed from: ba  reason: collision with root package name */
    protected String f11673ba;
    protected String cFZ;
    protected ba.oJ ex;
    protected String jFA;
    protected Context kkU;
    protected com.bytedance.adsdk.ugeno.ex.dLZ oJ;

    /* renamed from: so  reason: collision with root package name */
    protected String f11674so;
    protected com.bytedance.adsdk.ugeno.ex.ba tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        public static tB oJ(Context context, com.bytedance.adsdk.ugeno.ZYk.tB tBVar, JSONObject jSONObject, JSONObject jSONObject2) {
            com.bytedance.adsdk.ugeno.ex.ba oJ;
            ba.oJ oJ2;
            com.bytedance.adsdk.ugeno.ex.cFZ oJ3;
            if (tBVar == null || jSONObject == null || (oJ = com.bytedance.adsdk.ugeno.ex.ba.oJ(jSONObject, jSONObject2)) == null || (oJ2 = oJ.oJ()) == null) {
                return null;
            }
            String oJ4 = oJ2.oJ();
            if (TextUtils.equals(oJ4, "custom")) {
                ex exVar = new ex(context);
                exVar.oJ(tBVar);
                exVar.oJ(oJ);
                exVar.tB();
                return exVar;
            }
            if (!TextUtils.isEmpty(oJ4) && !TextUtils.equals(oJ4, "global")) {
                oJ3 = com.bytedance.adsdk.ugeno.ex.kkU.oJ(oJ2.Pfn());
            } else {
                oJ3 = com.bytedance.adsdk.ugeno.ex.kkU.oJ(oJ2.ZYk());
            }
            if (oJ3 == null) {
                return null;
            }
            tB oJ5 = oJ3.oJ(context);
            oJ5.oJ(tBVar);
            oJ5.oJ(oJ);
            oJ5.tB();
            return oJ5;
        }
    }

    public tB(Context context) {
        this.kkU = context;
    }

    public String Pfn() {
        return this.f11674so;
    }

    public String ex() {
        return this.f11673ba;
    }

    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        this.ZYk = tBVar;
    }

    public abstract boolean oJ(Object... objArr);

    public void tB() {
        this.ex = this.tB.oJ();
        com.bytedance.adsdk.ugeno.ex.ba baVar = this.tB;
        if (baVar == null) {
            return;
        }
        ba.oJ oJ2 = baVar.oJ();
        this.ex = oJ2;
        if (oJ2 == null) {
            return;
        }
        this.Pfn = oJ2.tB();
        this.f11673ba = this.ex.ZYk();
        this.cFZ = this.ex.oJ();
        this.f11674so = this.ex.ex();
        this.jFA = this.ex.Pfn();
    }

    public void oJ(com.bytedance.adsdk.ugeno.ex.ba baVar) {
        this.tB = baVar;
    }

    public void oJ(com.bytedance.adsdk.ugeno.ex.dLZ dlz) {
        this.oJ = dlz;
    }
}
