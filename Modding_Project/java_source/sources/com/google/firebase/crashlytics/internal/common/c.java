package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.common.j0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_InstallIdProvider_InstallIds.java */
/* loaded from: classes5.dex */
public final class c extends j0.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f20693a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20694b;

    /* renamed from: c  reason: collision with root package name */
    private final String f20695c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, @Nullable String str2, @Nullable String str3) {
        if (str != null) {
            this.f20693a = str;
            this.f20694b = str2;
            this.f20695c = str3;
            return;
        }
        throw new NullPointerException("Null crashlyticsInstallId");
    }

    @Override // com.google.firebase.crashlytics.internal.common.j0.a
    @NonNull
    public String c() {
        return this.f20693a;
    }

    @Override // com.google.firebase.crashlytics.internal.common.j0.a
    @Nullable
    public String d() {
        return this.f20695c;
    }

    @Override // com.google.firebase.crashlytics.internal.common.j0.a
    @Nullable
    public String e() {
        return this.f20694b;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j0.a)) {
            return false;
        }
        j0.a aVar = (j0.a) obj;
        if (this.f20693a.equals(aVar.c()) && ((str = this.f20694b) != null ? str.equals(aVar.e()) : aVar.e() == null)) {
            String str2 = this.f20695c;
            if (str2 == null) {
                if (aVar.d() == null) {
                    return true;
                }
            } else if (str2.equals(aVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (this.f20693a.hashCode() ^ 1000003) * 1000003;
        String str = this.f20694b;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode2 ^ hashCode) * 1000003;
        String str2 = this.f20695c;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return i11 ^ i10;
    }

    public String toString() {
        return "InstallIds{crashlyticsInstallId=" + this.f20693a + ", firebaseInstallationId=" + this.f20694b + ", firebaseAuthenticationToken=" + this.f20695c + "}";
    }
}
