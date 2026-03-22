package com.moloco.sdk.internal.utils;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class f implements CoroutineContext.b<e> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final qt.a f33590a;

    public f(@NotNull qt.a mutex) {
        Intrinsics.checkNotNullParameter(mutex, "mutex");
        this.f33590a = mutex;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof f) && Intrinsics.areEqual(this.f33590a, ((f) obj).f33590a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f33590a.hashCode();
    }

    @NotNull
    public String toString() {
        return "ReentrantMutexContextKey(mutex=" + this.f33590a + ')';
    }
}
