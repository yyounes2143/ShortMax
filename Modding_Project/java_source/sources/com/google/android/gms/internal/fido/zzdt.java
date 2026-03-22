package com.google.android.gms.internal.fido;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public final class zzdt {
    private final byte zza;
    private final byte zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdt(int i10) {
        this.zza = (byte) (i10 & 224);
        this.zzb = (byte) (i10 & 31);
    }

    public final byte zza() {
        return this.zzb;
    }

    public final byte zzb() {
        return this.zza;
    }

    public final int zzc() {
        return (this.zza >> 5) & 7;
    }
}
