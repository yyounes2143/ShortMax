package io.bidmachine.ads.networks.gam;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: GAMUnitDataFactory.java */
/* loaded from: classes7.dex */
public class u {
    @NonNull
    static t a(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull Map<String, String> map) {
        return new t(str, Float.parseFloat(str2), Float.parseFloat(str3), map);
    }

    @Nullable
    static t b(@NonNull String str, @NonNull Map<String, String> map) {
        if (map.isEmpty()) {
            return null;
        }
        String str2 = map.get("score");
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        String str3 = map.get("price");
        if (TextUtils.isEmpty(str3)) {
            return null;
        }
        return a(str, str2, str3, map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static t c(@NonNull String str, @NonNull JSONObject jSONObject) {
        try {
            return b(str, io.bidmachine.core.g.q0(jSONObject));
        } catch (Throwable unused) {
            return null;
        }
    }
}
