package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzku implements Runnable {
    final /* synthetic */ zzjl zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ boolean zzc;
    final /* synthetic */ zzlj zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzku(zzlj zzljVar, zzjl zzjlVar, long j10, boolean z10) {
        this.zza = zzjlVar;
        this.zzb = j10;
        this.zzc = z10;
        Objects.requireNonNull(zzljVar);
        this.zzd = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.zzd;
        zzjl zzjlVar = this.zza;
        zzljVar.zzA(zzjlVar);
        zzljVar.zzak(zzjlVar, this.zzb, true, this.zzc);
    }
}
