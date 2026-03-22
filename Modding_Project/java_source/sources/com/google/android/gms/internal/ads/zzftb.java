package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzftb extends zzfud {
    @Nullable
    private final String zza;
    @Nullable
    private final String zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzftb(String str, String str2, zzfta zzftaVar) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfud) {
            zzfud zzfudVar = (zzfud) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzfudVar.zzb()) : zzfudVar.zzb() == null) {
                String str2 = this.zzb;
                if (str2 != null ? str2.equals(zzfudVar.zza()) : zzfudVar.zza() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        String str = this.zza;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        String str2 = this.zzb;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i10;
    }

    public final String toString() {
        return "OverlayDisplayUpdateRequest{sessionToken=" + this.zza + ", appId=" + this.zzb + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzfud
    @Nullable
    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfud
    @Nullable
    public final String zzb() {
        return this.zza;
    }
}
