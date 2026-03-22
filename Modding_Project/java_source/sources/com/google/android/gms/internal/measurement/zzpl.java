package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzpl implements n {
    private static final zzpl zza = new zzpl();
    private final n zzb = Suppliers.b(new zzpn());

    public static boolean zza() {
        return zza.get().zza();
    }

    public static boolean zzb() {
        return zza.get().zzb();
    }

    @Override // h7.n
    /* renamed from: zzc */
    public final zzpm get() {
        return (zzpm) this.zzb.get();
    }
}
