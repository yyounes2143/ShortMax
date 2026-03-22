package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ {
    public boolean Pfn;

    /* renamed from: ba  reason: collision with root package name */
    public boolean f13254ba;
    public boolean ex;
    public String tB;
    public static final cFZ oJ = new cFZ(null);
    public static String ZYk = "";

    public cFZ(String str) {
        this.tB = "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/3p_monitor.9db44671.js";
        this.ex = true;
        this.Pfn = true;
        this.f13254ba = true;
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("performance_js");
            String optString = optJSONObject.optString("url", "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/3p_monitor.9db44671.js");
            if (!TextUtils.isEmpty(optString)) {
                this.tB = optString;
            }
            JSONArray optJSONArray = optJSONObject.optJSONArray("execute_time");
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                arrayList.add(optJSONArray.optString(i10));
            }
            this.ex = arrayList.contains("load_finish");
            this.f13254ba = arrayList.contains("load_fail");
            this.Pfn = arrayList.contains("load");
        } catch (Exception unused) {
        }
    }
}
