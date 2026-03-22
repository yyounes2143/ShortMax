package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzghu {
    private Integer zza = null;
    private zzghv zzb = zzghv.zzc;

    private zzghu() {
    }

    public final zzghu zza(int i10) throws GeneralSecurityException {
        if (i10 != 16 && i10 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(i10)));
        }
        this.zza = Integer.valueOf(i10);
        return this;
    }

    public final zzghu zzb(zzghv zzghvVar) {
        this.zzb = zzghvVar;
        return this;
    }

    public final zzghx zzc() throws GeneralSecurityException {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzb != null) {
                return new zzghx(num.intValue(), this.zzb, null);
            }
            throw new GeneralSecurityException("Variant is not set");
        }
        throw new GeneralSecurityException("Key size is not set");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzghu(zzghw zzghwVar) {
    }
}
