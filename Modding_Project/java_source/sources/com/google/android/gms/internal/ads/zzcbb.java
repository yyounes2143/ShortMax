package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzcbb implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ zzcbf zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcbb(zzcbf zzcbfVar, int i10, int i11) {
        this.zza = i10;
        this.zzb = i11;
        Objects.requireNonNull(zzcbfVar);
        this.zzc = zzcbfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcbg zzcbgVar;
        zzcbg zzcbgVar2;
        zzcbf zzcbfVar = this.zzc;
        zzcbgVar = zzcbfVar.zzr;
        if (zzcbgVar != null) {
            int i10 = this.zza;
            int i11 = this.zzb;
            zzcbgVar2 = zzcbfVar.zzr;
            zzcbgVar2.zzj(i10, i11);
        }
    }
}
