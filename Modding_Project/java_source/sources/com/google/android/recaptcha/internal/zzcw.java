package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzcw extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzdc zzb;
    int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcw(zzdc zzdcVar, c cVar) {
        super(cVar);
        this.zzb = zzdcVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        Object mo4670execute0E7RQCE = this.zzb.mo4670execute0E7RQCE(null, 0L, this);
        if (mo4670execute0E7RQCE == kotlin.coroutines.intrinsics.a.f()) {
            return mo4670execute0E7RQCE;
        }
        return Result.b(mo4670execute0E7RQCE);
    }
}
