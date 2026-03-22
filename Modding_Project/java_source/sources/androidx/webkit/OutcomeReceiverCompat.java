package androidx.webkit;

import androidx.webkit.Profile;
import java.lang.Throwable;
@Profile.ExperimentalUrlPrefetch
/* loaded from: classes2.dex */
public interface OutcomeReceiverCompat<T, E extends Throwable> {
    void onResult(T t10);

    default void onError(E e10) {
    }
}
