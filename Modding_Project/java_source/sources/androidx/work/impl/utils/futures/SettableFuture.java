package androidx.work.impl.utils.futures;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.common.util.concurrent.e;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class SettableFuture<V> extends AbstractFuture<V> {
    private SettableFuture() {
    }

    public static <V> SettableFuture<V> create() {
        return new SettableFuture<>();
    }

    @Override // androidx.work.impl.utils.futures.AbstractFuture
    public boolean set(@Nullable V v10) {
        return super.set(v10);
    }

    @Override // androidx.work.impl.utils.futures.AbstractFuture
    public boolean setException(Throwable th2) {
        return super.setException(th2);
    }

    @Override // androidx.work.impl.utils.futures.AbstractFuture
    public boolean setFuture(e<? extends V> eVar) {
        return super.setFuture(eVar);
    }
}
