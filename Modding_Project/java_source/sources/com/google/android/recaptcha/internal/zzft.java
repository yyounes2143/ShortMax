package com.google.android.recaptcha.internal;

import gt.g;
import gt.g0;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzft implements zzfo {
    @NotNull
    private final g0 zza;
    @NotNull
    private final zzgf zzb;
    @NotNull
    private final zzhx zzc;
    @NotNull
    private final Map zzd;

    public zzft(@NotNull g0 g0Var, @NotNull zzgf zzgfVar, @NotNull zzhx zzhxVar, @NotNull Map map) {
        this.zza = g0Var;
        this.zzb = zzgfVar;
        this.zzc = zzhxVar;
        this.zzd = map;
    }

    public static final /* synthetic */ void zzf(zzft zzftVar, zzuf zzufVar, zzgd zzgdVar) {
        zzjh zzb = zzjh.zzb();
        int zza = zzgdVar.zza();
        zzgx zzgxVar = (zzgx) zzftVar.zzd.get(Integer.valueOf(zzufVar.zzf()));
        if (zzgxVar != null) {
            int zzg = zzufVar.zzg();
            zzue[] zzueVarArr = (zzue[]) zzufVar.zzj().toArray(new zzue[0]);
            zzgxVar.zza(zzg, zzgdVar, (zzue[]) Arrays.copyOf(zzueVarArr, zzueVarArr.length));
            if (zza == zzgdVar.zza()) {
                zzgdVar.zzg(zzgdVar.zza() + 1);
            }
            zzb.zzf();
            long zza2 = zzb.zza(TimeUnit.MICROSECONDS);
            int i10 = zzbk.zza;
            int zzk = zzufVar.zzk();
            if (zzk != 1) {
                zzbk.zza(zzk - 2, zza2);
                return;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        throw new zzce(5, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzg(List list, zzgd zzgdVar, c cVar) {
        Object f10 = i.f(new zzfq(zzgdVar, list, this, null), cVar);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzh(Exception exc, zzgd zzgdVar, c cVar) {
        Object f10 = i.f(new zzfr(exc, zzgdVar, this, null), cVar);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    @Override // com.google.android.recaptcha.internal.zzfo
    public final void zza(@NotNull String str) {
        g.d(this.zza, null, null, new zzfs(new zzgd(this.zzb), this, str, null), 3, null);
    }
}
