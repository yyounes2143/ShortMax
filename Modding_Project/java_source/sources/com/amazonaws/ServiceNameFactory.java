package com.amazonaws;

import com.amazonaws.internal.config.HttpClientConfig;
import com.amazonaws.internal.config.InternalConfig;
/* loaded from: classes2.dex */
enum ServiceNameFactory {
    ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getServiceName(String str) {
        HttpClientConfig h10 = InternalConfig.Factory.a().h(str);
        if (h10 == null) {
            return null;
        }
        return h10.a();
    }
}
