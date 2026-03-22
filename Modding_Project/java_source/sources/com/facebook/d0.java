package com.facebook;

import android.content.SharedPreferences;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ProfileCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class d0 {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f15332b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f15333a;

    /* compiled from: ProfileCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public d0() {
        SharedPreferences sharedPreferences = v.l().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getApplicationContext()\n…ME, Context.MODE_PRIVATE)");
        this.f15333a = sharedPreferences;
    }

    public final void a() {
        this.f15333a.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
    }

    @Nullable
    public final Profile b() {
        String string = this.f15333a.getString("com.facebook.ProfileManager.CachedProfile", null);
        if (string != null) {
            try {
                return new Profile(new JSONObject(string));
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public final void c(@NotNull Profile profile) {
        Intrinsics.checkNotNullParameter(profile, "profile");
        JSONObject e10 = profile.e();
        if (e10 != null) {
            this.f15333a.edit().putString("com.facebook.ProfileManager.CachedProfile", e10.toString()).apply();
        }
    }
}
