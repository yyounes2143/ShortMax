package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzrj implements zzqr {
    final /* synthetic */ zzro zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzrj(zzro zzroVar, zzrn zzrnVar) {
        Objects.requireNonNull(zzroVar);
        this.zza = zzroVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqr
    public final void zza(long j10) {
        zzea.zzf("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j10);
    }

    @Override // com.google.android.gms.internal.ads.zzqr
    public final void zzb(long j10) {
        zzql zzqlVar;
        zzql zzqlVar2;
        zzqg zzqgVar;
        zzro zzroVar = this.zza;
        zzqlVar = zzroVar.zzq;
        if (zzqlVar != null) {
            zzqlVar2 = zzroVar.zzq;
            zzqgVar = ((zzrs) zzqlVar2).zza.zzc;
            zzqgVar.zzx(j10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqr
    public final void zzc(long j10, long j11, long j12, long j13) {
        long zzN;
        long zzO;
        zzro zzroVar = this.zza;
        zzN = zzroVar.zzN();
        zzO = zzroVar.zzO();
        zzea.zzf("DefaultAudioSink", "Spurious audio timestamp (frame position mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + zzN + ", " + zzO);
    }

    @Override // com.google.android.gms.internal.ads.zzqr
    public final void zzd(long j10, long j11, long j12, long j13) {
        long zzN;
        long zzO;
        zzro zzroVar = this.zza;
        zzN = zzroVar.zzN();
        zzO = zzroVar.zzO();
        zzea.zzf("DefaultAudioSink", "Spurious audio timestamp (system clock mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + zzN + ", " + zzO);
    }

    @Override // com.google.android.gms.internal.ads.zzqr
    public final void zze(int i10, long j10) {
        zzql zzqlVar;
        long j11;
        zzql zzqlVar2;
        zzqg zzqgVar;
        zzro zzroVar = this.zza;
        zzqlVar = zzroVar.zzq;
        if (zzqlVar != null) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            j11 = zzroVar.zzW;
            zzqlVar2 = zzroVar.zzq;
            zzqgVar = ((zzrs) zzqlVar2).zza.zzc;
            zzqgVar.zzz(i10, j10, elapsedRealtime - j11);
        }
    }
}
