package com.bytedance.sdk.openadsdk.core.settings;

import com.bytedance.sdk.component.utils.QSm;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public interface Pfn {
    public static final ZYk<JSONObject> oJ = new ZYk<JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.settings.Pfn.1
        @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.ZYk
        /* renamed from: oJ */
        public JSONObject ZYk(String str) {
            try {
                return new JSONObject(str);
            } catch (Exception e10) {
                QSm.oJ("ISettingsDataRepository", "", e10);
                return null;
            }
        }
    };
    public static final ZYk<Set<String>> ZYk = new ZYk<Set<String>>() { // from class: com.bytedance.sdk.openadsdk.core.settings.Pfn.2
        @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.ZYk
        /* renamed from: oJ */
        public Set<String> ZYk(String str) {
            HashSet hashSet = new HashSet();
            try {
                JSONArray jSONArray = new JSONArray(str);
                int length = jSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    hashSet.add(jSONArray.getString(i10));
                }
            } catch (Exception e10) {
                QSm.oJ("ISettingsDataRepository", "", e10);
            }
            return hashSet;
        }
    };

    /* loaded from: classes3.dex */
    public interface ZYk<T> {
        T ZYk(String str);
    }

    /* loaded from: classes3.dex */
    public interface oJ {
        oJ oJ(String str);

        oJ oJ(String str, float f10);

        oJ oJ(String str, int i10);

        oJ oJ(String str, long j10);

        oJ oJ(String str, String str2);

        oJ oJ(String str, boolean z10);

        void oJ();
    }

    void oJ(JSONObject jSONObject);
}
