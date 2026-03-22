package com.google.android.gms.measurement.internal;

import android.util.Log;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzgr implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Object zzc;
    final /* synthetic */ Object zzd;
    final /* synthetic */ Object zze;
    final /* synthetic */ zzgu zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgr(zzgu zzguVar, int i10, String str, Object obj, Object obj2, Object obj3) {
        this.zza = i10;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
        Objects.requireNonNull(zzguVar);
        this.zzf = zzguVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgu zzguVar = this.zzf;
        zzhh zzd = zzguVar.zzu.zzd();
        if (zzd.zzv()) {
            if (zzguVar.zzr() == 0) {
                zzic zzicVar = zzguVar.zzu;
                if (zzicVar.zzc().zzj()) {
                    zzicVar.zzaU();
                    zzguVar.zzs('C');
                } else {
                    zzicVar.zzaU();
                    zzguVar.zzs('c');
                }
            }
            if (zzguVar.zzt() < 0) {
                zzguVar.zzu.zzc().zzi();
                zzguVar.zzu(133005L);
            }
            int i10 = this.zza;
            char zzr = zzguVar.zzr();
            long zzt = zzguVar.zzt();
            String str = this.zzb;
            Object obj = this.zzc;
            Object obj2 = this.zzd;
            Object obj3 = this.zze;
            char charAt = "01VDIWEA?".charAt(i10);
            String zzo = zzgu.zzo(true, str, obj, obj2, obj3);
            int length = String.valueOf(charAt).length();
            StringBuilder sb2 = new StringBuilder(length + 1 + String.valueOf(zzr).length() + String.valueOf(zzt).length() + 1 + zzo.length());
            sb2.append("2");
            sb2.append(charAt);
            sb2.append(zzr);
            sb2.append(zzt);
            sb2.append(":");
            sb2.append(zzo);
            String sb3 = sb2.toString();
            if (sb3.length() > 1024) {
                sb3 = str.substring(0, 1024);
            }
            zzhf zzhfVar = zzd.zzb;
            if (zzhfVar != null) {
                zzhfVar.zza(sb3, 1L);
                return;
            }
            return;
        }
        Log.println(6, zzguVar.zzn(), "Persisted config not initialized. Not logging error/warn");
    }
}
