package com.facebook;

import android.content.SharedPreferences;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
/* compiled from: AuthenticationTokenCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class h {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f15568b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f15569a;

    /* compiled from: AuthenticationTokenCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public h(@NotNull SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        this.f15569a = sharedPreferences;
    }

    public final void a() {
        this.f15569a.edit().remove("com.facebook.AuthenticationManager.CachedAuthenticationToken").apply();
    }

    public final void b(@NotNull AuthenticationToken authenticationToken) {
        Intrinsics.checkNotNullParameter(authenticationToken, "authenticationToken");
        try {
            this.f15569a.edit().putString("com.facebook.AuthenticationManager.CachedAuthenticationToken", authenticationToken.b().toString()).apply();
        } catch (JSONException unused) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public h() {
        /*
            r3 = this;
            android.content.Context r0 = com.facebook.v.l()
            java.lang.String r1 = "com.facebook.AuthenticationTokenManager.SharedPreferences"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            java.lang.String r1 = "getApplicationContext()\n…ME, Context.MODE_PRIVATE)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r3.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.h.<init>():void");
    }
}
