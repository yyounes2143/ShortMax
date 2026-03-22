package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfs {
    public final zzfyq zza;
    public final zzfl zzb;
    @Nullable
    public final zzfn zzc;
    @Nullable
    public final zzfr zzd;

    public zzfs(zzfj zzfjVar, @Nullable List list, zzfl zzflVar, @Nullable zzfn zzfnVar, @Nullable zzfr zzfrVar) {
        zzfyq zzn;
        if (list != null) {
            zzn = zzfyq.zzl(list);
        } else {
            zzn = zzfyq.zzn();
        }
        this.zza = zzn;
        this.zzb = zzflVar;
        this.zzc = zzfnVar;
        this.zzd = zzfrVar;
    }
}
