package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
@WorkerThread
/* loaded from: classes5.dex */
final class zzgx implements Runnable {
    private final zzgw zza;
    private final int zzb;
    private final Throwable zzc;
    private final byte[] zzd;
    private final String zze;
    private final Map zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgx(String str, zzgw zzgwVar, int i10, Throwable th2, byte[] bArr, Map map, byte[] bArr2) {
        Preconditions.checkNotNull(zzgwVar);
        this.zza = zzgwVar;
        this.zzb = i10;
        this.zzc = th2;
        this.zzd = bArr;
        this.zze = str;
        this.zzf = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zza(this.zze, this.zzb, this.zzc, this.zzd, this.zzf);
    }
}
