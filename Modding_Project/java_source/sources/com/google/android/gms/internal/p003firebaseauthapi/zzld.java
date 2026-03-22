package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzld  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzld implements zzpz<zzbg, zzbg> {
    private static final zzld zza = new zzld();
    private static final zzps<zzof, zzbg> zzb = zzps.zza(new zzpu() { // from class: com.google.android.gms.internal.firebase-auth-api.zzlc
        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpu
        public final Object zza(zzbi zzbiVar) {
            return zzmp.zza((zzof) zzbiVar);
        }
    }, zzof.class, zzbg.class);

    zzld() {
    }

    public static void zzc() throws GeneralSecurityException {
        zzpa.zza().zza(zza);
        zzpa.zza().zza(zzb);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpz
    public final Class<zzbg> zza() {
        return zzbg.class;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpz
    public final Class<zzbg> zzb() {
        return zzbg.class;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpz
    public final /* synthetic */ zzbg zza(zzob zzobVar, zzok zzokVar, zzqc<zzbg> zzqcVar) throws GeneralSecurityException {
        zzoo zzooVar;
        if (!zzokVar.zza()) {
            zzooVar = zzow.zzb().zza().zza(zzobVar, zzokVar, "hybrid_encrypt", "encrypt");
        } else {
            zzooVar = zzon.zza;
        }
        zzoa zzc = zzobVar.zzc();
        return new zzle(new zzlf(zzqcVar.zza(zzc), zzc.zza()), zzooVar);
    }

    public static void zza(zzpy zzpyVar) throws GeneralSecurityException {
        zzpyVar.zza(zza);
    }
}
