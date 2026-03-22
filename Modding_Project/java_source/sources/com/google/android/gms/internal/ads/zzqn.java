package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzqn extends Exception {
    public final int zza;
    public final boolean zzb;
    public final zzz zzc;

    public zzqn(int i10, zzz zzzVar, boolean z10) {
        super("AudioTrack write failed: " + i10);
        this.zzb = z10;
        this.zza = i10;
        this.zzc = zzzVar;
    }
}
