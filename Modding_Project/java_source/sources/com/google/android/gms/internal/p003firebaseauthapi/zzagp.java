package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzagp  reason: invalid package */
/* loaded from: classes4.dex */
final class zzagp extends zzaid {
    @Nullable
    private final String zza;
    @Nullable
    private final String zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagp(@Nullable String str, @Nullable String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzaid) {
            zzaid zzaidVar = (zzaid) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzaidVar.zzb()) : zzaidVar.zzb() == null) {
                String str2 = this.zzb;
                if (str2 != null ? str2.equals(zzaidVar.zza()) : zzaidVar.zza() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        String str = this.zza;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode ^ 1000003) * 1000003;
        String str2 = this.zzb;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return i11 ^ i10;
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        return "RecaptchaEnforcementState{provider=" + str + ", enforcementState=" + str2 + "}";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaid
    @Nullable
    final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaid
    @Nullable
    final String zzb() {
        return this.zza;
    }
}
