package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes5.dex */
public final class zznd implements zzny {
    private static final zznk zzb = new zznb();
    private final zznk zza;

    public zznd() {
        zzma zza = zzma.zza();
        int i10 = zznu.zza;
        zznc zzncVar = new zznc(zza, zzb);
        byte[] bArr = zzmp.zzb;
        this.zza = zzncVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzny
    public final zznx zza(Class cls) {
        zzls zzlsVar;
        int i10 = zznz.zza;
        if (!zzmf.class.isAssignableFrom(cls)) {
            int i11 = zznu.zza;
        }
        zznj zzc = this.zza.zzc(cls);
        if (!zzc.zza()) {
            int i12 = zznu.zza;
            zznr zza = zzns.zza();
            zzmy zza2 = zzmz.zza();
            zzoi zzA = zznz.zzA();
            if (zzc.zzc() - 1 != 1) {
                zzlsVar = zzlu.zza();
            } else {
                zzlsVar = null;
            }
            return zznp.zzl(cls, zzc, zza, zza2, zzA, zzlsVar, zzni.zza());
        }
        int i13 = zznu.zza;
        return zznq.zzg(zznz.zzA(), zzlu.zza(), zzc.zzb());
    }
}
