package com.bytedance.sdk.openadsdk.ex;

import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ {
    private long Pfn;
    private long ZYk;
    private long ex;
    private long oJ;
    private long tB;

    public void Pfn(long j10) {
        if (this.Pfn <= 0) {
            this.Pfn = j10;
        }
    }

    public void ZYk(long j10) {
        if (this.ZYk <= 0) {
            this.ZYk = j10;
        }
    }

    public void ex(long j10) {
        if (this.ex <= 0) {
            this.ex = j10;
        }
    }

    public void oJ(long j10) {
        if (this.oJ <= 0) {
            this.oJ = j10;
        }
    }

    public void tB(long j10) {
        if (this.tB <= 0) {
            this.tB = j10;
        }
    }

    public JSONObject ZYk() {
        return oJ((JSONObject) null);
    }

    public boolean oJ() {
        return this.oJ > 0;
    }

    public void oJ(long j10, float f10) {
        if (f10 > 0.0f) {
            oJ(j10);
        }
        double d10 = f10;
        if (d10 >= 0.25d) {
            oJ(j10);
            ZYk(j10);
        }
        if (d10 >= 0.5d) {
            oJ(j10);
            ZYk(j10);
            tB(j10);
        }
        if (d10 >= 0.75d) {
            oJ(j10);
            ZYk(j10);
            tB(j10);
            ex(j10);
        }
        if (f10 >= 1.0f) {
            oJ(j10);
            ZYk(j10);
            tB(j10);
            ex(j10);
            Pfn(j10);
        }
    }

    public JSONObject oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
            } catch (Exception unused) {
            }
        }
        long j10 = this.oJ;
        if (j10 > 0) {
            jSONObject.put("show_start", j10);
            long j11 = this.ZYk;
            if (j11 > 0) {
                jSONObject.put("show_firstQuartile", j11);
                long j12 = this.tB;
                if (j12 > 0) {
                    jSONObject.put("show_mid", j12);
                    long j13 = this.ex;
                    if (j13 > 0) {
                        jSONObject.put("show_thirdQuartile", j13);
                        long j14 = this.Pfn;
                        if (j14 > 0) {
                            jSONObject.put("show_full", j14);
                        }
                    }
                }
            }
        }
        return jSONObject;
    }
}
