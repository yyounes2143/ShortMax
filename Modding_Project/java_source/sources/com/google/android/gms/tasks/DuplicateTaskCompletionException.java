package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-tasks@@18.1.0 */
/* loaded from: classes5.dex */
public final class DuplicateTaskCompletionException extends IllegalStateException {
    private DuplicateTaskCompletionException(String str, @Nullable Throwable th2) {
        super(str, th2);
    }

    @NonNull
    public static IllegalStateException of(@NonNull Task<?> task) {
        String str;
        if (!task.isComplete()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception exception = task.getException();
        if (exception != null) {
            str = "failure";
        } else if (task.isSuccessful()) {
            str = "result ".concat(String.valueOf(task.getResult()));
        } else if (task.isCanceled()) {
            str = "cancellation";
        } else {
            str = "unknown issue";
        }
        return new DuplicateTaskCompletionException("Complete with: ".concat(str), exception);
    }
}
