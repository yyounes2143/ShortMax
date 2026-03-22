package com.google.android.recaptcha.internal;

import android.os.Build;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzab implements zzy {
    @NotNull
    private final zzek zza;

    public zzab(@NotNull zzek zzekVar) {
        this.zza = zzekVar;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final int zza() {
        return 10;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    @NotNull
    public final zzek zzb() {
        return this.zza;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    @Nullable
    public final Object zzc(@NotNull String str, @NotNull c cVar) {
        zzen zzb = zzz.zzb(this, str);
        int i10 = Build.VERSION.SDK_INT;
        zzb.zza();
        zztf zzf = zzti.zzf();
        zztg zzf2 = zzth.zzf();
        zzf2.zzw(String.valueOf(i10));
        zzf.zze(CollectionsKt.e(zzf2.zzk()));
        return zzz.zza(this, (zzti) zzf.zzk());
    }

    @Override // com.google.android.recaptcha.internal.zzy
    @Nullable
    public final Object zzd(@NotNull zzse zzseVar, @NotNull c cVar) {
        zzz.zzc(this).zza();
        return Unit.f60915a;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final boolean zzf() {
        return true;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final void zze(@NotNull zzsr zzsrVar) {
    }
}
