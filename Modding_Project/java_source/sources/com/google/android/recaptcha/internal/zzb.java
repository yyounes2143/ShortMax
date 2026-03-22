package com.google.android.recaptcha.internal;

import gt.g0;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzb extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zze zzb;
    final /* synthetic */ String zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzb(zze zzeVar, String str, c cVar) {
        super(2, cVar);
        this.zzb = zzeVar;
        this.zzc = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzb(this.zzb, this.zzc, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzb) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object zzf;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.zza;
        f.b(obj);
        if (i10 != 0) {
            zzf = ((Result) obj).n();
        } else {
            zze zzeVar = this.zzb;
            String str = this.zzc;
            this.zza = 1;
            zzf = zzeVar.zzf(str, this);
            if (zzf == f10) {
                return f10;
            }
        }
        return Result.b(zzf);
    }
}
