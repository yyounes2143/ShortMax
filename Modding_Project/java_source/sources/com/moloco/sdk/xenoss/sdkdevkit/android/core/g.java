package com.moloco.sdk.xenoss.sdkdevkit.android.core;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;
import ms.i;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class g implements a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f36594a = "WebBrowserUserAgentService";
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final i f36595b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.core.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return g.b(g.this);
        }
    });

    public static final String b(g gVar) {
        try {
            String property = System.getProperty("http.agent");
            if (property == null) {
                return "";
            }
            if (StringsKt.t0(property)) {
                return "";
            }
            return property;
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, gVar.f36594a, e10.toString(), null, false, 12, null);
            return "";
        }
    }

    public final String a() {
        return (String) this.f36595b.getValue();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.core.a
    @NotNull
    public String invoke() {
        return a();
    }
}
