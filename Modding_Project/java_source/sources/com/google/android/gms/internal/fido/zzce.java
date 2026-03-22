package com.google.android.gms.internal.fido;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
final class zzce extends zzcg {
    final char[] zza;

    private zzce(zzcd zzcdVar) {
        super(zzcdVar, null);
        char[] cArr;
        this.zza = new char[512];
        cArr = zzcdVar.zzf;
        zzap.zzc(cArr.length == 16);
        for (int i10 = 0; i10 < 256; i10++) {
            this.zza[i10] = zzcdVar.zza(i10 >>> 4);
            this.zza[i10 | 256] = zzcdVar.zza(i10 & 15);
        }
    }

    @Override // com.google.android.gms.internal.fido.zzcg
    final zzch zza(zzcd zzcdVar, Character ch2) {
        return new zzce(zzcdVar);
    }

    @Override // com.google.android.gms.internal.fido.zzcg, com.google.android.gms.internal.fido.zzch
    final void zzb(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        zzap.zze(0, i11, bArr.length);
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            appendable.append(this.zza[i13]);
            appendable.append(this.zza[i13 | 256]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzce(String str, String str2) {
        this(new zzcd("base16()", "0123456789ABCDEF".toCharArray()));
    }
}
