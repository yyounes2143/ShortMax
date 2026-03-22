package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzwx;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzoc  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzoc<P> extends zzod<P> implements zzcd<P> {
    /* JADX INFO: Access modifiers changed from: protected */
    public zzoc(String str, Class<P> cls, zzamv<? extends zzamm> zzamvVar) {
        super(str, cls, zzwx.zzb.ASYMMETRIC_PRIVATE, zzamvVar);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcd
    public final zzwx zzc(zzajv zzajvVar) throws GeneralSecurityException {
        zzbi zza = zzoz.zza().zza((zzoz) zzqb.zza(this.zza, zzajvVar, this.zzb, zzxz.RAW, null), zzbf.zza());
        if (zza instanceof zzce) {
            zzqb zzqbVar = (zzqb) zzoz.zza().zza(((zzce) zza).zzc(), zzqb.class, zzbf.zza());
            return (zzwx) ((zzalf) zzwx.zza().zza(zzqbVar.zzf()).zza(zzqbVar.zzd()).zza(zzqbVar.zza()).zze());
        }
        throw new GeneralSecurityException("Key not private key");
    }
}
