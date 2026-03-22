package com.google.firebase.crashlytics.internal.common;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FirebaseInstallationId.kt */
@Metadata
/* loaded from: classes5.dex */
public final class h0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f20731a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f20732b;

    public h0(@Nullable String str, @Nullable String str2) {
        this.f20731a = str;
        this.f20732b = str2;
    }

    @Nullable
    public final String a() {
        return this.f20732b;
    }

    @Nullable
    public final String b() {
        return this.f20731a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h0)) {
            return false;
        }
        h0 h0Var = (h0) obj;
        if (Intrinsics.areEqual(this.f20731a, h0Var.f20731a) && Intrinsics.areEqual(this.f20732b, h0Var.f20732b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f20731a;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        String str2 = this.f20732b;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "FirebaseInstallationId(fid=" + this.f20731a + ", authToken=" + this.f20732b + ')';
    }
}
