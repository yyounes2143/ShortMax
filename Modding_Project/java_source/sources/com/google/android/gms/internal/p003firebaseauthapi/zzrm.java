package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzrm  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzrm implements zzpz<zzcc, zzcc> {
    private static final zzrm zza = new zzrm();
    private static final zzps<zzof, zzcc> zzb = zzps.zza(new zzpu() { // from class: com.google.android.gms.internal.firebase-auth-api.zzrp
        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpu
        public final Object zza(zzbi zzbiVar) {
            return zzsm.zza((zzof) zzbiVar);
        }
    }, zzof.class, zzcc.class);

    zzrm() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzc() throws GeneralSecurityException {
        zzpa.zza().zza(zza);
        zzpa.zza().zza(zzb);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpz
    public final Class<zzcc> zza() {
        return zzcc.class;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpz
    public final Class<zzcc> zzb() {
        return zzcc.class;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpz
    public final /* synthetic */ zzcc zza(zzob zzobVar, zzok zzokVar, zzqc<zzcc> zzqcVar) throws GeneralSecurityException {
        zzoo zzooVar;
        zzoo zzooVar2;
        zzaaj zzc;
        zzpn zzpnVar = new zzpn();
        for (int i10 = 0; i10 < zzobVar.zza(); i10++) {
            zzoa zza2 = zzobVar.zza(i10);
            if (zza2.zzc().equals(zzbk.zza)) {
                zzcc zza3 = zzqcVar.zza(zza2);
                zzbi zzb2 = zza2.zzb();
                if (zzb2 instanceof zzrk) {
                    zzc = ((zzrk) zzb2).zze();
                } else if (zzb2 instanceof zzof) {
                    zzc = ((zzof) zzb2).zzc();
                } else {
                    String name = zzb2.getClass().getName();
                    String valueOf = String.valueOf(zzb2.zza());
                    throw new GeneralSecurityException("Cannot get output prefix for key of class " + name + " with parameters " + valueOf);
                }
                zzpnVar.zza(zzc, new zzro(zza3, zza2.zza()));
            }
        }
        if (!zzokVar.zza()) {
            zzol zza4 = zzow.zzb().zza();
            zzoo zza5 = zza4.zza(zzobVar, zzokVar, "mac", "compute");
            zzooVar2 = zza4.zza(zzobVar, zzokVar, "mac", "verify");
            zzooVar = zza5;
        } else {
            zzooVar = zzon.zza;
            zzooVar2 = zzooVar;
        }
        return new zzrr(new zzro(zzqcVar.zza(zzobVar.zzc()), zzobVar.zzc().zza()), zzpnVar.zza(), zzooVar, zzooVar2);
    }
}
