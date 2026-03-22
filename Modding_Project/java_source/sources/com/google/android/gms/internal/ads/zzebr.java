package com.google.android.gms.internal.ads;

import android.app.Activity;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzebr extends zzecn {
    private final Activity zza;
    @Nullable
    private final com.google.android.gms.ads.internal.overlay.zzm zzb;
    @Nullable
    private final String zzc;
    @Nullable
    private final String zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzebr(Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar, String str, String str2, zzebq zzebqVar) {
        this.zza = activity;
        this.zzb = zzmVar;
        this.zzc = str;
        this.zzd = str2;
    }

    public final boolean equals(Object obj) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzecn) {
            zzecn zzecnVar = (zzecn) obj;
            if (this.zza.equals(zzecnVar.zza()) && ((zzmVar = this.zzb) != null ? zzmVar.equals(zzecnVar.zzb()) : zzecnVar.zzb() == null) && ((str = this.zzc) != null ? str.equals(zzecnVar.zzc()) : zzecnVar.zzc() == null) && ((str2 = this.zzd) != null ? str2.equals(zzecnVar.zzd()) : zzecnVar.zzd() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = this.zza.hashCode() ^ 1000003;
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzb;
        int i10 = 0;
        if (zzmVar == null) {
            hashCode = 0;
        } else {
            hashCode = zzmVar.hashCode();
        }
        int i11 = ((hashCode3 * 1000003) ^ hashCode) * 1000003;
        String str = this.zzc;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 ^ hashCode2) * 1000003;
        String str2 = this.zzd;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return i12 ^ i10;
    }

    public final String toString() {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzb;
        String obj = this.zza.toString();
        String valueOf = String.valueOf(zzmVar);
        return "OfflineUtilsParams{activity=" + obj + ", adOverlay=" + valueOf + ", gwsQueryId=" + this.zzc + ", uri=" + this.zzd + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzecn
    public final Activity zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzecn
    @Nullable
    public final com.google.android.gms.ads.internal.overlay.zzm zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzecn
    @Nullable
    public final String zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzecn
    @Nullable
    public final String zzd() {
        return this.zzd;
    }
}
