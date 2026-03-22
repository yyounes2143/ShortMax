package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes2.dex */
public final class j7 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8201a;

    /* renamed from: b  reason: collision with root package name */
    private String f8202b;

    /* renamed from: c  reason: collision with root package name */
    private final String f8203c = a(x4.f10517k);

    /* renamed from: d  reason: collision with root package name */
    private final String f8204d = a(x4.f10518l);

    /* renamed from: e  reason: collision with root package name */
    private String f8205e = (String) y4.a(x4.f10519m, (Object) null, com.applovin.impl.sdk.k.o());

    /* renamed from: f  reason: collision with root package name */
    private String f8206f = (String) y4.a(x4.f10520n, (Object) null, com.applovin.impl.sdk.k.o());

    public j7(com.applovin.impl.sdk.k kVar) {
        this.f8201a = kVar;
        a(f());
    }

    private String f() {
        if (!((Boolean) this.f8201a.a(v4.H3)).booleanValue()) {
            this.f8201a.c(x4.f10516j);
        }
        String str = (String) this.f8201a.a(x4.f10516j);
        if (StringUtils.isValidString(str)) {
            this.f8201a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.f8201a.O();
                O.a("AppLovinSdk", "Using identifier (" + str + ") from previous session");
            }
            return str;
        }
        return null;
    }

    public String a() {
        return this.f8204d;
    }

    public String b() {
        return this.f8205e;
    }

    public String c() {
        return this.f8203c;
    }

    public String d() {
        return this.f8206f;
    }

    public String e() {
        return this.f8202b;
    }

    private String a(x4 x4Var) {
        String str = (String) y4.a(x4Var, (Object) null, com.applovin.impl.sdk.k.o());
        if (StringUtils.isValidString(str)) {
            return str;
        }
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        y4.b(x4Var, lowerCase, com.applovin.impl.sdk.k.o());
        return lowerCase;
    }

    public void b(String str) {
        this.f8205e = str;
        y4.b(x4.f10519m, str, com.applovin.impl.sdk.k.o());
    }

    public void c(String str) {
        this.f8206f = str;
        y4.b(x4.f10520n, str, com.applovin.impl.sdk.k.o());
    }

    public void a(String str) {
        if (((Boolean) this.f8201a.a(v4.H3)).booleanValue()) {
            this.f8201a.b(x4.f10516j, str);
        }
        this.f8202b = str;
        this.f8201a.u().b(str, a());
    }

    public static String a(com.applovin.impl.sdk.k kVar) {
        x4 x4Var = x4.f10521o;
        String str = (String) kVar.a(x4Var);
        if (TextUtils.isEmpty(str)) {
            String valueOf = String.valueOf(((int) (Math.random() * 100.0d)) + 1);
            kVar.b(x4Var, valueOf);
            return valueOf;
        }
        return str;
    }
}
