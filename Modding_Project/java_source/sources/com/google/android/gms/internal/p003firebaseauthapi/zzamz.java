package com.google.android.gms.internal.p003firebaseauthapi;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzamz  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzamz implements zzamk {
    private final zzamm zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzamz(zzamm zzammVar, String str, Object[] objArr) {
        this.zza = zzammVar;
        this.zzb = str;
        this.zzc = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.zzd = charAt;
            return;
        }
        int i10 = charAt & 8191;
        int i11 = 13;
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char charAt2 = str.charAt(i12);
            if (charAt2 >= 55296) {
                i10 |= (charAt2 & 8191) << i11;
                i11 += 13;
                i12 = i13;
            } else {
                this.zzd = i10 | (charAt2 << i11);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamk
    public final zzamm zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamk
    public final zzamy zzb() {
        int i10 = this.zzd;
        if ((i10 & 1) != 0) {
            return zzamy.PROTO2;
        }
        if ((i10 & 4) == 4) {
            return zzamy.EDITIONS;
        }
        return zzamy.PROTO3;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamk
    public final boolean zzc() {
        if ((this.zzd & 2) == 2) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzd() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] zze() {
        return this.zzc;
    }
}
