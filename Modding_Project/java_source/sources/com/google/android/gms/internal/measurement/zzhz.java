package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzhz extends zzmb implements zznn {
    private zzhz() {
        throw null;
    }

    public final List zza() {
        return Collections.unmodifiableList(((zzib) this.zza).zza());
    }

    public final int zzb() {
        return ((zzib) this.zza).zzb();
    }

    public final zzid zzc(int i10) {
        return ((zzib) this.zza).zzc(i10);
    }

    public final zzhz zzd(int i10, zzic zzicVar) {
        zzaX();
        ((zzib) this.zza).zzj(i10, (zzid) zzicVar.zzbc());
        return this;
    }

    public final zzhz zze(zzic zzicVar) {
        zzaX();
        ((zzib) this.zza).zzk((zzid) zzicVar.zzbc());
        return this;
    }

    public final zzhz zzf(Iterable iterable) {
        zzaX();
        ((zzib) this.zza).zzm(iterable);
        return this;
    }

    public final zzhz zzg() {
        zzaX();
        ((zzib) this.zza).zzn();
        return this;
    }

    public final String zzh() {
        return ((zzib) this.zza).zze();
    }

    public final zzhz zzi(String str) {
        zzaX();
        ((zzib) this.zza).zzo(str);
        return this;
    }

    public final zzhz zzj(String str) {
        zzaX();
        ((zzib) this.zza).zzp(str);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ zzhz(byte[] r1) {
        /*
            r0 = this;
            com.google.android.gms.internal.measurement.zzib r1 = com.google.android.gms.internal.measurement.zzib.zzq()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhz.<init>(byte[]):void");
    }
}
