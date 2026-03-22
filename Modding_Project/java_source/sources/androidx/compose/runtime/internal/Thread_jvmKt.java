package androidx.compose.runtime.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Thread.jvm.kt */
@Metadata
/* loaded from: classes.dex */
public final class Thread_jvmKt {
    public static final long currentThreadId() {
        return Thread.currentThread().getId();
    }

    @NotNull
    public static final String currentThreadName() {
        return Thread.currentThread().getName();
    }
}
