package com.bytedance.sdk.openadsdk.core.dLZ.ZYk;

import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk extends tB implements Comparable<ZYk> {
    private final float oJ;

    /* loaded from: classes3.dex */
    public static class oJ {
        private final float ZYk;
        private final String oJ;
        private tB.EnumC0209tB tB = tB.EnumC0209tB.TRACKING_URL;
        private boolean ex = false;

        public oJ(String str, float f10) {
            this.oJ = str;
            this.ZYk = f10;
        }

        public ZYk oJ() {
            return new ZYk(this.ZYk, this.oJ, this.tB, Boolean.valueOf(this.ex));
        }
    }

    public JSONObject ZYk() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("content", tB());
        jSONObject.put("trackingFraction", this.oJ);
        return jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB
    public void m_() {
        super.m_();
    }

    public boolean oJ(float f10) {
        return this.oJ <= f10 && !Pfn();
    }

    public String toString() {
        return super.toString();
    }

    private ZYk(float f10, String str, tB.EnumC0209tB enumC0209tB, Boolean bool) {
        super(str, enumC0209tB, bool);
        this.oJ = f10;
    }

    @Override // java.lang.Comparable
    /* renamed from: oJ */
    public int compareTo(ZYk zYk) {
        if (zYk != null) {
            float f10 = this.oJ;
            float f11 = zYk.oJ;
            if (f10 > f11) {
                return 1;
            }
            return f10 < f11 ? -1 : 0;
        }
        return 1;
    }
}
