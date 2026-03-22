package com.bytedance.sdk.openadsdk.core.dLZ.ZYk;

import android.text.TextUtils;
import com.adjust.sdk.Constants;
import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ extends tB implements Comparable<oJ> {
    public long oJ;

    /* renamed from: com.bytedance.sdk.openadsdk.core.dLZ.ZYk.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0208oJ {
        private final long ZYk;
        private final String oJ;
        private tB.EnumC0209tB tB = tB.EnumC0209tB.TRACKING_URL;

        public C0208oJ(String str, long j10) {
            this.oJ = str;
            this.ZYk = j10;
        }

        public oJ oJ() {
            return new oJ(this.ZYk, this.oJ, this.tB, Boolean.FALSE);
        }
    }

    protected oJ(long j10, String str, tB.EnumC0209tB enumC0209tB, Boolean bool) {
        super(str, enumC0209tB, bool);
        this.oJ = j10;
    }

    public JSONObject ZYk() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("content", tB());
        jSONObject.put("trackingMilliseconds", this.oJ);
        return jSONObject;
    }

    public long oJ() {
        return this.oJ;
    }

    public String toString() {
        return super.toString();
    }

    public static int oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return Integer.MIN_VALUE;
        }
        String[] split = str.split(":");
        if (split.length == 3) {
            try {
                return (int) ((Integer.parseInt(split[0]) * Constants.ONE_HOUR) + (Integer.parseInt(split[1]) * 60000) + (Float.parseFloat(split[2]) * 1000.0f));
            } catch (Throwable unused) {
            }
        }
        return Integer.MIN_VALUE;
    }

    public boolean oJ(long j10) {
        return this.oJ <= j10 && !Pfn();
    }

    @Override // java.lang.Comparable
    /* renamed from: oJ */
    public int compareTo(oJ oJVar) {
        if (oJVar != null) {
            long j10 = this.oJ;
            long j11 = oJVar.oJ;
            if (j10 > j11) {
                return 1;
            }
            return j10 < j11 ? -1 : 0;
        }
        return 1;
    }
}
