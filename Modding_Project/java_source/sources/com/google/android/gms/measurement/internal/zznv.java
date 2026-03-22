package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
final class zznv implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzoc zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zznv(zzoc zzocVar, long j10) {
        this.zza = j10;
        Objects.requireNonNull(zzocVar);
        this.zzb = zzocVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzl(this.zza);
    }
}
