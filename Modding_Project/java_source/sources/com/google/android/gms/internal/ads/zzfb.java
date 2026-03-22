package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfb implements zzau {
    public final int zza;

    public zzfb(int i10) {
        this.zza = i10;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof zzfb) && this.zza == ((zzfb) obj).zza) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.zza;
    }

    public final String toString() {
        return "Mp4AlternateGroup: " + this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzau
    public final /* synthetic */ void zza(zzar zzarVar) {
    }
}
