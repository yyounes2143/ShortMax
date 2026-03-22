package com.google.android.recaptcha.internal;

import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.TimeoutKt;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzdy extends SuspendLambda implements Function1 {
    int zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzec zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdy(long j10, zzec zzecVar, c cVar) {
        super(1, cVar);
        this.zzb = j10;
        this.zzc = zzecVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(c cVar) {
        return new zzdy(this.zzb, this.zzc, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return ((zzdy) create((c) obj)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.zza;
        f.b(obj);
        if (i10 == 0) {
            long j10 = this.zzb;
            zzdx zzdxVar = new zzdx(this.zzc, null);
            this.zza = 1;
            if (TimeoutKt.c(j10, zzdxVar, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
