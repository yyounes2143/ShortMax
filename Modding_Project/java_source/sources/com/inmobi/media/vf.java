package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class vf {

    /* renamed from: a  reason: collision with root package name */
    public final N9 f25378a;

    /* renamed from: b  reason: collision with root package name */
    public final C3123q2 f25379b;

    /* renamed from: c  reason: collision with root package name */
    public uf f25380c;

    public vf(N9 mNetworkRequest, C3123q2 mWebViewClient) {
        Intrinsics.checkNotNullParameter(mNetworkRequest, "mNetworkRequest");
        Intrinsics.checkNotNullParameter(mWebViewClient, "mWebViewClient");
        this.f25378a = mNetworkRequest;
        this.f25379b = mWebViewClient;
    }

    public final void a() {
        try {
            Context d10 = Uc.d();
            if (d10 != null) {
                uf ufVar = new uf(d10);
                ufVar.setWebViewClient(this.f25379b);
                ufVar.getSettings().setJavaScriptEnabled(true);
                ufVar.getSettings().setCacheMode(2);
                this.f25380c = ufVar;
            }
            uf ufVar2 = this.f25380c;
            if (ufVar2 != null) {
                String d11 = this.f25378a.d();
                N9 n92 = this.f25378a;
                boolean z10 = T9.f24217a;
                T9.a(n92.f23893i);
                ufVar2.loadUrl(d11, n92.f23893i);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("vf", "TAG");
        }
    }
}
