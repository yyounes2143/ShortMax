package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcvk implements zzhgr {
    private final zzcvh zza;

    private zzcvk(zzcvh zzcvhVar) {
        this.zza = zzcvhVar;
    }

    public static zzcvk zzc(zzcvh zzcvhVar) {
        return new zzcvk(zzcvhVar);
    }

    @Nullable
    public final Bundle zza() {
        return this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzhhg, com.google.android.gms.internal.ads.zzhhf
    @Nullable
    public final /* synthetic */ Object zzb() {
        return this.zza.zzc();
    }
}
