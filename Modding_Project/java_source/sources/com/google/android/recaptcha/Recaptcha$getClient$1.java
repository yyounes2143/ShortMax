package com.google.android.recaptcha;

import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class Recaptcha$getClient$1 extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ Recaptcha zzb;
    int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recaptcha$getClient$1(Recaptcha recaptcha, c cVar) {
        super(cVar);
        this.zzb = recaptcha;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        Object m4669getClientBWLJW6A = this.zzb.m4669getClientBWLJW6A(null, null, 0L, this);
        if (m4669getClientBWLJW6A == a.f()) {
            return m4669getClientBWLJW6A;
        }
        return Result.b(m4669getClientBWLJW6A);
    }
}
