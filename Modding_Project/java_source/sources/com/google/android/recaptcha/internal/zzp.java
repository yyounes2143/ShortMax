package com.google.android.recaptcha.internal;

import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import ms.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzp implements zzy {
    @NotNull
    private final zzek zza;
    @NotNull
    private final i zzb;
    private boolean zzc;

    public zzp(@NotNull zzek zzekVar) {
        this.zza = zzekVar;
        int i10 = zzav.zza;
        this.zzb = c.b(zzo.zza);
        this.zzc = true;
    }

    private final zzbf zzg() {
        return (zzbf) this.zzb.getValue();
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final int zza() {
        return 25;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    @NotNull
    public final zzek zzb() {
        return this.zza;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    @Nullable
    public final Object zzc(@NotNull String str, @NotNull rs.c cVar) {
        zzen zzb = zzz.zzb(this, str);
        String zza = zzg().zza();
        zzb.zza();
        zztf zzf = zzti.zzf();
        zztg zzf2 = zzth.zzf();
        zzf2.zzw(zza);
        zzf.zze(CollectionsKt.e(zzf2.zzk()));
        return zzz.zza(this, (zzti) zzf.zzk());
    }

    @Override // com.google.android.recaptcha.internal.zzy
    @Nullable
    public final Object zzd(@NotNull zzse zzseVar, @NotNull rs.c cVar) {
        zzen zzc = zzz.zzc(this);
        if (zzseVar.zzl().length() == 0) {
            this.zzc = false;
            zzc.zzb(new zzbd(zzbb.zzb, zzba.zzab, null));
            return Unit.f60915a;
        }
        zzg().zzb(p0.f(k.a("_GRECAPTCHA_KC", zzseVar.zzl())));
        zzc.zza();
        return Unit.f60915a;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final boolean zzf() {
        return this.zzc;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final void zze(@NotNull zzsr zzsrVar) {
    }
}
