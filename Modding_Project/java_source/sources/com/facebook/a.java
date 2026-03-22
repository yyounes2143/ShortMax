package com.facebook;

import android.content.SharedPreferences;
import android.os.Bundle;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AccessTokenCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final C0248a f14879d = new C0248a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f14880a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final b f14881b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private c0 f14882c;

    /* compiled from: AccessTokenCache.kt */
    @Metadata
    /* renamed from: com.facebook.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0248a {
        public /* synthetic */ C0248a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0248a() {
        }
    }

    /* compiled from: AccessTokenCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        @NotNull
        public final c0 a() {
            return new c0(v.l(), null, 2, null);
        }
    }

    public a(@NotNull SharedPreferences sharedPreferences, @NotNull b tokenCachingStrategyFactory) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        Intrinsics.checkNotNullParameter(tokenCachingStrategyFactory, "tokenCachingStrategyFactory");
        this.f14880a = sharedPreferences;
        this.f14881b = tokenCachingStrategyFactory;
    }

    private final AccessToken b() {
        String string = this.f14880a.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
        if (string == null) {
            return null;
        }
        try {
            return AccessToken.f14731l.b(new JSONObject(string));
        } catch (JSONException unused) {
            return null;
        }
    }

    private final AccessToken c() {
        Bundle c10 = d().c();
        if (c10 != null && c0.f15224c.g(c10)) {
            return AccessToken.f14731l.c(c10);
        }
        return null;
    }

    private final c0 d() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            if (this.f14882c == null) {
                synchronized (this) {
                    if (this.f14882c == null) {
                        this.f14882c = this.f14881b.a();
                    }
                    Unit unit = Unit.f60915a;
                }
            }
            c0 c0Var = this.f14882c;
            if (c0Var != null) {
                return c0Var;
            }
            throw new IllegalStateException("Required value was null.");
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final boolean e() {
        return this.f14880a.contains("com.facebook.AccessTokenManager.CachedAccessToken");
    }

    private final boolean h() {
        return v.H();
    }

    public final void a() {
        this.f14880a.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
        if (h()) {
            d().a();
        }
    }

    @Nullable
    public final AccessToken f() {
        if (e()) {
            return b();
        }
        if (h()) {
            AccessToken c10 = c();
            if (c10 != null) {
                g(c10);
                d().a();
                return c10;
            }
            return c10;
        }
        return null;
    }

    public final void g(@NotNull AccessToken accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        try {
            this.f14880a.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", accessToken.w().toString()).apply();
        } catch (JSONException unused) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a() {
        /*
            r3 = this;
            android.content.Context r0 = com.facebook.v.l()
            java.lang.String r1 = "com.facebook.AccessTokenManager.SharedPreferences"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            java.lang.String r1 = "getApplicationContext()\n…ME, Context.MODE_PRIVATE)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            com.facebook.a$b r1 = new com.facebook.a$b
            r1.<init>()
            r3.<init>(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.a.<init>():void");
    }
}
