package androidx.browser.trusted;

import androidx.annotation.NonNull;
import androidx.concurrent.futures.ResolvableFuture;
/* loaded from: classes.dex */
class FutureUtils {
    private FutureUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static <T> com.google.common.util.concurrent.e<T> immediateFailedFuture(@NonNull Throwable th2) {
        ResolvableFuture create = ResolvableFuture.create();
        create.setException(th2);
        return create;
    }
}
