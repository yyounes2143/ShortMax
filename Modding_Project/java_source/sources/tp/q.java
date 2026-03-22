package tp;

import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
/* loaded from: classes8.dex */
public interface q<T> extends yq.l<T> {
    @Override // yq.l
    @CallSuper
    default void b(@NonNull Throwable th2) {
        s.h(th2);
    }
}
