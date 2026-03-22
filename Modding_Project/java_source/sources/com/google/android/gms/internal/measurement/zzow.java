package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzow implements n {
    private static final zzow zza = new zzow();
    private final n zzb = Suppliers.b(new zzoy());

    public static boolean zza() {
        return zza.get().zza();
    }

    @Override // h7.n
    /* renamed from: zzb */
    public final zzox get() {
        return (zzox) this.zzb.get();
    }
}
