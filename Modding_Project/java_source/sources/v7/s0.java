package v7;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.FirebaseAuthException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class s0 implements OnFailureListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ TaskCompletionSource f68819a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0(r rVar, TaskCompletionSource taskCompletionSource) {
        this.f68819a = taskCompletionSource;
        Objects.requireNonNull(rVar);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(@NonNull Exception exc) {
        String str;
        str = r.f68812b;
        Log.e(str, String.format("Failed to get reCAPTCHA token with error [%s]- calling backend without app verification", exc.getMessage()));
        if ((exc instanceof FirebaseAuthException) && ((FirebaseAuthException) exc).b().endsWith("UNAUTHORIZED_DOMAIN")) {
            this.f68819a.setException(exc);
        } else {
            this.f68819a.setResult(new x0().b());
        }
    }
}
