package com.inmobi.media;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.jc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3021jc extends WebViewRenderProcessClient {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC3269z5 f24900a;

    /* renamed from: b  reason: collision with root package name */
    public final C3085nc f24901b;

    public C3021jc(InterfaceC3269z5 interfaceC3269z5, C3085nc c3085nc) {
        this.f24900a = interfaceC3269z5;
        this.f24901b = c3085nc;
    }

    public final void onRenderProcessResponsive(WebView view, WebViewRenderProcess webViewRenderProcess) {
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC3269z5 interfaceC3269z5 = this.f24900a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("RenderViewRenderProcessClient", "onRenderProcessResponsive " + view + ' ' + webViewRenderProcess);
        }
        C3085nc c3085nc = this.f24901b;
        if (c3085nc != null) {
            Map a10 = c3085nc.a();
            a10.put("creativeId", c3085nc.f25062a.f24821f);
            int i10 = c3085nc.f25066e + 1;
            c3085nc.f25066e = i10;
            a10.put(MetricsSQLiteCacheKt.METRICS_COUNT, Integer.valueOf(i10));
            String a11 = c3085nc.a("RenderProcessResponsive");
            Pd pd2 = Pd.f23988a;
            Pd.b(a11, a10, Td.f24224a);
        }
    }

    public final void onRenderProcessUnresponsive(WebView view, WebViewRenderProcess webViewRenderProcess) {
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC3269z5 interfaceC3269z5 = this.f24900a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("RenderViewRenderProcessClient", "onRenderProcessUnresponsive " + view + ' ' + webViewRenderProcess);
        }
        C3085nc c3085nc = this.f24901b;
        if (c3085nc != null) {
            Map a10 = c3085nc.a();
            a10.put("creativeId", c3085nc.f25062a.f24821f);
            int i10 = c3085nc.f25065d + 1;
            c3085nc.f25065d = i10;
            a10.put(MetricsSQLiteCacheKt.METRICS_COUNT, Integer.valueOf(i10));
            String a11 = c3085nc.a("RenderProcessUnResponsive");
            Pd pd2 = Pd.f23988a;
            Pd.b(a11, a10, Td.f24224a);
        }
    }
}
