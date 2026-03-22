package com.google.android.gms.internal.fido;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public final class zzdj extends zzdr {
    private final boolean zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdj(boolean z10) {
        this.zza = z10;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        int i10;
        zzdr zzdrVar = (zzdr) obj;
        if (zzdr.zzd((byte) -32) != zzdrVar.zza()) {
            return zzdr.zzd((byte) -32) - zzdrVar.zza();
        }
        zzdj zzdjVar = (zzdj) zzdrVar;
        int i11 = 21;
        if (true != this.zza) {
            i10 = 20;
        } else {
            i10 = 21;
        }
        if (true != zzdjVar.zza) {
            i11 = 20;
        }
        return i10 - i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzdj.class == obj.getClass() && this.zza == ((zzdj) obj).zza) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzdr.zzd((byte) -32)), Boolean.valueOf(this.zza)});
    }

    public final String toString() {
        return Boolean.toString(this.zza);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.fido.zzdr
    public final int zza() {
        return zzdr.zzd((byte) -32);
    }
}
