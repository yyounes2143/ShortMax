package com.bytedance.sdk.openadsdk.core.dLZ;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk extends tB {
    private long dLZ;
    private long kkU;

    public ZYk(int i10, int i11, long j10, long j11, oJ.EnumC0210oJ enumC0210oJ, oJ.ZYk zYk, String str, List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list, List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list2, String str2) {
        super(i10, i11, enumC0210oJ, zYk, str, list, list2, str2);
        this.kkU = j10;
        this.dLZ = j11;
        this.jFA = "icon_click";
    }

    @Override // com.bytedance.sdk.openadsdk.core.dLZ.tB
    public JSONObject oJ() throws JSONException {
        JSONObject oJ = super.oJ();
        if (oJ != null) {
            oJ.put(TypedValues.CycleType.S_WAVE_OFFSET, this.kkU);
            oJ.put("duration", this.dLZ);
        }
        return oJ;
    }

    public static ZYk oJ(JSONObject jSONObject) {
        tB ZYk = tB.ZYk(jSONObject);
        if (ZYk == null) {
            return null;
        }
        return new ZYk(ZYk.oJ, ZYk.ZYk, jSONObject.optLong(TypedValues.CycleType.S_WAVE_OFFSET, -1L), jSONObject.optLong("duration", -1L), ZYk.tB, ZYk.ex, ZYk.Pfn, ZYk.f13141ba, ZYk.cFZ, ZYk.f13142so);
    }
}
