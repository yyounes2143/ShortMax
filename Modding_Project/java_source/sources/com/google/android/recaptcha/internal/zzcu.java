package com.google.android.recaptcha.internal;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzcu extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzcv zzb;
    int zzc;
    zzen zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcu(zzcv zzcvVar, c cVar) {
        super(cVar);
        this.zzb = zzcvVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object zzj;
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        zzj = this.zzb.zzj(null, 0, null, this);
        return zzj;
    }
}
