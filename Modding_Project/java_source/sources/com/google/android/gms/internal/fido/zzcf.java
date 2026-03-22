package com.google.android.gms.internal.fido;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
final class zzcf extends zzcg {
    private zzcf(zzcd zzcdVar, Character ch2) {
        super(zzcdVar, ch2);
        char[] cArr;
        cArr = zzcdVar.zzf;
        zzap.zzc(cArr.length == 64);
    }

    @Override // com.google.android.gms.internal.fido.zzcg
    final zzch zza(zzcd zzcdVar, Character ch2) {
        return new zzcf(zzcdVar, ch2);
    }

    @Override // com.google.android.gms.internal.fido.zzcg, com.google.android.gms.internal.fido.zzch
    final void zzb(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        zzap.zze(0, i11, bArr.length);
        for (int i13 = i11; i13 >= 3; i13 -= 3) {
            int i14 = bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i15 = ((bArr[i12 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (i14 << 16) | (bArr[i12 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            appendable.append(this.zzb.zza(i15 >>> 18));
            appendable.append(this.zzb.zza((i15 >>> 12) & 63));
            appendable.append(this.zzb.zza((i15 >>> 6) & 63));
            appendable.append(this.zzb.zza(i15 & 63));
            i12 += 3;
        }
        if (i12 < i11) {
            zze(appendable, bArr, i12, i11 - i12);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcf(String str, String str2, Character ch2) {
        this(new zzcd(str, str2.toCharArray()), ch2);
    }
}
