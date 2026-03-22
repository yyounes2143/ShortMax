package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzqz  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzqz implements zzpz<zzqw, zzqw> {
    private static final zzqz zza = new zzqz();

    private zzqz() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzc() throws GeneralSecurityException {
        zzpa.zza().zza(zza);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpz
    public final Class<zzqw> zza() {
        return zzqw.class;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpz
    public final Class<zzqw> zzb() {
        return zzqw.class;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpz
    public final /* synthetic */ zzqw zza(zzob zzobVar, zzok zzokVar, zzqc<zzqw> zzqcVar) throws GeneralSecurityException {
        zzaaj zzc;
        zzoa zzc2 = zzobVar.zzc();
        if (zzc2 != null) {
            zzpn zzpnVar = new zzpn();
            for (int i10 = 0; i10 < zzobVar.zza(); i10++) {
                zzoa zza2 = zzobVar.zza(i10);
                if (zza2.zzc().equals(zzbk.zza)) {
                    zzqw zza3 = zzqcVar.zza(zza2);
                    zzbi zzb = zza2.zzb();
                    if (zzb instanceof zzrk) {
                        zzc = ((zzrk) zzb).zze();
                    } else if (zzb instanceof zzof) {
                        zzc = ((zzof) zzb).zzc();
                    } else {
                        String name = zzb.getClass().getName();
                        String valueOf = String.valueOf(zzb.zza());
                        throw new GeneralSecurityException("Cannot get output prefix for key of class " + name + " with parameters " + valueOf);
                    }
                    zzpnVar.zza(zzc, zza3);
                }
            }
            return new zzqy(zzpnVar.zza(), zzqcVar.zza(zzc2));
        }
        throw new GeneralSecurityException("no primary in primitive set");
    }
}
