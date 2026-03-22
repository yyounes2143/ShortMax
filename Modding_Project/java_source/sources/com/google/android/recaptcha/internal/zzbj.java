package com.google.android.recaptcha.internal;

import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzbj implements Comparable {
    private int zza;
    private long zzb;
    private long zzc;

    @NotNull
    public final String toString() {
        String E0 = StringsKt.E0(String.valueOf(this.zzb / this.zza), 10, (char) 0, 2, null);
        String E02 = StringsKt.E0(String.valueOf(this.zzc), 10, (char) 0, 2, null);
        String E03 = StringsKt.E0(String.valueOf(this.zzb), 10, (char) 0, 2, null);
        String E04 = StringsKt.E0(String.valueOf(this.zza), 5, (char) 0, 2, null);
        return "avgExecutionTime: " + E0 + " us| maxExecutionTime: " + E02 + " us| totalTime: " + E03 + " us| #Usages: " + E04;
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(@NotNull zzbj zzbjVar) {
        return ps.a.a(Long.valueOf(this.zzb), Long.valueOf(zzbjVar.zzb));
    }

    public final int zzb() {
        return this.zza;
    }

    public final long zzc() {
        return this.zzc;
    }

    public final long zzd() {
        return this.zzb;
    }

    public final void zze(long j10) {
        this.zzc = j10;
    }

    public final void zzf(long j10) {
        this.zzb = j10;
    }

    public final void zzg(int i10) {
        this.zza = i10;
    }
}
