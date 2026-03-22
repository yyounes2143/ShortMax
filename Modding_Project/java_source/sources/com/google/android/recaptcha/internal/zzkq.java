package com.google.android.recaptcha.internal;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public class zzkq implements zzoq {
    private static final zzmo zza;

    static {
        int i10 = zzmo.zzb;
        int i11 = zzos.zza;
        zza = zzmo.zza;
    }

    public zzoi zza(byte[] bArr, int i10, int i11, zzmo zzmoVar) throws zznn {
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzoq
    public final /* synthetic */ Object zzb(byte[] bArr) throws zznn {
        zzoi zza2 = zza(bArr, 0, bArr.length, zza);
        if (zza2 != null && !zza2.zzp()) {
            throw new zzpk((zzko) zza2).zza();
        }
        return zza2;
    }
}
