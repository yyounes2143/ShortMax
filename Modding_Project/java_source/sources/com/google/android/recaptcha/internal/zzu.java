package com.google.android.recaptcha.internal;

import gt.g0;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzu extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzsc zzd;
    final /* synthetic */ zzv zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzu(zzsc zzscVar, zzv zzvVar, c cVar) {
        super(2, cVar);
        this.zzd = zzscVar;
        this.zze = zzvVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzu(this.zzd, this.zze, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzu) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzse zzj;
        List list;
        Iterator it;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        if (this.zzc != 0) {
            it = (Iterator) this.zzb;
            zzj = (zzse) this.zza;
            f.b(obj);
        } else {
            f.b(obj);
            if (!this.zzd.zzS()) {
                Result.a aVar = Result.f60901b;
                return Result.b(Result.d(f.a(new zzbd(zzbb.zzb, zzba.zzab, null))));
            }
            zzj = this.zzd.zzj();
            if (zzj.zzi().zzd() != 0) {
                this.zze.zzc = zzj.zzi();
                list = this.zze.zzb;
                it = list.iterator();
            } else {
                Result.a aVar2 = Result.f60901b;
                return Result.b(Result.d(f.a(new zzbd(zzbb.zzb, zzba.zzab, null))));
            }
        }
        while (it.hasNext()) {
            this.zza = zzj;
            this.zzb = it;
            this.zzc = 1;
            if (((zzy) it.next()).zzd(zzj, this) == f10) {
                return f10;
            }
        }
        Result.a aVar3 = Result.f60901b;
        return Result.b(Result.d(Unit.f60915a));
    }
}
