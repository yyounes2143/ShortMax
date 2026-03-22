package com.bytedance.sdk.openadsdk.core.model;

import android.content.Intent;
import android.text.TextUtils;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class IUZ {
    private String Pfn;
    private String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private String f13183ba;
    private String cFZ;
    private int dLZ;
    private int ex;
    private String jFA;
    private String kkU;
    private String oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f13184so;
    private int tB;

    public String Pfn() {
        return this.f13183ba;
    }

    public int ZYk() {
        return this.f13184so;
    }

    public void ba(String str) {
        this.oJ = str;
    }

    public void cFZ(String str) {
        this.ZYk = str;
    }

    public String ex() {
        return this.Pfn;
    }

    public String jFA() {
        if (this.tB == 2) {
            return this.ZYk;
        }
        return this.oJ;
    }

    public JSONObject kkU() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.oJ)) {
                jSONObject.put("market_dpl", this.oJ);
            }
            if (!TextUtils.isEmpty(this.ZYk)) {
                jSONObject.put("market_dpl_auto", this.ZYk);
            }
            if (!TextUtils.isEmpty(this.Pfn)) {
                jSONObject.put("market_pkg", this.Pfn);
            }
            if (!TextUtils.isEmpty(this.cFZ)) {
                jSONObject.put("app_pkg", this.cFZ);
            }
            if (!TextUtils.isEmpty(this.f13183ba)) {
                jSONObject.put("regex", this.f13183ba);
            }
            jSONObject.put("exec_type", this.tB);
            jSONObject.put("oem_vendor_type", this.ex);
            jSONObject.put("overlay", this.f13184so);
            jSONObject.put("gp_card", this.dLZ);
            if (!TextUtils.isEmpty(this.jFA)) {
                jSONObject.put("caller_id", this.jFA);
            }
            if (!TextUtils.isEmpty(this.kkU)) {
                jSONObject.put("ext_map", this.kkU);
            }
            return jSONObject;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("OemModel", th2.getMessage());
            return null;
        }
    }

    public String oJ() {
        return this.cFZ;
    }

    public boolean so() {
        if (this.dLZ == 1) {
            return true;
        }
        return false;
    }

    public String tB() {
        return this.jFA;
    }

    public void Pfn(String str) {
        this.f13183ba = str;
    }

    public void ZYk(int i10) {
        this.f13184so = i10;
    }

    public int ba() {
        return this.ex;
    }

    public boolean cFZ() {
        return this.ex == 1;
    }

    public void ex(String str) {
        this.Pfn = str;
    }

    public void oJ(String str) {
        this.cFZ = str;
    }

    public void tB(String str) {
        this.kkU = str;
    }

    public void ZYk(String str) {
        this.jFA = str;
    }

    public void ex(int i10) {
        this.ex = i10;
    }

    public void oJ(int i10) {
        this.dLZ = i10;
    }

    public void tB(int i10) {
        this.tB = i10;
    }

    public static IUZ oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        IUZ iuz = new IUZ();
        try {
            iuz.ba(jSONObject.optString("market_dpl", ""));
            iuz.cFZ(jSONObject.optString("market_dpl_auto", ""));
            iuz.tB(jSONObject.optInt("exec_type", 0));
            iuz.ex(jSONObject.optInt("oem_vendor_type", 0));
            iuz.ex(jSONObject.optString("market_pkg", ""));
            iuz.Pfn(jSONObject.optString("regex", ""));
            iuz.ZYk(jSONObject.optInt("overlay", 1));
            iuz.ZYk(jSONObject.optString("caller_id", ""));
            iuz.tB(jSONObject.optString("ext_map", null));
            iuz.oJ(jSONObject.optInt("gp_card", 0));
            iuz.oJ(jSONObject.optString("app_pkg", ""));
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("OemModel", th2.getMessage());
        }
        return iuz;
    }

    public void oJ(Intent intent) {
        if (TextUtils.isEmpty(this.kkU)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.kkU);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    intent.putExtra(next, (String) obj);
                } else if (obj instanceof Integer) {
                    intent.putExtra(next, (Integer) obj);
                } else if (obj instanceof Boolean) {
                    intent.putExtra(next, (Boolean) obj);
                } else if (obj instanceof Long) {
                    intent.putExtra(next, (Long) obj);
                } else if (obj instanceof Double) {
                    intent.putExtra(next, (Double) obj);
                } else if (obj instanceof Float) {
                    intent.putExtra(next, (Float) obj);
                }
            }
        } catch (Throwable unused) {
        }
    }
}
