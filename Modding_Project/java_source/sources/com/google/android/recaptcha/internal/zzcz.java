package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzcz extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzdc zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ RecaptchaAction zzd;
    final /* synthetic */ String zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcz(zzdc zzdcVar, long j10, RecaptchaAction recaptchaAction, String str, c cVar) {
        super(2, cVar);
        this.zzb = zzdcVar;
        this.zzc = j10;
        this.zzd = recaptchaAction;
        this.zze = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzcz(this.zzb, this.zzc, this.zzd, this.zze, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzcz) create((zzek) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzcn zzcnVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.zza;
        f.b(obj);
        if (i10 == 0) {
            zzdc.zze(this.zzb, this.zzc, this.zzd);
            zzdc zzdcVar = this.zzb;
            String str = this.zze;
            RecaptchaAction recaptchaAction = this.zzd;
            long j10 = this.zzc;
            zzcnVar = zzdcVar.zzb;
            this.zza = 1;
            obj = zzcnVar.zza(str, recaptchaAction, j10, this);
            if (obj == f10) {
                return f10;
            }
        }
        return Result.b(Result.d((String) obj));
    }
}
