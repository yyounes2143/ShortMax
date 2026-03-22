package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfkr {
    private final String zza;
    @Nullable
    private final AdFormat zzb;
    @Nullable
    private String zzc;

    public zzfkr(String str, @Nullable AdFormat adFormat) {
        this.zza = str;
        this.zzb = adFormat;
    }

    public final zzfkr zzb(String str) {
        this.zzc = str;
        return this;
    }
}
