package com.google.android.recaptcha.internal;

import gt.g0;
import gt.p;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzeb extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzec zzb;
    final /* synthetic */ p zzc;
    final /* synthetic */ long zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzeb(zzec zzecVar, p pVar, long j10, c cVar) {
        super(2, cVar);
        this.zzb = zzecVar;
        this.zzc = pVar;
        this.zzd = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzeb(this.zzb, this.zzc, this.zzd, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzeb) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzci zzciVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        try {
            if (this.zza != 0) {
                f.b(obj);
            } else {
                f.b(obj);
                zzbq zzbqVar = zzbq.zza;
                zzdz zzdzVar = new zzdz(this.zzb);
                zzea zzeaVar = new zzea(this.zzb, this.zzd, this.zzc, null);
                this.zza = 1;
                obj = zzbqVar.zza(zzdzVar, 100L, 1000L, 2.0d, zzeaVar, this);
                if (obj == f10) {
                    return f10;
                }
            }
            ((Boolean) obj).booleanValue();
        } catch (zzbd e10) {
            zzec zzecVar = this.zzb;
            zzciVar = zzcm.zzd;
            zzecVar.zzf = zzciVar;
            this.zzc.d(e10);
        }
        return Unit.f60915a;
    }
}
