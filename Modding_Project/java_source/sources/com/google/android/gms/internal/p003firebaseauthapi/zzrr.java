package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzrr  reason: invalid package */
/* loaded from: classes4.dex */
final class zzrr implements zzcc {
    private final zzro zza;
    private final zzpl<zzro> zzb;
    private final zzoo zzc;
    private final zzoo zzd;

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcc
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        for (zzro zzroVar : this.zzb.zza(bArr)) {
            try {
                zzroVar.zza.zza(bArr, bArr2);
                this.zzd.zza(zzroVar.zzb, bArr2.length);
                return;
            } catch (GeneralSecurityException unused) {
            }
        }
        this.zzd.zza();
        throw new GeneralSecurityException("invalid MAC");
    }

    private zzrr(zzro zzroVar, zzpl<zzro> zzplVar, zzoo zzooVar, zzoo zzooVar2) {
        this.zza = zzroVar;
        this.zzb = zzplVar;
        this.zzc = zzooVar;
        this.zzd = zzooVar2;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcc
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        try {
            byte[] zza = this.zza.zza.zza(bArr);
            this.zzc.zza(this.zza.zzb, bArr.length);
            return zza;
        } catch (GeneralSecurityException e10) {
            this.zzc.zza();
            throw e10;
        }
    }
}
