package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzrq implements n {
    private static final zzrq zza = new zzrq();
    private final n zzb = Suppliers.b(new zzrs());

    public static boolean zza() {
        return zza.get().zza();
    }

    @Override // h7.n
    /* renamed from: zzb */
    public final zzrr get() {
        return (zzrr) this.zzb.get();
    }
}
