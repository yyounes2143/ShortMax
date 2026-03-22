package com.inmobi.media;

import android.os.Build;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class xf {
    public static boolean a(WebView view, RenderProcessGoneDetail renderProcessGoneDetail, String source) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(source, "source");
        boolean z10 = false;
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        Pair a10 = ms.k.a("source", source);
        if (renderProcessGoneDetail != null) {
            z10 = renderProcessGoneDetail.didCrash();
        }
        Map o10 = kotlin.collections.p0.o(a10, ms.k.a("isCrashed", Boolean.valueOf(z10)));
        Pd pd2 = Pd.f23988a;
        Pd.b("WebViewRenderProcessGoneEvent", o10, Td.f24224a);
        view.destroy();
        return true;
    }
}
