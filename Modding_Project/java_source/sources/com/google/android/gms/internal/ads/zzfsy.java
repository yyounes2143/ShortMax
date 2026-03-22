package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfsy extends zzfua {
    private final int zza;
    @Nullable
    private final String zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfsy(int i10, String str, zzfsx zzfsxVar) {
        this.zza = i10;
        this.zzb = str;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfua) {
            zzfua zzfuaVar = (zzfua) obj;
            if (this.zza == zzfuaVar.zza() && ((str = this.zzb) != null ? str.equals(zzfuaVar.zzb()) : zzfuaVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        String str = this.zzb;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode ^ ((this.zza ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "OverlayDisplayState{statusCode=" + this.zza + ", sessionToken=" + this.zzb + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzfua
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfua
    @Nullable
    public final String zzb() {
        return this.zzb;
    }
}
