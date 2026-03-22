package com.google.android.recaptcha.internal;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzcs extends ContinuationImpl {
    Object zza;
    Object zzb;
    Object zzc;
    long zzd;
    /* synthetic */ Object zze;
    final /* synthetic */ zzcv zzf;
    int zzg;
    String zzh;
    zzch zzi;
    zzbi zzj;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcs(zzcv zzcvVar, c cVar) {
        super(cVar);
        this.zzf = zzcvVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.zze = obj;
        this.zzg |= Integer.MIN_VALUE;
        return this.zzf.zzg(null, 0L, null, null, null, this);
    }
}
