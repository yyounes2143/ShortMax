package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
/* loaded from: classes3.dex */
public class ba {
    public static String oJ(String str) {
        if (!com.bytedance.sdk.component.utils.awB.ex()) {
            return str;
        }
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        com.bytedance.sdk.openadsdk.core.model.kkU kku = new com.bytedance.sdk.openadsdk.core.model.kkU(com.bytedance.sdk.openadsdk.core.jFA.ZYk().PiB());
        StringBuilder sb2 = new StringBuilder(str);
        for (String str2 : kku.ZYk()) {
            if (sb2.toString().contains(str2)) {
                if (sb2.toString().contains("?")) {
                    sb2.append(ContainerUtils.FIELD_DELIMITER);
                    sb2.append(kku.oJ());
                } else {
                    sb2.append("?");
                    sb2.append(kku.oJ());
                }
            }
        }
        return sb2.toString();
    }
}
