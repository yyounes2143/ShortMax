package com.google.android.recaptcha.internal;

import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzbv implements Executor {
    @NotNull
    public static final zzbv zza = new zzbv();

    private zzbv() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(@NotNull Runnable runnable) {
        runnable.run();
    }
}
