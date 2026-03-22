package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class si {
    private oJ oJ;

    public si(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject != null && (optJSONObject = jSONObject.optJSONObject("easy_playable")) != null) {
            this.oJ = new oJ(optJSONObject.optJSONObject("components"));
        }
    }

    public static oJ ZYk(cY cYVar) {
        si wLv;
        if (cYVar == null || (wLv = cYVar.wLv()) == null) {
            return null;
        }
        return wLv.oJ;
    }

    public static boolean oJ(cY cYVar) {
        si wLv;
        oJ oJVar;
        if (cYVar == null || (wLv = cYVar.wLv()) == null || (oJVar = wLv.oJ) == null || !oJVar.oJ()) {
            return false;
        }
        return true;
    }

    /* loaded from: classes3.dex */
    public static class oJ {
        C0222oJ ZYk;
        C0222oJ oJ;

        /* renamed from: com.bytedance.sdk.openadsdk.core.model.si$oJ$oJ  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0222oJ {
            String oJ;

            public C0222oJ(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return;
                }
                this.oJ = jSONObject.optString("entry");
            }

            public boolean oJ() {
                if (!TextUtils.isEmpty(this.oJ)) {
                    return true;
                }
                return false;
            }
        }

        public oJ(JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            if (jSONObject.has("vertical")) {
                this.oJ = new C0222oJ(jSONObject.optJSONObject("vertical"));
            }
            if (jSONObject.has("horizontal")) {
                this.ZYk = new C0222oJ(jSONObject.optJSONObject("horizontal"));
            }
        }

        public boolean oJ() {
            C0222oJ c0222oJ = this.ZYk;
            if (c0222oJ == null || !c0222oJ.oJ()) {
                C0222oJ c0222oJ2 = this.oJ;
                return c0222oJ2 != null && c0222oJ2.oJ();
            }
            return true;
        }

        public String oJ(boolean z10) {
            if (z10) {
                C0222oJ c0222oJ = this.oJ;
                if (c0222oJ != null) {
                    return c0222oJ.oJ;
                }
                return "";
            }
            C0222oJ c0222oJ2 = this.ZYk;
            if (c0222oJ2 != null) {
                return c0222oJ2.oJ;
            }
            return "";
        }
    }
}
