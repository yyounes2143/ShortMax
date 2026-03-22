package com.google.android.recaptcha.internal;

import gt.e;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzds extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzdt zzb;
    final /* synthetic */ zzen zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzds(zzdt zzdtVar, zzen zzenVar, c cVar) {
        super(2, cVar);
        this.zzb = zzdtVar;
        this.zzc = zzenVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzds(this.zzb, this.zzc, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzds) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.zza;
        f.b(obj);
        if (i10 == 0) {
            zzdt zzdtVar = this.zzb;
            this.zza = 1;
            obj = e.g(zzdtVar.zzi.zza().getCoroutineContext(), new zzdh(zzdtVar, null), this);
            if (obj == f10) {
                return f10;
            }
        }
        zzsc zzscVar = (zzsc) obj;
        this.zzc.zza();
        return zzscVar;
    }
}
