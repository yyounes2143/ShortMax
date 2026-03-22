package com.applovin.impl;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.impl.sdk.utils.CollectionUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class r4 extends WebViewClient {
    protected abstract Map a();

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        boolean didCrash;
        String str;
        int rendererPriorityAtExit;
        HashMap<String, String> hashMap = CollectionUtils.hashMap("top_main_method", "onRenderProcessGone");
        hashMap.putAll(a());
        if (o0.h()) {
            didCrash = renderProcessGoneDetail.didCrash();
            if (didCrash) {
                str = "crash";
            } else {
                str = "non_crash";
            }
            hashMap.put("source", str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("renderer_priority_at_exit=");
            rendererPriorityAtExit = renderProcessGoneDetail.rendererPriorityAtExit();
            sb2.append(rendererPriorityAtExit);
            hashMap.put("details", sb2.toString());
        }
        com.applovin.impl.sdk.k kVar = com.applovin.impl.sdk.k.D0;
        if (kVar != null) {
            com.applovin.impl.sdk.k.D0.E().a(c2.N0, hashMap, ((Long) kVar.a(v4.f10317o3)).longValue());
        }
        com.applovin.impl.sdk.o.g("RenderProcessGoneHandlingWebViewClient", "onRenderProcessGone() handled");
        return true;
    }
}
