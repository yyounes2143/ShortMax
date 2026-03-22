package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfsi extends zzgcb {
    Object zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfsi(Object obj, Runnable runnable) {
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public final String zza() {
        Object obj = this.zza;
        if (obj == null) {
            return "";
        }
        return obj.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    protected final void zzb() {
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public final boolean zzc(Object obj) {
        return super.zzc(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public final boolean zzd(Throwable th2) {
        return super.zzd(th2);
    }
}
