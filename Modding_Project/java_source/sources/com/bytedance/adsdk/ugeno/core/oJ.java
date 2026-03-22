package com.bytedance.adsdk.ugeno.core;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private long Pfn;
    private float ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private String f11666ba;
    private long ex;
    private String oJ;
    private List<C0144oJ> tB;

    /* renamed from: com.bytedance.adsdk.ugeno.core.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0144oJ {
        private String Pfn;
        private float ZYk;

        /* renamed from: ba  reason: collision with root package name */
        private float f11667ba;
        private float cFZ;
        private long ex;
        private String jFA;
        private String kkU;
        private long oJ;

        /* renamed from: so  reason: collision with root package name */
        private float[] f11668so;
        private String tB;

        public String Pfn() {
            return this.Pfn;
        }

        public float ZYk() {
            return this.ZYk;
        }

        public float ba() {
            return this.f11667ba;
        }

        public float cFZ() {
            return this.cFZ;
        }

        public long ex() {
            return this.ex;
        }

        public String jFA() {
            return this.jFA;
        }

        public String kkU() {
            return this.kkU;
        }

        public long oJ() {
            return this.oJ;
        }

        public float[] so() {
            return this.f11668so;
        }

        public String tB() {
            return this.tB;
        }

        public void ZYk(long j10) {
            this.ex = j10;
        }

        public void ex(String str) {
            this.jFA = str;
        }

        public void oJ(long j10) {
            this.oJ = j10;
        }

        public void tB(float f10) {
            this.cFZ = f10;
        }

        public void ZYk(String str) {
            this.Pfn = str;
        }

        public void oJ(float f10) {
            this.ZYk = f10;
        }

        public void tB(String str) {
            this.kkU = str;
        }

        public void ZYk(float f10) {
            this.f11667ba = f10;
        }

        public void oJ(String str) {
            this.tB = str;
        }

        public void oJ(float[] fArr) {
            this.f11668so = fArr;
        }

        public static C0144oJ oJ(JSONObject jSONObject, com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
            if (jSONObject == null) {
                return null;
            }
            C0144oJ c0144oJ = new C0144oJ();
            c0144oJ.oJ(jSONObject.optLong("duration"));
            String optString = jSONObject.optString("loop");
            if (TextUtils.equals("infinite", optString)) {
                c0144oJ.oJ(-1.0f);
            } else {
                try {
                    c0144oJ.oJ(Float.parseFloat(optString));
                } catch (NumberFormatException unused) {
                    c0144oJ.oJ(0.0f);
                }
            }
            c0144oJ.oJ(jSONObject.optString("loopMode"));
            c0144oJ.ZYk(jSONObject.optString("type"));
            if (TextUtils.equals(c0144oJ.Pfn(), "ripple")) {
                c0144oJ.tB(jSONObject.optString("rippleColor"));
            }
            View dLZ = tBVar.dLZ();
            Context context = dLZ != null ? dLZ.getContext() : null;
            if (TextUtils.equals(c0144oJ.Pfn(), TtmlNode.ATTR_TTS_BACKGROUND_COLOR)) {
                String oJ = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jSONObject.optString("valueTo"), tBVar.BTZ());
                int oJ2 = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(jSONObject.optString("valueFrom"));
                int oJ3 = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(oJ);
                c0144oJ.ZYk(oJ2);
                c0144oJ.tB(oJ3);
            } else if ((TextUtils.equals(c0144oJ.Pfn(), "translateX") || TextUtils.equals(c0144oJ.Pfn(), "translateY")) && context != null) {
                try {
                    float oJ4 = com.bytedance.adsdk.ugeno.cFZ.so.oJ(context, (float) jSONObject.optDouble("valueFrom"));
                    float oJ5 = com.bytedance.adsdk.ugeno.cFZ.so.oJ(context, (float) jSONObject.optDouble("valueTo"));
                    c0144oJ.ZYk(oJ4);
                    c0144oJ.tB(oJ5);
                } catch (Exception unused2) {
                    Log.e("animation", "animation ");
                }
            } else {
                c0144oJ.ZYk((float) jSONObject.optDouble("valueFrom"));
                c0144oJ.tB((float) jSONObject.optDouble("valueTo"));
            }
            c0144oJ.ex(jSONObject.optString("interpolator"));
            String oJ6 = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jSONObject.optString("startDelay"), tBVar.BTZ());
            Log.d("TAG", "createAnimationModel: ");
            c0144oJ.ZYk(com.bytedance.adsdk.ugeno.cFZ.tB.oJ(oJ6, 0L));
            JSONArray optJSONArray = jSONObject.optJSONArray("values");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                float[] fArr = new float[optJSONArray.length()];
                int i10 = 0;
                if ((TextUtils.equals(c0144oJ.Pfn(), "translateX") || TextUtils.equals(c0144oJ.Pfn(), "translateY")) && context != null) {
                    while (i10 < optJSONArray.length()) {
                        fArr[i10] = com.bytedance.adsdk.ugeno.cFZ.so.oJ(context, (float) oJ.oJ(optJSONArray.optString(i10), tBVar.BTZ()));
                        i10++;
                    }
                } else {
                    while (i10 < optJSONArray.length()) {
                        fArr[i10] = (float) oJ.oJ(optJSONArray.optString(i10), tBVar.BTZ());
                        i10++;
                    }
                }
                c0144oJ.oJ(fArr);
            }
            return c0144oJ;
        }
    }

    public long Pfn() {
        return this.Pfn;
    }

    public float ZYk() {
        return this.ZYk;
    }

    public String ba() {
        return this.f11666ba;
    }

    public long ex() {
        return this.ex;
    }

    public String oJ() {
        return this.oJ;
    }

    public List<C0144oJ> tB() {
        return this.tB;
    }

    public void ZYk(long j10) {
        this.Pfn = j10;
    }

    public void oJ(String str) {
        this.oJ = str;
    }

    public void ZYk(String str) {
        this.f11666ba = str;
    }

    public void oJ(float f10) {
        this.ZYk = f10;
    }

    public void oJ(List<C0144oJ> list) {
        this.tB = list;
    }

    public void oJ(long j10) {
        this.ex = j10;
    }

    public static oJ oJ(String str, com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return oJ(new JSONObject(str), tBVar);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static oJ oJ(JSONObject jSONObject, com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        return oJ(jSONObject, null, tBVar);
    }

    public static oJ oJ(JSONObject jSONObject, JSONObject jSONObject2, com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        if (jSONObject == null) {
            return null;
        }
        oJ oJVar = new oJ();
        oJVar.oJ(jSONObject.optString("ordering"));
        String optString = jSONObject.optString("loop");
        if (TextUtils.equals("infinite", optString)) {
            oJVar.oJ(-1.0f);
        } else {
            try {
                oJVar.oJ(Float.parseFloat(optString));
            } catch (NumberFormatException unused) {
                oJVar.oJ(0.0f);
            }
        }
        oJVar.oJ(jSONObject.optLong("duration", 0L));
        oJVar.ZYk(com.bytedance.adsdk.ugeno.cFZ.tB.oJ(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jSONObject.optString("startDelay"), tBVar.BTZ()), 0L));
        oJVar.ZYk(jSONObject.optString("loopMode"));
        JSONArray optJSONArray = jSONObject.optJSONArray("animators");
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i10);
                if (jSONObject2 != null) {
                    com.bytedance.adsdk.ugeno.cFZ.ZYk.oJ(jSONObject2, optJSONObject);
                }
                arrayList.add(C0144oJ.oJ(optJSONObject, tBVar));
            }
            oJVar.oJ(arrayList);
        }
        return oJVar;
    }

    public static double oJ(Object obj, JSONObject jSONObject) {
        if (obj instanceof String) {
            return com.bytedance.adsdk.ugeno.cFZ.tB.oJ(com.bytedance.adsdk.ugeno.tB.ZYk.oJ((String) obj, jSONObject), 0.0d);
        }
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Long) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Integer) {
            return ((Double) obj).doubleValue();
        }
        return 0.0d;
    }
}
