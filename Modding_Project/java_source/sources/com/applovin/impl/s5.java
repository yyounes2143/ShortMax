package com.applovin.impl;

import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.b0;
import com.applovin.impl.sdk.network.a;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class s5 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final b f9440g;

    /* loaded from: classes2.dex */
    public interface b {
        void a(b0.b bVar);

        void a(String str);
    }

    public s5(com.applovin.impl.sdk.k kVar, b bVar) {
        super("TaskFetchDeveloperUri", kVar);
        this.f9440g = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String valueOf = String.valueOf(this.f7960a.B().E().get("package_name"));
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Looking up developer URI for package name: " + valueOf);
        }
        a.C0121a c10 = com.applovin.impl.sdk.network.a.a(this.f7960a).c(ShareTarget.METHOD_GET);
        this.f7960a.r0().a(new a(c10.b("https://play.google.com/store/apps/details?id=" + valueOf).a((Object) "").a(false).a(), this.f7960a));
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
                    this.f7962c.b(this.f7961b, "No developer URI found - response from the Play Store is empty");
                }
                s5.this.f9440g.a(b0.b.APP_DETAILS_NOT_FOUND);
                return;
            }
            Matcher matcher = Pattern.compile("(?<=\"appstore:developer_url\" content=\").*?(?=\">)").matcher(str2);
            if (!matcher.find()) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7962c.b(this.f7961b, "No developer URI found - unable to find the developer_url meta tag from the Play Store listing");
                }
                s5.this.f9440g.a(b0.b.INVALID_DEVELOPER_URI);
                return;
            }
            String group = matcher.group();
            if (!URLUtil.isValidUrl(group)) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7962c;
                    String str3 = this.f7961b;
                    oVar.b(str3, "Developer URI (" + group + ") is not valid");
                }
                s5.this.f9440g.a(b0.b.INVALID_DEVELOPER_URI);
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f7962c;
                String str4 = this.f7961b;
                oVar2.a(str4, "Found developer URI: " + group);
            }
            s5.this.f9440g.a(group);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, String str3) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str4 = this.f7961b;
                oVar.b(str4, "Unable to fetch app details due to: " + str2 + ", and received error code: " + i10);
            }
            s5.this.f9440g.a(b0.b.APP_DETAILS_NOT_FOUND);
        }
    }
}
