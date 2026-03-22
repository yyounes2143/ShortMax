package com.google.android.gms.internal.ads;

import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Objects;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzpi {
    public static final zzpi zza;
    public final int zzb;
    public final int zzc;
    @Nullable
    private final zzfyv zzd;

    static {
        zzpi zzpiVar;
        if (Build.VERSION.SDK_INT >= 33) {
            zzfyu zzfyuVar = new zzfyu();
            for (int i10 = 1; i10 <= 10; i10++) {
                zzfyuVar.zzf(Integer.valueOf(zzex.zzi(i10)));
            }
            zzpiVar = new zzpi(2, zzfyuVar.zzi());
        } else {
            zzpiVar = new zzpi(2, 10);
        }
        zza = zzpiVar;
    }

    public zzpi(int i10, int i11) {
        this.zzb = i10;
        this.zzc = i11;
        this.zzd = null;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzpi)) {
            return false;
        }
        zzpi zzpiVar = (zzpi) obj;
        if (this.zzb == zzpiVar.zzb && this.zzc == zzpiVar.zzc && Objects.equals(this.zzd, zzpiVar.zzd)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        zzfyv zzfyvVar = this.zzd;
        if (zzfyvVar == null) {
            hashCode = 0;
        } else {
            hashCode = zzfyvVar.hashCode();
        }
        return (((this.zzb * 31) + this.zzc) * 31) + hashCode;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzd);
        return "AudioProfile[format=" + this.zzb + ", maxChannelCount=" + this.zzc + ", channelMasks=" + valueOf + "]";
    }

    public final int zza(int i10, zze zzeVar) {
        boolean isDirectPlaybackSupported;
        if (this.zzd != null) {
            return this.zzc;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            int i11 = this.zzb;
            for (int i12 = 10; i12 > 0; i12--) {
                int zzi = zzex.zzi(i12);
                if (zzi != 0) {
                    isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i11).setSampleRate(i10).setChannelMask(zzi).build(), zzeVar.zza().zza);
                    if (isDirectPlaybackSupported) {
                        return i12;
                    }
                }
            }
            return 0;
        }
        Integer num = (Integer) zzpj.zzb.getOrDefault(Integer.valueOf(this.zzb), 0);
        num.getClass();
        return num.intValue();
    }

    public final boolean zzb(int i10) {
        zzfyv zzfyvVar = this.zzd;
        if (zzfyvVar == null) {
            if (i10 > this.zzc) {
                return false;
            }
            return true;
        }
        int zzi = zzex.zzi(i10);
        if (zzi == 0) {
            return false;
        }
        return zzfyvVar.contains(Integer.valueOf(zzi));
    }

    @RequiresApi(33)
    public zzpi(int i10, Set set) {
        this.zzb = i10;
        zzfyv zzl = zzfyv.zzl(set);
        this.zzd = zzl;
        zzgaw it = zzl.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            i11 = Math.max(i11, Integer.bitCount(((Integer) it.next()).intValue()));
        }
        this.zzc = i11;
    }
}
