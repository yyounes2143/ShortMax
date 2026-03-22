package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import androidx.annotation.Nullable;
import java.util.concurrent.Future;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbby {
    @Nullable
    private zzbbn zza;
    private boolean zzb;
    private final Context zzc;
    private final Object zzd = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbby(Context context) {
        this.zzc = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zze(zzbby zzbbyVar) {
        synchronized (zzbbyVar.zzd) {
            try {
                zzbbn zzbbnVar = zzbbyVar.zza;
                if (zzbbnVar == null) {
                    return;
                }
                zzbbnVar.disconnect();
                zzbbyVar.zza = null;
                Binder.flushPendingCommands();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Future zzc(zzbbo zzbboVar) {
        zzbbs zzbbsVar = new zzbbs(this);
        zzbbw zzbbwVar = new zzbbw(this, zzbboVar, zzbbsVar);
        zzbbx zzbbxVar = new zzbbx(this, zzbbsVar);
        synchronized (this.zzd) {
            zzbbn zzbbnVar = new zzbbn(this.zzc, com.google.android.gms.ads.internal.zzv.zzv().zzb(), zzbbwVar, zzbbxVar);
            this.zza = zzbbnVar;
            zzbbnVar.checkAvailabilityAndConnect();
        }
        return zzbbsVar;
    }
}
