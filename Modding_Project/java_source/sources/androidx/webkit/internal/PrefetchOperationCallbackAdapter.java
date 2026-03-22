package androidx.webkit.internal;

import androidx.webkit.OutcomeReceiverCompat;
import androidx.webkit.PrefetchException;
import androidx.webkit.PrefetchNetworkException;
import androidx.webkit.Profile;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.PrefetchOperationCallbackBoundaryInterface;
/* loaded from: classes2.dex */
public class PrefetchOperationCallbackAdapter {
    private PrefetchOperationCallbackAdapter() {
    }

    @Profile.ExperimentalUrlPrefetch
    public static InvocationHandler buildInvocationHandler(final OutcomeReceiverCompat<Void, PrefetchException> outcomeReceiverCompat) {
        return zt.a.c(new PrefetchOperationCallbackBoundaryInterface() { // from class: androidx.webkit.internal.PrefetchOperationCallbackAdapter.1
            @Override // org.chromium.support_lib_boundary.PrefetchOperationCallbackBoundaryInterface
            public void onFailure(int i10, String str, int i11) {
                if (i10 == 1) {
                    OutcomeReceiverCompat.this.onError(new PrefetchNetworkException(str, i11));
                } else {
                    OutcomeReceiverCompat.this.onError(new PrefetchException(str));
                }
            }

            @Override // org.chromium.support_lib_boundary.PrefetchOperationCallbackBoundaryInterface
            public void onSuccess() {
                OutcomeReceiverCompat.this.onResult(null);
            }
        });
    }
}
