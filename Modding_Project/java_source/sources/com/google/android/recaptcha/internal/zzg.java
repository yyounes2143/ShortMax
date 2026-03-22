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
final class zzg extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zze zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzg(zze zzeVar, String str, long j10, c cVar) {
        super(2, cVar);
        this.zzb = zzeVar;
        this.zzc = str;
        this.zzd = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzg(this.zzb, this.zzc, this.zzd, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzg) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object zzc;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.zza;
        f.b(obj);
        if (i10 != 0) {
            zzc = ((Result) obj).n();
        } else {
            zze zzeVar = this.zzb;
            String str = this.zzc;
            long j10 = this.zzd;
            this.zza = 1;
            zzc = zzeVar.zzc(str, j10, this);
            if (zzc == f10) {
                return f10;
            }
        }
        return Result.b(zzc);
    }
}
