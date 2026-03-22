package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzph {
    public final String zza;
    @Nullable
    private final zzpg zzb;
    @Nullable
    private final Object zzc;

    static {
        new zzph("");
    }

    public zzph(String str) {
        zzpg zzpgVar;
        this.zza = str;
        if (Build.VERSION.SDK_INT >= 31) {
            zzpgVar = new zzpg();
        } else {
            zzpgVar = null;
        }
        this.zzb = zzpgVar;
        this.zzc = new Object();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzph)) {
            return false;
        }
        zzph zzphVar = (zzph) obj;
        if (Objects.equals(this.zza, zzphVar.zza) && Objects.equals(this.zzb, zzphVar.zzb) && Objects.equals(this.zzc, zzphVar.zzc)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb, this.zzc);
    }

    @RequiresApi(31)
    public final synchronized LogSessionId zza() {
        zzpg zzpgVar;
        zzpgVar = this.zzb;
        if (zzpgVar != null) {
        } else {
            throw null;
        }
        return zzpgVar.zza;
    }

    @RequiresApi(31)
    public final synchronized void zzb(LogSessionId logSessionId) {
        LogSessionId logSessionId2;
        boolean equals;
        zzpg zzpgVar = this.zzb;
        if (zzpgVar != null) {
            LogSessionId logSessionId3 = zzpgVar.zza;
            logSessionId2 = LogSessionId.LOG_SESSION_ID_NONE;
            equals = logSessionId3.equals(logSessionId2);
            zzdd.zzf(equals);
            zzpgVar.zza = logSessionId;
        } else {
            throw null;
        }
    }
}
