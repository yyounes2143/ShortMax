package com.bytedance.sdk.openadsdk.tB;

import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.Id;
import com.bytedance.sdk.openadsdk.core.si;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private static volatile ZYk oJ;
    private final Id<com.bytedance.sdk.openadsdk.ex.oJ> ZYk = si.tB();

    private ZYk() {
    }

    public static ZYk oJ() {
        if (oJ == null) {
            synchronized (ZYk.class) {
                try {
                    if (oJ == null) {
                        oJ = new ZYk();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public void oJ(@NonNull String str, List<FilterWord> list, String str2) {
        oJ(str, list, null, null, str2);
    }

    public void oJ(@NonNull String str, List<FilterWord> list, JSONObject jSONObject, String str2, String str3) {
        this.ZYk.oJ(str, list, jSONObject, str2, str3);
    }
}
