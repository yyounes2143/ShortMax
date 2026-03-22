package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import java.util.Locale;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfkt {
    private final String zza;
    @Nullable
    private final AdFormat zzb;
    @Nullable
    private final String zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfkt(zzfkr zzfkrVar, zzfks zzfksVar) {
        String str;
        AdFormat adFormat;
        String str2;
        str = zzfkrVar.zza;
        this.zza = str;
        adFormat = zzfkrVar.zzb;
        this.zzb = adFormat;
        str2 = zzfkrVar.zzc;
        this.zzc = str2;
    }

    public final boolean equals(@Nullable Object obj) {
        AdFormat adFormat;
        AdFormat adFormat2;
        if (obj instanceof zzfkt) {
            zzfkt zzfktVar = (zzfkt) obj;
            if (this.zza.equals(zzfktVar.zza) && (adFormat = this.zzb) != null && (adFormat2 = zzfktVar.zzb) != null && adFormat.equals(adFormat2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String zza() {
        AdFormat adFormat = this.zzb;
        if (adFormat == null) {
            return "unknown";
        }
        return adFormat.name().toLowerCase(Locale.ENGLISH);
    }

    public final String zzb() {
        return this.zza;
    }

    @Nullable
    public final String zzc() {
        return this.zzc;
    }
}
