package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzlm  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzlm implements zzlr {
    private final zzdi zza;
    private final int zzb;

    public zzlm(zzdi zzdiVar) {
        this.zza = zzdiVar;
        this.zzb = zzdiVar.zzb() + zzdiVar.zzc();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzlr
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzlr
    public final byte[] zza(byte[] bArr, byte[] bArr2, int i10) throws GeneralSecurityException {
        byte[] bArr3;
        if (bArr2.length >= i10) {
            byte[] copyOfRange = Arrays.copyOfRange(bArr2, i10, bArr2.length);
            zzba zza = zzzk.zza(zzdd.zze().zza(this.zza).zza(zzaal.zza(Arrays.copyOf(bArr, this.zza.zzb()), zzbf.zza())).zzb(zzaal.zza(Arrays.copyOfRange(bArr, this.zza.zzb(), this.zza.zzb() + this.zza.zzc()), zzbf.zza())).zza());
            bArr3 = zzln.zza;
            return zza.zza(copyOfRange, bArr3);
        }
        throw new GeneralSecurityException("ciphertext too short");
    }
}
