package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.g3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2964g3 implements N2 {
    @Override // com.inmobi.media.N2
    public final void a(Config config) {
        String str;
        Intrinsics.checkNotNullParameter(config, "config");
        synchronized (this) {
            try {
                C2980h3 c2980h3 = C2980h3.f24787a;
                Intrinsics.checkNotNullExpressionValue("h3", "<get-TAG>(...)");
                SignalsConfig signalsConfig = (SignalsConfig) config;
                C2980h3.f24790d = signalsConfig;
                if (signalsConfig != null) {
                    str = signalsConfig.getAK();
                } else {
                    str = null;
                }
                C2980h3.f24792f = AbstractC3013j4.a(str);
                c2980h3.b();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
