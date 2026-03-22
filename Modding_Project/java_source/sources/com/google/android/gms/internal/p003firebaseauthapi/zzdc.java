package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzdc  reason: invalid package */
/* loaded from: classes4.dex */
final class zzdc implements zzba {
    private final zzcz zza;
    private final zzpl<zzcz> zzb;
    private final zzoo zzc;
    private final zzoo zzd;

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzba
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        for (zzcz zzczVar : this.zzb.zza(bArr)) {
            try {
                byte[] zza = zzczVar.zza.zza(bArr, bArr2);
                this.zzd.zza(zzczVar.zzb, bArr.length);
                return zza;
            } catch (GeneralSecurityException unused) {
            }
        }
        this.zzd.zza();
        throw new GeneralSecurityException("decryption failed");
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzba
    public final byte[] zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            byte[] zzb = this.zza.zza.zzb(bArr, bArr2);
            this.zzc.zza(this.zza.zzb, bArr.length);
            return zzb;
        } catch (GeneralSecurityException e10) {
            this.zzc.zza();
            throw e10;
        }
    }

    private zzdc(zzcz zzczVar, zzpl<zzcz> zzplVar, zzoo zzooVar, zzoo zzooVar2) {
        this.zza = zzczVar;
        this.zzb = zzplVar;
        this.zzc = zzooVar;
        this.zzd = zzooVar2;
    }
}
