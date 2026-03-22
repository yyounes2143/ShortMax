package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzre implements n {
    private static final zzre zza = new zzre();
    private final n zzb = Suppliers.b(new zzrg());

    public static boolean zza() {
        return zza.get().zza();
    }

    @Override // h7.n
    /* renamed from: zzb */
    public final zzrf get() {
        return (zzrf) this.zzb.get();
    }
}
