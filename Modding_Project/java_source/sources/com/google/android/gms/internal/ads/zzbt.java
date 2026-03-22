package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbt {
    public static final zzbt zza = new zzbt(zzfyq.zzn());
    private final zzfyq zzb;

    static {
        String str = zzex.zza;
        Integer.toString(0, 36);
    }

    public zzbt(List list) {
        this.zzb = zzfyq.zzl(list);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbt.class == obj.getClass()) {
            return this.zzb.equals(((zzbt) obj).zzb);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode();
    }

    public final zzfyq zza() {
        return this.zzb;
    }

    public final boolean zzb(int i10) {
        int i11 = 0;
        while (true) {
            zzfyq zzfyqVar = this.zzb;
            if (i11 >= zzfyqVar.size()) {
                return false;
            }
            zzbs zzbsVar = (zzbs) zzfyqVar.get(i11);
            if (zzbsVar.zzc() && zzbsVar.zza() == i10) {
                return true;
            }
            i11++;
        }
    }
}
