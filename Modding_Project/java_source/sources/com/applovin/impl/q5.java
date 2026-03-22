package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.ProxyConfig;
import com.applovin.impl.b0;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class q5 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final b f9337g;

    /* renamed from: h  reason: collision with root package name */
    private final String f9338h;

    /* renamed from: i  reason: collision with root package name */
    private String f9339i;

    /* loaded from: classes2.dex */
    public interface b {
        void a(b0.b bVar, String str);

        void a(String str, String str2);
    }

    public q5(com.applovin.impl.sdk.k kVar, String str, b bVar) {
        super("TaskFetchAppAdsContent", kVar);
        this.f9338h = str;
        this.f9337g = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = new ArrayList(Arrays.asList(Uri.parse(this.f9338h).getAuthority().split("\\.")));
        if (arrayList.size() > 0) {
            String str = (String) arrayList.get(0);
            if ("www".equals(str) || "m".equals(str)) {
                arrayList.remove(0);
            }
        }
        String join = TextUtils.join(".", arrayList);
        Uri build = new Uri.Builder().scheme("https").authority(join).appendPath("app-ads.txt").build();
        com.applovin.impl.sdk.network.a a10 = com.applovin.impl.sdk.network.a.a(this.f7960a).c(ShareTarget.METHOD_GET).b(build.toString()).a(new Uri.Builder().scheme(ProxyConfig.MATCH_HTTP).authority(join).appendPath("app-ads.txt").build().toString()).a((Object) "").a(false).a();
        this.f9339i = build.toString();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str2 = this.f7961b;
            oVar.a(str2, "Looking up app-ads.txt at " + this.f9339i);
        }
        this.f7960a.r0().a(new a(a10, this.f7960a));
    }

    /* loaded from: classes2.dex */
    class a extends j6 {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
            super(aVar, kVar);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, String str2, int i10) {
            if (TextUtils.isEmpty(str2)) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7962c.b(this.f7961b, "No app-ads.txt found");
                }
                q5.this.f9337g.a(b0.b.APPADSTXT_NOT_FOUND, q5.this.f9339i);
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Found app-ads.txt");
            }
            q5.this.f9337g.a(str2, q5.this.f9339i);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, String str3) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str4 = this.f7961b;
                oVar.b(str4, "Unable to fetch app-ads.txt due to: " + str2 + ", and received error code: " + i10);
            }
            q5.this.f9337g.a(b0.b.APPADSTXT_NOT_FOUND, q5.this.f9339i);
        }
    }
}
