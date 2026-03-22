package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgh extends zzgc {
    @Nullable
    private zzgo zza;
    @Nullable
    private byte[] zzb;
    private int zzc;
    private int zzd;

    public zzgh() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.zzd;
        if (i12 == 0) {
            return -1;
        }
        int min = Math.min(i11, i12);
        byte[] bArr2 = this.zzb;
        String str = zzex.zza;
        System.arraycopy(bArr2, this.zzc, bArr, i10, min);
        this.zzc += min;
        this.zzd -= min;
        zzg(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final long zzb(zzgo zzgoVar) throws IOException {
        zzi(zzgoVar);
        this.zza = zzgoVar;
        Uri normalizeScheme = zzgoVar.zza.normalizeScheme();
        String scheme = normalizeScheme.getScheme();
        zzdd.zze("data".equals(scheme), "Unsupported scheme: ".concat(String.valueOf(scheme)));
        String schemeSpecificPart = normalizeScheme.getSchemeSpecificPart();
        String str = zzex.zza;
        String[] split = schemeSpecificPart.split(",", -1);
        if (split.length == 2) {
            String str2 = split[1];
            if (split[0].contains(";base64")) {
                try {
                    this.zzb = Base64.decode(str2, 0);
                } catch (IllegalArgumentException e10) {
                    throw zzaz.zzb("Error while parsing Base64 encoded string: ".concat(String.valueOf(str2)), e10);
                }
            } else {
                this.zzb = URLDecoder.decode(str2, StandardCharsets.US_ASCII.name()).getBytes(StandardCharsets.UTF_8);
            }
            long j10 = zzgoVar.zze;
            int length = this.zzb.length;
            if (j10 <= length) {
                int i10 = (int) j10;
                this.zzc = i10;
                int i11 = length - i10;
                this.zzd = i11;
                long j11 = zzgoVar.zzf;
                int i12 = (j11 > (-1L) ? 1 : (j11 == (-1L) ? 0 : -1));
                if (i12 != 0) {
                    this.zzd = (int) Math.min(i11, j11);
                }
                zzj(zzgoVar);
                if (i12 != 0) {
                    return j11;
                }
                return this.zzd;
            }
            this.zzb = null;
            throw new zzgk(2008);
        }
        throw zzaz.zzb("Unexpected URI format: ".concat(String.valueOf(normalizeScheme)), null);
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    @Nullable
    public final Uri zzc() {
        zzgo zzgoVar = this.zza;
        if (zzgoVar != null) {
            return zzgoVar.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzd() {
        if (this.zzb != null) {
            this.zzb = null;
            zzh();
        }
        this.zza = null;
    }
}
