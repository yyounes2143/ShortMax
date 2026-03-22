package com.bytedance.adsdk.ugeno.oJ.oJ;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class oJ {
    protected com.bytedance.adsdk.ugeno.ZYk.tB ZYk;
    protected JSONObject oJ;
    private String tB;

    /* renamed from: com.bytedance.adsdk.ugeno.oJ.oJ.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0149oJ {
        public static oJ oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, JSONObject jSONObject) {
            if (tBVar == null || jSONObject == null) {
                return null;
            }
            String optString = jSONObject.optString("type");
            optString.hashCode();
            char c10 = 65535;
            switch (optString.hashCode()) {
                case -1881872635:
                    if (optString.equals("stretch")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -930826704:
                    if (optString.equals("ripple")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -920177947:
                    if (optString.equals("rub_in")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 109407595:
                    if (optString.equals("shine")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    return new Pfn(tBVar, jSONObject);
                case 1:
                    return new ZYk(tBVar, jSONObject);
                case 2:
                    return new tB(tBVar, jSONObject);
                case 3:
                    return new ex(tBVar, jSONObject);
                default:
                    return null;
            }
        }
    }

    public oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, JSONObject jSONObject) {
        this.oJ = jSONObject;
        this.ZYk = tBVar;
        oJ();
    }

    public abstract void ZYk();

    public abstract void ZYk(Canvas canvas);

    public String ex() {
        return this.tB;
    }

    public void oJ() {
        this.tB = this.oJ.optString("type");
        ZYk();
    }

    public abstract void oJ(int i10, int i11);

    public abstract void oJ(Canvas canvas);

    public abstract List<PropertyValuesHolder> tB();
}
