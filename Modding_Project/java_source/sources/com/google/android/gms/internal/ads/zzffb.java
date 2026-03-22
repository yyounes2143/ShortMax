package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzffb implements zzgdj {
    final /* synthetic */ zzffe zza;
    final /* synthetic */ zzfff zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzffb(zzfff zzfffVar, zzffe zzffeVar) {
        this.zza = zzffeVar;
        Objects.requireNonNull(zzfffVar);
        this.zzb = zzfffVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        zzfff zzfffVar = this.zzb;
        synchronized (zzfffVar) {
            zzfffVar.zze = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        ArrayDeque arrayDeque;
        int i10;
        Void r32 = (Void) obj;
        zzfff zzfffVar = this.zzb;
        synchronized (zzfffVar) {
            try {
                zzfffVar.zze = null;
                arrayDeque = zzfffVar.zzd;
                arrayDeque.addFirst(this.zza);
                i10 = zzfffVar.zzf;
                if (i10 == 1) {
                    zzfffVar.zzh();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
