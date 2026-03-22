package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgpy implements zzgow {
    private static final zzgpy zza = new zzgpy();

    private zzgpy() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzc() throws GeneralSecurityException {
        zzgnv.zza().zzd(zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgow
    public final Class zza() {
        return zzgpv.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgow
    public final Class zzb() {
        return zzgpv.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgow
    public final /* bridge */ /* synthetic */ Object zze(zzgmy zzgmyVar, zzgnh zzgnhVar, zzgor zzgorVar) throws GeneralSecurityException {
        zzgxe zzc;
        zzgfg zzc2 = ((zzgfi) zzgmyVar).zzc();
        zzgoj zzgojVar = new zzgoj();
        for (int i10 = 0; i10 < zzgmyVar.zza(); i10++) {
            zzgfg zzb = ((zzgfi) zzgmyVar).zzb(i10);
            if (zzb.zzc().equals(zzgfb.zza)) {
                zzgpv zzgpvVar = (zzgpv) zzgorVar.zza(zzb);
                zzgez zzb2 = zzb.zzb();
                if (zzb2 instanceof zzgqn) {
                    zzc = ((zzgqn) zzb2).zzd();
                } else if (zzb2 instanceof zzgnd) {
                    zzc = ((zzgnd) zzb2).zzc();
                } else {
                    String name = zzb2.getClass().getName();
                    String valueOf = String.valueOf(zzb2.zza());
                    throw new GeneralSecurityException("Cannot get output prefix for key of class " + name + " with parameters " + valueOf);
                }
                zzgojVar.zza(zzc, zzgpvVar);
            }
        }
        return new zzgpw(zzgojVar.zzb(), (zzgpv) zzgorVar.zza(zzc2), null);
    }
}
