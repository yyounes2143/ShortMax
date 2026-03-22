package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzrb implements n {
    private static final zzrb zza = new zzrb();
    private final n zzb = Suppliers.b(new zzrd());

    public static boolean zza() {
        zza.get().zza();
        return true;
    }

    public static boolean zzb() {
        return zza.get().zzb();
    }

    @Override // h7.n
    /* renamed from: zzc */
    public final zzrc get() {
        return (zzrc) this.zzb.get();
    }
}
