package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzlo  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzlo implements zzlr {
    private final zzjf zza;
    private final int zzb;

    public zzlo(zzjf zzjfVar) {
        this.zza = zzjfVar;
        this.zzb = zzjfVar.zzb();
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
            zzbe zza = zzyx.zza(zzja.zzc().zza(this.zza).zza(zzaal.zza(bArr, zzbf.zza())).zza());
            bArr3 = zzln.zza;
            return zza.zza(copyOfRange, bArr3);
        }
        throw new GeneralSecurityException("ciphertext too short");
    }
}
