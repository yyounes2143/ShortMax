package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.cY;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public interface Id<T> {

    /* loaded from: classes3.dex */
    public interface ZYk {
        void oJ(int i10, String str);

        void oJ(cY.ZYk zYk);
    }

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(int i10, String str);

        void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar);
    }

    com.bytedance.sdk.openadsdk.ex.Pfn ZYk(JSONObject jSONObject);

    com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJ();

    com.bytedance.sdk.openadsdk.ex.Pfn oJ(JSONObject jSONObject, String str, boolean z10);

    JSONObject oJ(JSONObject jSONObject);

    void oJ(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.HL hl2, int i10, oJ oJVar);

    void oJ(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.HL hl2, int i10, QSm qSm);

    void oJ(String str);

    void oJ(String str, List<FilterWord> list, JSONObject jSONObject, String str2, String str3);

    void oJ(JSONObject jSONObject, ZYk zYk);

    void oJ(JSONObject jSONObject, String str);
}
