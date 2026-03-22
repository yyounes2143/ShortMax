package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzqj implements n {
    private static final zzqj zza = new zzqj();
    private final n zzb = Suppliers.b(new zzql());

    public static boolean zza() {
        return zza.get().zza();
    }

    @Override // h7.n
    /* renamed from: zzb */
    public final zzqk get() {
        return (zzqk) this.zzb.get();
    }
}
