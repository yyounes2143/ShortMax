package com.google.android.gms.internal.fido;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public final class zzdm extends zzdr {
    private final long zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdm(long j10) {
        this.zza = j10;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzdr zzdrVar = (zzdr) obj;
        if (zza() != zzdrVar.zza()) {
            return zza() - zzdrVar.zza();
        }
        int i10 = (Math.abs(this.zza) > Math.abs(((zzdm) zzdrVar).zza) ? 1 : (Math.abs(this.zza) == Math.abs(((zzdm) zzdrVar).zza) ? 0 : -1));
        if (i10 < 0) {
            return -1;
        }
        if (i10 > 0) {
            return 1;
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzdm.class == obj.getClass() && this.zza == ((zzdm) obj).zza) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zza()), Long.valueOf(this.zza)});
    }

    public final String toString() {
        return Long.toString(this.zza);
    }

    @Override // com.google.android.gms.internal.fido.zzdr
    protected final int zza() {
        byte b10;
        if (this.zza >= 0) {
            b10 = 0;
        } else {
            b10 = 32;
        }
        return zzdr.zzd(b10);
    }

    public final long zzc() {
        return this.zza;
    }
}
