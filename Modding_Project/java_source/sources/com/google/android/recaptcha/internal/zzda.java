package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import gt.g0;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzda extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzdc zzb;
    final /* synthetic */ RecaptchaAction zzc;
    final /* synthetic */ long zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzda(zzdc zzdcVar, RecaptchaAction recaptchaAction, long j10, c cVar) {
        super(2, cVar);
        this.zzb = zzdcVar;
        this.zzc = recaptchaAction;
        this.zzd = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzda(this.zzb, this.zzc, this.zzd, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzda) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
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
            zzdc zzdcVar = this.zzb;
            RecaptchaAction recaptchaAction = this.zzc;
            long j10 = this.zzd;
            this.zza = 1;
            zzf = zzdcVar.zzf(recaptchaAction, j10, this);
            if (zzf == f10) {
                return f10;
            }
        }
        f.b(zzf);
        return zzf;
    }
}
