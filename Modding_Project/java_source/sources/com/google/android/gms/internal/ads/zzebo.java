package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzebo extends zzebs {
    @Nullable
    private final String zza;
    private final String zzb;
    @Nullable
    private final Drawable zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzebo(@Nullable String str, String str2, @Nullable Drawable drawable) {
        this.zza = str;
        if (str2 != null) {
            this.zzb = str2;
            this.zzc = drawable;
            return;
        }
        throw new NullPointerException("Null imageUrl");
    }

    public final boolean equals(Object obj) {
        Drawable drawable;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzebs) {
            zzebs zzebsVar = (zzebs) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzebsVar.zzb()) : zzebsVar.zzb() == null) {
                if (this.zzb.equals(zzebsVar.zzc()) && ((drawable = this.zzc) != null ? drawable.equals(zzebsVar.zza()) : zzebsVar.zza() == null)) {
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
        int hashCode2 = ((hashCode ^ 1000003) * 1000003) ^ this.zzb.hashCode();
        Drawable drawable = this.zzc;
        if (drawable != null) {
            i10 = drawable.hashCode();
        }
        return (hashCode2 * 1000003) ^ i10;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzc);
        return "OfflineAdAssets{advertiserName=" + this.zza + ", imageUrl=" + this.zzb + ", icon=" + valueOf + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzebs
    @Nullable
    public final Drawable zza() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzebs
    @Nullable
    public final String zzb() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzebs
    public final String zzc() {
        return this.zzb;
    }
}
