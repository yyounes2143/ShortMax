package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgno {
    public static final /* synthetic */ int zza = 0;
    private static final zzgnn zzb = new zzgnn() { // from class: com.google.android.gms.internal.ads.zzgnm
        @Override // com.google.android.gms.internal.ads.zzgnn
        public final zzgez zza(zzgfm zzgfmVar, Integer num) {
            int i10 = zzgno.zza;
            zzguf zzc2 = ((zzgne) zzgfmVar).zzb().zzc();
            zzgfa zzb2 = zzgmp.zzc().zzb(zzc2.zzi());
            if (zzgmp.zzc().zze(zzc2.zzi())) {
                zzgub zza2 = zzb2.zza(zzc2.zzh());
                return new zzgnd(zzgox.zza(zza2.zzg(), zza2.zzf(), zza2.zzb(), zzc2.zzg(), num), zzgey.zza());
            }
            throw new GeneralSecurityException("Creating new keys is not allowed.");
        }
    };
    private static final zzgno zzc = zze();
    private final Map zzd = new HashMap();

    public static zzgno zzb() {
        return zzc;
    }

    private final synchronized zzgez zzd(zzgfm zzgfmVar, Integer num) throws GeneralSecurityException {
        zzgnn zzgnnVar;
        zzgnnVar = (zzgnn) this.zzd.get(zzgfmVar.getClass());
        if (zzgnnVar != null) {
        } else {
            String obj = zzgfmVar.toString();
            throw new GeneralSecurityException("Cannot create a new key for parameters " + obj + ": no key creator for this class was registered.");
        }
        return zzgnnVar.zza(zzgfmVar, num);
    }

    private static zzgno zze() {
        zzgno zzgnoVar = new zzgno();
        try {
            zzgnoVar.zzc(zzb, zzgne.class);
            return zzgnoVar;
        } catch (GeneralSecurityException e10) {
            throw new IllegalStateException("unexpected error.", e10);
        }
    }

    public final zzgez zza(zzgfm zzgfmVar, Integer num) throws GeneralSecurityException {
        return zzd(zzgfmVar, num);
    }

    public final synchronized void zzc(zzgnn zzgnnVar, Class cls) throws GeneralSecurityException {
        try {
            Map map = this.zzd;
            zzgnn zzgnnVar2 = (zzgnn) map.get(cls);
            if (zzgnnVar2 != null && !zzgnnVar2.equals(zzgnnVar)) {
                String obj = cls.toString();
                throw new GeneralSecurityException("Different key creator for parameters class " + obj + " already inserted");
            }
            map.put(cls, zzgnnVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
