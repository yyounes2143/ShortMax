package com.google.android.gms.internal.ads;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzqp {
    private final AudioTrack zza;
    private final AudioTimestamp zzb = new AudioTimestamp();
    private long zzc;
    private long zzd;
    private long zze;
    private long zzf;

    public zzqp(AudioTrack audioTrack) {
        this.zza = audioTrack;
    }

    public final long zza() {
        return this.zze;
    }

    public final long zzb() {
        return this.zzb.nanoTime / 1000;
    }

    public final boolean zzc() {
        AudioTrack audioTrack = this.zza;
        AudioTimestamp audioTimestamp = this.zzb;
        boolean timestamp = audioTrack.getTimestamp(audioTimestamp);
        if (timestamp) {
            long j10 = audioTimestamp.framePosition;
            if (this.zzd > j10) {
                this.zzc++;
            }
            this.zzd = j10;
            this.zze = j10 + this.zzf + (this.zzc << 32);
        }
        return timestamp;
    }
}
