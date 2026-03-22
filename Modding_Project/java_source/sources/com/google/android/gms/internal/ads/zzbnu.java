package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbnu implements zzbkf {
    final /* synthetic */ zzbnd zza;
    final /* synthetic */ com.google.android.gms.ads.internal.util.zzby zzb;
    final /* synthetic */ zzboi zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbnu(zzboi zzboiVar, zzavu zzavuVar, zzbnd zzbndVar, com.google.android.gms.ads.internal.util.zzby zzbyVar) {
        this.zza = zzbndVar;
        this.zzb = zzbyVar;
        Objects.requireNonNull(zzboiVar);
        this.zzc = zzboiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        Object obj2;
        int i10;
        zzboj zzbojVar = (zzboj) obj;
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /requestReload handler: Trying to acquire lock");
        zzboi zzboiVar = this.zzc;
        obj2 = zzboiVar.zza;
        synchronized (obj2) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /requestReload handler: Lock acquired");
                com.google.android.gms.ads.internal.util.client.zzo.zzi("JS Engine is requesting an update");
                i10 = zzboiVar.zzi;
                if (i10 == 0) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Starting reload.");
                    zzboiVar.zzi = 2;
                    zzboiVar.zzd(null);
                }
                this.zza.zzr("/requestReload", (zzbkf) this.zzb.zza());
            } catch (Throwable th2) {
                throw th2;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /requestReload handler: Lock released");
    }
}
