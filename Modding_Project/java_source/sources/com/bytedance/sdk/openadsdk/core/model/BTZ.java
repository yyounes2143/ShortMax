package com.bytedance.sdk.openadsdk.core.model;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BTZ {
    private final int BTZ;
    private final float Pfn;
    private final int PiB;
    private final JSONObject RZ;
    private final String Ry;
    private final int WcQ;
    private final int[] ZYk;
    private final SparseArray<tB.oJ> awB;

    /* renamed from: ba  reason: collision with root package name */
    private final float f13174ba;
    private final float cFZ;
    private final int dLZ;
    private final int eZI;
    private final int[] ex;
    private final long jFA;
    private final long kkU;
    private final int[] oJ;

    /* renamed from: si  reason: collision with root package name */
    private final JSONObject f13175si;

    /* renamed from: so  reason: collision with root package name */
    private final float f13176so;
    private final int[] tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        private int[] BTZ;
        private JSONObject Id;
        private long Pfn;
        private int[] PiB;
        private int QSm;
        private String RZ;
        private int Ry;
        private int WcQ;
        int ZYk;
        private int awB;

        /* renamed from: ba  reason: collision with root package name */
        private float f13177ba;
        private float cFZ;
        private int[] dLZ;
        private int eZI;
        private long ex;
        private float jFA;
        private int[] kkU;
        float oJ;

        /* renamed from: oq  reason: collision with root package name */
        private JSONObject f13178oq;

        /* renamed from: si  reason: collision with root package name */
        private SparseArray<tB.oJ> f13179si;

        /* renamed from: so  reason: collision with root package name */
        private float f13180so;
        float tB;

        public oJ Pfn(float f10) {
            this.f13180so = f10;
            return this;
        }

        public oJ ZYk(JSONObject jSONObject) {
            this.Id = jSONObject;
            return this;
        }

        public oJ ba(float f10) {
            this.jFA = f10;
            return this;
        }

        public oJ ex(float f10) {
            this.cFZ = f10;
            return this;
        }

        public oJ oJ(int i10) {
            this.QSm = i10;
            return this;
        }

        public oJ tB(int i10) {
            this.ZYk = i10;
            return this;
        }

        public oJ Pfn(int i10) {
            this.awB = i10;
            return this;
        }

        public oJ ZYk(int i10) {
            this.Ry = i10;
            return this;
        }

        public oJ ba(int i10) {
            this.eZI = i10;
            return this;
        }

        public oJ ex(int[] iArr) {
            this.PiB = iArr;
            return this;
        }

        public oJ oJ(JSONObject jSONObject) {
            this.f13178oq = jSONObject;
            return this;
        }

        public oJ tB(float f10) {
            this.f13177ba = f10;
            return this;
        }

        public oJ ZYk(float f10) {
            this.tB = f10;
            return this;
        }

        public oJ ex(int i10) {
            this.WcQ = i10;
            return this;
        }

        public oJ oJ(SparseArray<tB.oJ> sparseArray) {
            this.f13179si = sparseArray;
            return this;
        }

        public oJ tB(int[] iArr) {
            this.BTZ = iArr;
            return this;
        }

        public oJ ZYk(long j10) {
            this.Pfn = j10;
            return this;
        }

        public oJ oJ(float f10) {
            this.oJ = f10;
            return this;
        }

        public oJ ZYk(int[] iArr) {
            this.dLZ = iArr;
            return this;
        }

        public oJ oJ(long j10) {
            this.ex = j10;
            return this;
        }

        public oJ oJ(int[] iArr) {
            this.kkU = iArr;
            return this;
        }

        public oJ oJ(String str) {
            this.RZ = str;
            return this;
        }

        public BTZ oJ() {
            return new BTZ(this);
        }
    }

    public JSONObject oJ() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = this.RZ;
            if (jSONObject2 != null) {
                try {
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        jSONObject.putOpt(next, this.RZ.opt(next));
                    }
                } catch (Exception unused) {
                }
            }
            int[] iArr = this.oJ;
            if (iArr != null && iArr.length == 2) {
                jSONObject.putOpt("ad_x", Integer.valueOf(iArr[0])).putOpt("ad_y", Integer.valueOf(this.oJ[1]));
            }
            int[] iArr2 = this.ZYk;
            if (iArr2 != null && iArr2.length == 2) {
                jSONObject.putOpt("width", Integer.valueOf(iArr2[0])).putOpt("height", Integer.valueOf(this.ZYk[1]));
            }
            int[] iArr3 = this.tB;
            if (iArr3 != null && iArr3.length == 2) {
                jSONObject.putOpt("button_x", Integer.valueOf(iArr3[0])).putOpt("button_y", Integer.valueOf(this.tB[1]));
            }
            int[] iArr4 = this.ex;
            if (iArr4 != null && iArr4.length == 2) {
                jSONObject.putOpt("button_width", Integer.valueOf(iArr4[0])).putOpt("button_height", Integer.valueOf(this.ex[1]));
            }
            jSONObject.putOpt("down_x", Float.toString(this.Pfn)).putOpt("down_y", Float.toString(this.f13174ba)).putOpt("up_x", Float.toString(this.cFZ)).putOpt("up_y", Float.toString(this.f13176so)).putOpt("down_time", Long.valueOf(this.jFA)).putOpt("up_time", Long.valueOf(this.kkU)).putOpt("toolType", Integer.valueOf(this.dLZ)).putOpt("deviceId", Integer.valueOf(this.BTZ)).putOpt("source", Integer.valueOf(this.PiB)).putOpt("ft", oJ(this.awB, this.WcQ)).putOpt("click_area_type", this.Ry);
            int i10 = this.eZI;
            if (i10 > 0) {
                jSONObject.putOpt("areaType", Integer.valueOf(i10));
            }
            JSONObject jSONObject3 = this.f13175si;
            if (jSONObject3 != null) {
                jSONObject.putOpt("rectInfo", jSONObject3);
            }
        } catch (Exception unused2) {
        }
        return jSONObject;
    }

    private BTZ(@NonNull oJ oJVar) {
        this.oJ = oJVar.dLZ;
        this.ZYk = oJVar.BTZ;
        this.ex = oJVar.PiB;
        this.tB = oJVar.kkU;
        this.Pfn = oJVar.jFA;
        this.f13174ba = oJVar.f13180so;
        this.cFZ = oJVar.cFZ;
        this.f13176so = oJVar.f13177ba;
        this.jFA = oJVar.Pfn;
        this.kkU = oJVar.ex;
        this.dLZ = oJVar.WcQ;
        this.BTZ = oJVar.awB;
        this.PiB = oJVar.eZI;
        this.WcQ = oJVar.Ry;
        this.awB = oJVar.f13179si;
        this.Ry = oJVar.RZ;
        this.eZI = oJVar.QSm;
        this.f13175si = oJVar.f13178oq;
        this.RZ = oJVar.Id;
    }

    public static JSONObject oJ(SparseArray<tB.oJ> sparseArray, int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (sparseArray != null) {
                for (int i11 = 0; i11 < sparseArray.size(); i11++) {
                    tB.oJ valueAt = sparseArray.valueAt(i11);
                    if (valueAt != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt("force", Double.valueOf(valueAt.tB)).putOpt("mr", Double.valueOf(valueAt.ZYk)).putOpt(TypedValues.CycleType.S_WAVE_PHASE, Integer.valueOf(valueAt.oJ)).putOpt(CampaignEx.JSON_KEY_ST_TS, Long.valueOf(valueAt.ex));
                        jSONArray.put(jSONObject2);
                        jSONObject.putOpt("ftc", Integer.valueOf(i10)).putOpt("info", jSONArray);
                    }
                }
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }
}
