package com.google.android.recaptcha.internal;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import gt.k0;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzas {
    @NotNull
    public static final Task zza(@NotNull k0 k0Var) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource(new CancellationTokenSource().getToken());
        k0Var.invokeOnCompletion(new zzar(taskCompletionSource, k0Var));
        return taskCompletionSource.getTask();
    }
}
