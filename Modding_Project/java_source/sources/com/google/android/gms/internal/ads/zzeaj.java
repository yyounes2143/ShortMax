package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeaj {
    private final zzbvk zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeaj(zzbvk zzbvkVar) {
        this.zza = zzbvkVar;
    }

    public final void zza() {
        com.google.common.util.concurrent.e zza = this.zza.zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzia)).booleanValue()) {
            zzcai.zzb(zza, "persistFlags");
        } else {
            zzcai.zza(zza, "persistFlags");
        }
    }
}
