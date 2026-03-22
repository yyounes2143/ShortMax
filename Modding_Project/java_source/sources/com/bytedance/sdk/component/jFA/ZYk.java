package com.bytedance.sdk.component.jFA;

import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public class ZYk {
    public static boolean oJ(List<String> list, String str) {
        if (list != null && !list.isEmpty()) {
            for (String str2 : list) {
                if (Pattern.matches(str2, str)) {
                    return true;
                }
            }
        }
        return false;
    }
}
