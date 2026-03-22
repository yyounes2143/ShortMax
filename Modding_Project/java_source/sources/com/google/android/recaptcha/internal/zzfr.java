package com.google.android.recaptcha.internal;

import gt.g0;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.i;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzfr extends SuspendLambda implements Function2 {
    final /* synthetic */ Exception zza;
    final /* synthetic */ zzgd zzb;
    final /* synthetic */ zzft zzc;
    private /* synthetic */ Object zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfr(Exception exc, zzgd zzgdVar, zzft zzftVar, c cVar) {
        super(2, cVar);
        this.zza = exc;
        this.zzb = zzgdVar;
        this.zzc = zzftVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        zzfr zzfrVar = new zzfr(this.zza, this.zzb, this.zzc, cVar);
        zzfrVar.zzd = obj;
        return zzfrVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfr) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zztd zztdVar;
        kotlin.coroutines.intrinsics.a.f();
        f.b(obj);
        g0 g0Var = (g0) this.zzd;
        Exception exc = this.zza;
        if (exc instanceof zzce) {
            zztdVar = ((zzce) exc).zza();
            zztdVar.zze(this.zzb.zza());
        } else {
            zzgd zzgdVar = this.zzb;
            zztd zzf = zzte.zzf();
            zzf.zze(zzgdVar.zza());
            zzf.zzr(2);
            zzf.zzq(2);
            zztdVar = zzf;
        }
        zzte zzteVar = (zzte) zztdVar.zzk();
        zzteVar.zzl();
        zzteVar.zzk();
        Reflection.getOrCreateKotlinClass(this.zza.getClass()).getSimpleName();
        this.zza.getMessage();
        zzgd zzgdVar2 = this.zzb;
        zzbn zzb = zzgdVar2.zzb();
        zzbn zzbnVar = zzgdVar2.zza;
        if (zzbnVar == null) {
            zzbnVar = null;
        }
        zzrl zza = zzev.zza(zzb, zzbnVar);
        String zzd = this.zzb.zzd();
        if (zzd.length() == 0) {
            zzd = "recaptcha.m.Main.rge";
        }
        if (i.h(g0Var)) {
            zzft zzftVar = this.zzc;
            zzkh zzh = zzkh.zzh();
            byte[] zzd2 = zzteVar.zzd();
            String zzi = zzh.zzi(zzd2, 0, zzd2.length);
            zzkh zzh2 = zzkh.zzh();
            byte[] zzd3 = zza.zzd();
            zzftVar.zzb.zzd().zzb(zzd, (String[]) Arrays.copyOf(new String[]{zzi, zzh2.zzi(zzd3, 0, zzd3.length)}, 2));
        }
        return Unit.f60915a;
    }
}
