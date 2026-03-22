package com.google.android.recaptcha.internal;

import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.TaskCompletionSource;
import gt.k0;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzar extends Lambda implements Function1 {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ k0 zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzar(TaskCompletionSource taskCompletionSource, k0 k0Var) {
        super(1);
        this.zza = taskCompletionSource;
        this.zzb = k0Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        Exception exc;
        Throwable th2 = (Throwable) obj;
        if (th2 instanceof CancellationException) {
            this.zza.setException((Exception) th2);
        } else {
            Throwable completionExceptionOrNull = this.zzb.getCompletionExceptionOrNull();
            if (completionExceptionOrNull == null) {
                this.zza.setResult(this.zzb.getCompleted());
            } else {
                TaskCompletionSource taskCompletionSource = this.zza;
                if (completionExceptionOrNull instanceof Exception) {
                    exc = (Exception) completionExceptionOrNull;
                } else {
                    exc = null;
                }
                if (exc == null) {
                    exc = new RuntimeExecutionException(completionExceptionOrNull);
                }
                taskCompletionSource.setException(exc);
            }
        }
        return Unit.f60915a;
    }
}
