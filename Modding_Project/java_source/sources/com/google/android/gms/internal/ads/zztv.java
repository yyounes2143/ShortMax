package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zztv {
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;

    public zztv(String str, boolean z10, boolean z11) {
        this.zza = str;
        this.zzb = z10;
        this.zzc = z11;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == zztv.class) {
            zztv zztvVar = (zztv) obj;
            if (TextUtils.equals(this.zza, zztvVar.zza) && this.zzb == zztvVar.zzb && this.zzc == zztvVar.zzc) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        int hashCode = this.zza.hashCode() + 31;
        int i11 = 1231;
        if (true != this.zzb) {
            i10 = 1237;
        } else {
            i10 = 1231;
        }
        int i12 = ((hashCode * 31) + i10) * 31;
        if (true != this.zzc) {
            i11 = 1237;
        }
        return i12 + i11;
    }
}
