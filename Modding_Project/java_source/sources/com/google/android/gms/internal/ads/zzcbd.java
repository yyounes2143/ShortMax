package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcbd implements Runnable {
    final /* synthetic */ zzcbf zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcbd(zzcbf zzcbfVar) {
        Objects.requireNonNull(zzcbfVar);
        this.zza = zzcbfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcbg zzcbgVar;
        boolean z10;
        zzcbg zzcbgVar2;
        zzcbg zzcbgVar3;
        zzcbf zzcbfVar = this.zza;
        zzcbgVar = zzcbfVar.zzr;
        if (zzcbgVar != null) {
            z10 = zzcbfVar.zzs;
            if (!z10) {
                zzcbgVar3 = zzcbfVar.zzr;
                zzcbgVar3.zzg();
                zzcbfVar.zzs = true;
            }
            zzcbgVar2 = zzcbfVar.zzr;
            zzcbgVar2.zze();
        }
    }
}
