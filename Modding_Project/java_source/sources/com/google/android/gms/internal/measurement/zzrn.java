package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzrn implements n {
    private static final zzrn zza = new zzrn();
    private final n zzb = Suppliers.b(new zzrp());

    public static boolean zza() {
        zza.get().zza();
        return true;
    }

    public static boolean zzb() {
        return zza.get().zzb();
    }

    @Override // h7.n
    /* renamed from: zzc */
    public final zzro get() {
        return (zzro) this.zzb.get();
    }
}
