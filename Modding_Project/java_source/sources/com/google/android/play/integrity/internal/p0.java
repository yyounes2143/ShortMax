package com.google.android.play.integrity.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public abstract class p0 implements Runnable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final TaskCompletionSource f20012a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0() {
        this.f20012a = null;
    }

    public void a(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f20012a;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    protected abstract void b();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final TaskCompletionSource c() {
        return this.f20012a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            b();
        } catch (Exception e10) {
            a(e10);
        }
    }

    public p0(@Nullable TaskCompletionSource taskCompletionSource) {
        this.f20012a = taskCompletionSource;
    }
}
