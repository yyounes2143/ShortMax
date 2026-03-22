package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzqu;
import com.google.android.gms.internal.p003firebaseauthapi.zzrh;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaag  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaag implements zzcc {
    private static final byte[] zza = {0};
    private final zzsq zzb;
    private final int zzc;
    private final byte[] zzd;
    private final byte[] zze;

    private zzaag(zzqp zzqpVar) throws GeneralSecurityException {
        this.zzb = zzzz.zza(zzso.zza(zzsr.zza(((zzqu) ((zzrn) zzqpVar.zza())).zzc()), zzqpVar.zzf()));
        this.zzc = ((zzqu) ((zzrn) zzqpVar.zza())).zzb();
        this.zzd = zzqpVar.zze().zzb();
        if (((zzqu) ((zzrn) zzqpVar.zza())).zze().equals(zzqu.zza.zzc)) {
            byte[] bArr = zza;
            this.zze = Arrays.copyOf(bArr, bArr.length);
            return;
        }
        this.zze = new byte[0];
    }

    public static zzcc zza(zzqp zzqpVar) throws GeneralSecurityException {
        return new zzaag(zzqpVar);
    }

    public static zzcc zza(zzra zzraVar) throws GeneralSecurityException {
        return new zzaag(zzraVar);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcc
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (!MessageDigest.isEqual(zza(bArr2), bArr)) {
            throw new GeneralSecurityException("invalid MAC");
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcc
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        byte[] bArr2 = this.zze;
        if (bArr2.length > 0) {
            return zzyz.zza(this.zzd, this.zzb.zza(zzyz.zza(bArr, bArr2), this.zzc));
        }
        return zzyz.zza(this.zzd, this.zzb.zza(bArr, this.zzc));
    }

    private zzaag(zzra zzraVar) throws GeneralSecurityException {
        String valueOf = String.valueOf(((zzrh) ((zzrn) zzraVar.zza())).zze());
        this.zzb = new zzaae("HMAC" + valueOf, new SecretKeySpec(zzraVar.zzf().zza(zzbf.zza()), "HMAC"));
        this.zzc = ((zzrh) ((zzrn) zzraVar.zza())).zzb();
        this.zzd = zzraVar.zze().zzb();
        if (((zzrh) ((zzrn) zzraVar.zza())).zzf().equals(zzrh.zzc.zzc)) {
            byte[] bArr = zza;
            this.zze = Arrays.copyOf(bArr, bArr.length);
            return;
        }
        this.zze = new byte[0];
    }

    public zzaag(zzsq zzsqVar, int i10) throws GeneralSecurityException {
        this.zzb = zzsqVar;
        this.zzc = i10;
        this.zzd = new byte[0];
        this.zze = new byte[0];
        if (i10 >= 10) {
            zzsqVar.zza(new byte[0], i10);
            return;
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }
}
