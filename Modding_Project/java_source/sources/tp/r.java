package tp;

import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
/* loaded from: classes8.dex */
public interface r extends yq.m {
    @Override // yq.m
    @CallSuper
    default void b(@NonNull Throwable th2) {
        s.h(th2);
    }
}
