package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.util.Log;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfqg {
    final /* synthetic */ zzfqi zza;
    private final byte[] zzb;
    private int zzc;
    private int zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfqg(zzfqi zzfqiVar, byte[] bArr, zzfqh zzfqhVar) {
        Objects.requireNonNull(zzfqiVar);
        this.zza = zzfqiVar;
        this.zzb = bArr;
    }

    public final zzfqg zza(int i10) {
        this.zzd = i10;
        return this;
    }

    public final zzfqg zzb(int i10) {
        this.zzc = i10;
        return this;
    }

    public final synchronized void zzc() {
        try {
            zzfqi zzfqiVar = this.zza;
            if (zzfqiVar.zzb) {
                zzfql zzfqlVar = zzfqiVar.zza;
                zzfqlVar.zzj(this.zzb);
                zzfqlVar.zzi(this.zzc);
                zzfqlVar.zzg(this.zzd);
                zzfqlVar.zzh(null);
                zzfqlVar.zzf();
            }
        } catch (RemoteException e10) {
            Log.d("GASS", "Clearcut log failed", e10);
        }
    }
}
