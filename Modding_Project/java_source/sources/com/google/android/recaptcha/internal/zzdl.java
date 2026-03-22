package com.google.android.recaptcha.internal;

import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzdl extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzdt zzb;
    final /* synthetic */ zzsc zzc;
    final /* synthetic */ long zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdl(zzdt zzdtVar, zzsc zzscVar, long j10, c cVar) {
        super(2, cVar);
        this.zzb = zzdtVar;
        this.zzc = zzscVar;
        this.zzd = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzdl(this.zzb, this.zzc, this.zzd, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdl) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object zzv;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.zza;
        f.b(obj);
        if (i10 == 0) {
            zzdt zzdtVar = this.zzb;
            zzsc zzscVar = this.zzc;
            long j10 = this.zzd;
            this.zza = 1;
            zzv = zzdtVar.zzv(zzscVar, j10, this);
            if (zzv == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
