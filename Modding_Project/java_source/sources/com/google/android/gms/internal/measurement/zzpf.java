package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzpf implements n {
    private static final zzpf zza = new zzpf();
    private final n zzb = Suppliers.b(new zzph());

    public static long zza() {
        return zza.get().zza();
    }

    @Override // h7.n
    /* renamed from: zzb */
    public final zzpg get() {
        return (zzpg) this.zzb.get();
    }
}
