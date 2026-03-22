package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zza extends ContinuationImpl {
    Object zza;
    long zzb;
    /* synthetic */ Object zzc;
    final /* synthetic */ zze zzd;
    int zze;
    String zzf;
    zzen zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zza(zze zzeVar, c cVar) {
        super(cVar);
        this.zzd = zzeVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.zzc = obj;
        this.zze |= Integer.MIN_VALUE;
        Object zzc = this.zzd.zzc(null, 0L, this);
        if (zzc == kotlin.coroutines.intrinsics.a.f()) {
            return zzc;
        }
        return Result.b(zzc);
    }
}
