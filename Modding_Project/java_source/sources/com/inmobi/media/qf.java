package com.inmobi.media;

import android.webkit.WebResourceResponse;
import java.net.URLDecoder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes5.dex */
public abstract class qf {
    public static WebResourceResponse a(String urlRaw, InterfaceC3269z5 interfaceC3269z5) {
        String url;
        Intrinsics.checkNotNullParameter(urlRaw, "urlRaw");
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("IMResourceCacheManager", AbstractC2977h0.a("shouldInterceptRequest ", urlRaw));
        }
        try {
            url = URLDecoder.decode(StringsKt.v1(urlRaw).toString(), "UTF-8");
        } catch (Exception unused) {
            url = null;
        }
        if (url == null) {
            return null;
        }
        Intrinsics.checkNotNullParameter(url, "url");
        if (!StringsKt.b0(url, "inmobicache=true", false, 2, null)) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).a("IMResourceCacheManager", "Cache is not enabled for URL: ".concat(url));
            }
            return null;
        }
        return sf.f25274a.a(url, interfaceC3269z5);
    }
}
