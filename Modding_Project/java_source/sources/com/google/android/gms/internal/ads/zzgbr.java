package com.google.android.gms.internal.ads;

import com.applovin.shadow.okhttp3.HttpUrl;
import com.ss.texturerender.TextureRenderKeys;
import java.io.Serializable;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgbr implements Serializable {
    private final int[] zza;
    private final int zzb;

    private zzgbr(int[] iArr, int i10, int i11) {
        this.zza = iArr;
        this.zzb = i11;
    }

    public static zzgbr zzb(int[] iArr) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        return new zzgbr(copyOf, 0, copyOf.length);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgbr)) {
            return false;
        }
        zzgbr zzgbrVar = (zzgbr) obj;
        int i10 = this.zzb;
        if (i10 != zzgbrVar.zzb) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (zza(i11) != zzgbrVar.zza(i11)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.zzb; i11++) {
            i10 = (i10 * 31) + this.zza[i11];
        }
        return i10;
    }

    public final String toString() {
        int i10 = this.zzb;
        if (i10 != 0) {
            StringBuilder sb2 = new StringBuilder(i10 * 5);
            sb2.append('[');
            int[] iArr = this.zza;
            sb2.append(iArr[0]);
            for (int i11 = 1; i11 < i10; i11++) {
                sb2.append(", ");
                sb2.append(iArr[i11]);
            }
            sb2.append(']');
            return sb2.toString();
        }
        return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }

    public final int zza(int i10) {
        zzfvp.zza(i10, this.zzb, TextureRenderKeys.KEY_IS_INDEX);
        return this.zza[i10];
    }
}
