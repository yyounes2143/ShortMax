package v7;

import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.firebase.FirebaseNetworkException;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
final class m implements OnFailureListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ n f68794a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(n nVar) {
        Objects.requireNonNull(nVar);
        this.f68794a = nVar;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        Logger logger;
        if (exc instanceof FirebaseNetworkException) {
            logger = k.f68783h;
            logger.v("Failure to refresh token; scheduling refresh after failure", new Object[0]);
            this.f68794a.f68796b.d();
        }
    }
}
