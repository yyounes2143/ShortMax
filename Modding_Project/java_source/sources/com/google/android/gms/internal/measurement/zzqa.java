package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzqa implements n {
    private static final zzqa zza = new zzqa();
    private final n zzb = Suppliers.b(new zzqc());

    public static boolean zza() {
        return zza.get().zza();
    }

    @Override // h7.n
    /* renamed from: zzb */
    public final zzqb get() {
        return (zzqb) this.zzb.get();
    }
}
