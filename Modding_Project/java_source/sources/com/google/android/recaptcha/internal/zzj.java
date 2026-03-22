package com.google.android.recaptcha.internal;

import gt.g0;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzj extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zze zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzsc zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzj(zze zzeVar, long j10, zzsc zzscVar, c cVar) {
        super(2, cVar);
        this.zzb = zzeVar;
        this.zzc = j10;
        this.zzd = zzscVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzj(this.zzb, this.zzc, this.zzd, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzj) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object zze;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.zza;
        f.b(obj);
        if (i10 != 0) {
            zze = ((Result) obj).n();
        } else {
            zze zzeVar = this.zzb;
            long j10 = this.zzc;
            zzsc zzscVar = this.zzd;
            this.zza = 1;
            zze = zzeVar.zze(j10, zzscVar, this);
            if (zze == f10) {
                return f10;
            }
        }
        return Result.b(zze);
    }
}
