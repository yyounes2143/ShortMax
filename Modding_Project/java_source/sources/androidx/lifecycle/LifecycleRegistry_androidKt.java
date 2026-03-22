package androidx.lifecycle;

import android.annotation.SuppressLint;
import androidx.arch.core.executor.ArchTaskExecutor;
import kotlin.Metadata;
/* compiled from: LifecycleRegistry.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class LifecycleRegistry_androidKt {
    @SuppressLint({"RestrictedApi"})
    public static final boolean isMainThread() {
        return ArchTaskExecutor.getInstance().isMainThread();
    }
}
