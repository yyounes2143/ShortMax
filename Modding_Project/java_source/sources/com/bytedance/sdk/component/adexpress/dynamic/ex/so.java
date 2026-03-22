package com.bytedance.sdk.component.adexpress.dynamic.ex;

import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class so {
    private List<List<so>> BTZ;
    private float Pfn;
    private String PiB;
    private boolean WcQ;
    private float ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private float f12707ba;
    private float cFZ;
    private so dLZ;
    private float ex;
    private Pfn jFA;
    private List<so> kkU;
    private String oJ;

    /* renamed from: so  reason: collision with root package name */
    private float f12708so;
    private float tB;
    private Map<String, String> awB = new HashMap();
    private Map<Integer, String> eZI = new HashMap();

    public so BTZ() {
        return this.dLZ;
    }

    public boolean Id() {
        return TextUtils.equals(this.jFA.Pfn().IUZ(), "flex");
    }

    public float Pfn() {
        return this.Pfn;
    }

    public int PiB() {
        ba Pfn = this.jFA.Pfn();
        return Pfn.Yg() + Pfn.lY();
    }

    public Map<String, String> QSm() {
        return this.awB;
    }

    public boolean RZ() {
        return this.WcQ;
    }

    public boolean Ry() {
        List<so> list = this.kkU;
        if (list != null && list.size() > 0) {
            return false;
        }
        return true;
    }

    public int WcQ() {
        ba Pfn = this.jFA.Pfn();
        return Pfn.nQI() + Pfn.bgF();
    }

    public Map<Integer, String> ZYk() {
        return this.eZI;
    }

    public float awB() {
        ba Pfn = this.jFA.Pfn();
        return PiB() + Pfn.awB() + Pfn.eZI() + (Pfn.BTZ() * 2.0f);
    }

    public float ba() {
        return this.ZYk;
    }

    public float cFZ() {
        return this.tB;
    }

    public String cY() {
        return this.jFA.Pfn().cY();
    }

    public List<so> dLZ() {
        return this.kkU;
    }

    public float eZI() {
        ba Pfn = this.jFA.Pfn();
        return WcQ() + Pfn.si() + Pfn.WcQ() + (Pfn.BTZ() * 2.0f);
    }

    public float ex() {
        return this.ex;
    }

    public float jFA() {
        return this.cFZ;
    }

    public boolean jr() {
        if (this.jFA.Pfn().EP() >= 0 && this.jFA.Pfn().YQ() >= 0 && this.jFA.Pfn().bD() >= 0 && this.jFA.Pfn().oCU() >= 0) {
            return false;
        }
        return true;
    }

    public Pfn kkU() {
        return this.jFA;
    }

    public String oJ() {
        return this.PiB;
    }

    public void oq() {
        List<List<so>> list = this.BTZ;
        if (list != null && list.size() > 0) {
            ArrayList arrayList = new ArrayList();
            for (List<so> list2 : this.BTZ) {
                if (list2 != null && list2.size() > 0) {
                    arrayList.add(list2);
                }
            }
            this.BTZ = arrayList;
        }
    }

    public List<List<so>> si() {
        return this.BTZ;
    }

    public float so() {
        return this.f12707ba;
    }

    public String tB() {
        return this.oJ;
    }

    public String toString() {
        return "DynamicLayoutUnit{id='" + this.oJ + "', x=" + this.ZYk + ", y=" + this.tB + ", width=" + this.f12707ba + ", height=" + this.cFZ + ", remainWidth=" + this.f12708so + ", rootBrick=" + this.jFA + ", childrenBrickUnits=" + this.kkU + '}';
    }

    public void Pfn(float f10) {
        this.f12707ba = f10;
    }

    public void ZYk(String str) {
        this.oJ = str;
    }

    public void ba(float f10) {
        this.cFZ = f10;
    }

    public void cFZ(float f10) {
        this.f12708so = f10;
    }

    public void ex(float f10) {
        this.tB = f10;
    }

    public void oJ(String str) {
        this.PiB = str;
    }

    public void tB(float f10) {
        this.ZYk = f10;
    }

    public void ZYk(float f10) {
        this.Pfn = f10;
    }

    public void oJ(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() == 0) {
                    return;
                }
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                    this.eZI.put(Integer.valueOf(optJSONObject.optInt("id")), optJSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void tB(String str) {
        this.jFA.Pfn().ba(str);
    }

    public void ZYk(List<List<so>> list) {
        this.BTZ = list;
    }

    public void oJ(float f10) {
        this.ex = f10;
    }

    public void oJ(Pfn pfn) {
        this.jFA = pfn;
    }

    public void oJ(List<so> list) {
        this.kkU = list;
    }

    public void oJ(so soVar) {
        this.dLZ = soVar;
    }

    public void oJ(boolean z10) {
        this.WcQ = z10;
    }

    public void oJ(String str, String str2) {
        this.awB.put(str, str2);
    }

    public String oJ(int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.jFA.ZYk());
        sb2.append(":");
        sb2.append(this.oJ);
        if (this.jFA.Pfn() != null) {
            sb2.append(":");
            sb2.append(this.jFA.Pfn().Qzd());
        }
        sb2.append(":");
        sb2.append(i10);
        return sb2.toString();
    }
}
