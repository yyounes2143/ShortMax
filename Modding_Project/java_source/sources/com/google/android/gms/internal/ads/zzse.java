package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzse implements zzsh {
    @Override // com.google.android.gms.internal.ads.zzsh
    public final int zza(zzz zzzVar) {
        if (zzzVar.zzs != null) {
            return 1;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    public final /* synthetic */ zzsg zzb(zzsc zzscVar, zzz zzzVar) {
        return zzsg.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    @Nullable
    public final zzsi zzc(@Nullable zzsc zzscVar, zzz zzzVar) {
        if (zzzVar.zzs == null) {
            return null;
        }
        return new zzsi(new zzsa(new zzsk(1), 6001));
    }
}
