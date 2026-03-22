package com.applovin.impl;

import android.content.Context;
/* loaded from: classes2.dex */
public abstract class p0 {

    /* renamed from: a  reason: collision with root package name */
    private static final a f9187a = new a("Age Restricted User", x4.f10523q);

    /* renamed from: b  reason: collision with root package name */
    private static final a f9188b = new a("Has User Consent", x4.f10522p);

    /* renamed from: c  reason: collision with root package name */
    private static final a f9189c = new a("\"Do Not Sell\"", x4.f10524r);

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f9190a;

        /* renamed from: b  reason: collision with root package name */
        private final x4 f9191b;

        a(String str, x4 x4Var) {
            this.f9190a = str;
            this.f9191b = x4Var;
        }

        public Boolean b(Context context) {
            if (context == null) {
                com.applovin.impl.sdk.o.h("AppLovinSdk", "Failed to get value for key: " + this.f9191b);
                return null;
            }
            return (Boolean) y4.a(this.f9191b, (Object) null, context);
        }

        public String a() {
            return this.f9190a;
        }

        public String a(Context context) {
            Boolean b10 = b(context);
            return b10 != null ? b10.toString() : "No value set";
        }
    }

    public static a a() {
        return f9189c;
    }

    public static a b() {
        return f9188b;
    }

    public static a c() {
        return f9187a;
    }

    public static boolean a(boolean z10, Context context) {
        return a(x4.f10524r, Boolean.valueOf(z10), context);
    }

    public static boolean b(boolean z10, Context context) {
        return a(x4.f10522p, Boolean.valueOf(z10), context);
    }

    public static String a(Context context) {
        return a(f9188b, context) + a(f9189c, context);
    }

    private static boolean a(x4 x4Var, Boolean bool, Context context) {
        if (context == null) {
            com.applovin.impl.sdk.o.h("AppLovinSdk", "Failed to update compliance value for key: " + x4Var);
            return false;
        }
        try {
            Boolean bool2 = (Boolean) y4.a(x4Var, (Object) null, context);
            y4.b(x4Var, bool, context);
            return bool2 == null || bool2 != bool;
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("ComplianceManager", "Unable to update compliance", th2);
            com.applovin.impl.sdk.k kVar = com.applovin.impl.sdk.k.D0;
            if (kVar != null) {
                kVar.E().a("ComplianceManager", "updateCompliance", th2);
            }
            return false;
        }
    }

    private static String a(a aVar, Context context) {
        return "\n" + aVar.f9190a + " - " + aVar.a(context);
    }
}
