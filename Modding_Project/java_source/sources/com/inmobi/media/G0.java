package com.inmobi.media;

import java.util.Map;
import kotlin.text.StringsKt;
/* loaded from: classes5.dex */
public final class G0 {
    public static final String a(String str, Map map) {
        if (map != null && str != null) {
            String str2 = str;
            for (Object obj : map.keySet()) {
                if (str2 != null) {
                    str2 = StringsKt.P(str2, String.valueOf(obj), String.valueOf(map.get(obj)), false, 4, null);
                } else {
                    str2 = null;
                }
            }
            return str2;
        }
        return str;
    }
}
