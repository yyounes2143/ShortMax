package com.google.android.gms.internal.measurement;

import android.content.Context;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
final class zzjn extends zzkh {
    private final Context zza;
    private final n zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjn(Context context, n nVar) {
        this.zza = context;
        this.zzb = nVar;
    }

    public final boolean equals(Object obj) {
        n nVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzkh) {
            zzkh zzkhVar = (zzkh) obj;
            if (this.zza.equals(zzkhVar.zza()) && ((nVar = this.zzb) != null ? nVar.equals(zzkhVar.zzb()) : zzkhVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.zza.hashCode() ^ 1000003;
        n nVar = this.zzb;
        if (nVar == null) {
            hashCode = 0;
        } else {
            hashCode = nVar.hashCode();
        }
        return (hashCode2 * 1000003) ^ hashCode;
    }

    public final String toString() {
        String obj = this.zza.toString();
        int length = obj.length();
        String valueOf = String.valueOf(this.zzb);
        StringBuilder sb2 = new StringBuilder(length + 45 + valueOf.length() + 1);
        sb2.append("FlagsContext{context=");
        sb2.append(obj);
        sb2.append(", hermeticFileOverrides=");
        sb2.append(valueOf);
        sb2.append("}");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkh
    public final Context zza() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkh
    public final n zzb() {
        return this.zzb;
    }
}
