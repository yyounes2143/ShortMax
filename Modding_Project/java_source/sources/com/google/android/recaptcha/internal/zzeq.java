package com.google.android.recaptcha.internal;

import gt.g0;
import java.util.Timer;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzeq extends SuspendLambda implements Function2 {
    final /* synthetic */ zzes zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzeq(zzes zzesVar, c cVar) {
        super(2, cVar);
        this.zza = zzesVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzeq(this.zza, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzeq) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzei zzeiVar;
        Timer timer;
        kotlin.coroutines.intrinsics.a.f();
        f.b(obj);
        zzes zzesVar = this.zza;
        synchronized (zzeo.class) {
            try {
                zzeiVar = zzesVar.zze;
                if (zzeiVar != null && zzeiVar.zzb() == 0) {
                    timer = zzes.zza;
                    if (timer != null) {
                        timer.cancel();
                    }
                    zzes.zza = null;
                }
                zzesVar.zzg();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return Unit.f60915a;
    }
}
