package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzpu implements n {
    private static final zzpu zza = new zzpu();
    private final n zzb = Suppliers.b(new zzpw());

    public static boolean zza() {
        zza.get().zza();
        return true;
    }

    public static boolean zzb() {
        return zza.get().zzb();
    }

    public static boolean zzc() {
        return zza.get().zzc();
    }

    public static boolean zzd() {
        return zza.get().zzd();
    }

    @Override // h7.n
    /* renamed from: zze */
    public final zzpv get() {
        return (zzpv) this.zzb.get();
    }
}
