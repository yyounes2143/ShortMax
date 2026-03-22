package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzpi implements n {
    private static final zzpi zza = new zzpi();
    private final n zzb = Suppliers.b(new zzpk());

    public static boolean zza() {
        return zza.get().zza();
    }

    public static boolean zzb() {
        return zza.get().zzb();
    }

    @Override // h7.n
    /* renamed from: zzc */
    public final zzpj get() {
        return (zzpj) this.zzb.get();
    }
}
