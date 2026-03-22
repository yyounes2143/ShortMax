package com.facebook.login;

import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoginResult.kt */
@Metadata
/* loaded from: classes3.dex */
public final class r {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final AccessToken f16609a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final AuthenticationToken f16610b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f16611c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Set<String> f16612d;

    public r(@NotNull AccessToken accessToken, @Nullable AuthenticationToken authenticationToken, @NotNull Set<String> recentlyGrantedPermissions, @NotNull Set<String> recentlyDeniedPermissions) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(recentlyGrantedPermissions, "recentlyGrantedPermissions");
        Intrinsics.checkNotNullParameter(recentlyDeniedPermissions, "recentlyDeniedPermissions");
        this.f16609a = accessToken;
        this.f16610b = authenticationToken;
        this.f16611c = recentlyGrantedPermissions;
        this.f16612d = recentlyDeniedPermissions;
    }

    @NotNull
    public final AccessToken a() {
        return this.f16609a;
    }

    @NotNull
    public final Set<String> b() {
        return this.f16611c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        if (Intrinsics.areEqual(this.f16609a, rVar.f16609a) && Intrinsics.areEqual(this.f16610b, rVar.f16610b) && Intrinsics.areEqual(this.f16611c, rVar.f16611c) && Intrinsics.areEqual(this.f16612d, rVar.f16612d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f16609a.hashCode() * 31;
        AuthenticationToken authenticationToken = this.f16610b;
        if (authenticationToken == null) {
            hashCode = 0;
        } else {
            hashCode = authenticationToken.hashCode();
        }
        return ((((hashCode2 + hashCode) * 31) + this.f16611c.hashCode()) * 31) + this.f16612d.hashCode();
    }

    @NotNull
    public String toString() {
        return "LoginResult(accessToken=" + this.f16609a + ", authenticationToken=" + this.f16610b + ", recentlyGrantedPermissions=" + this.f16611c + ", recentlyDeniedPermissions=" + this.f16612d + ')';
    }
}
