package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ShowFirstParty;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@ShowFirstParty
/* loaded from: classes4.dex */
public final class zzfot {
    private final Context zza;
    private final Looper zzb;

    public zzfot(@NonNull Context context, @NonNull Looper looper) {
        this.zza = context;
        this.zzb = looper;
    }

    public final void zza(@NonNull String str) {
        zzfpe zza = zzfph.zza();
        Context context = this.zza;
        zza.zza(context.getPackageName());
        zza.zzc(2);
        zzfpb zza2 = zzfpd.zza();
        zza2.zza(str);
        zza2.zzb(2);
        zza.zzb(zza2);
        new zzfou(context, this.zzb, (zzfph) zza.zzbr()).zza();
    }
}
