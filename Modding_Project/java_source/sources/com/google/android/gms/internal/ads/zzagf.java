package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
abstract class zzagf {
    protected final zzafb zza;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzagf(zzafb zzafbVar) {
        this.zza = zzafbVar;
    }

    protected abstract boolean zza(zzen zzenVar) throws zzaz;

    protected abstract boolean zzb(zzen zzenVar, long j10) throws zzaz;

    public final boolean zzf(zzen zzenVar, long j10) throws zzaz {
        if (zza(zzenVar) && zzb(zzenVar, j10)) {
            return true;
        }
        return false;
    }
}
