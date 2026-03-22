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
public final class zzfb extends SuspendLambda implements Function2 {
    final /* synthetic */ zzff zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzto zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfb(zzff zzffVar, String str, zzto zztoVar, c cVar) {
        super(2, cVar);
        this.zza = zzffVar;
        this.zzb = str;
        this.zzc = zztoVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzfb(this.zza, this.zzb, this.zzc, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfb) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzey zzg;
        kotlin.coroutines.intrinsics.a.f();
        f.b(obj);
        try {
            if (zzff.zzb(this.zza).zzb(this.zzb)) {
                zzg = this.zza.zzg();
                return zzg.zza(this.zzb, this.zzc);
            }
            throw new zzbd(zzbb.zzc, zzba.zzQ, null);
        } catch (zzbd e10) {
            throw e10;
        } catch (Exception e11) {
            throw new zzbd(zzbb.zzb, zzba.zzaw, e11.getMessage());
        }
    }
}
