package v7;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final String f68795a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ k f68796b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(k kVar, String str) {
        Objects.requireNonNull(kVar);
        this.f68796b = kVar;
        this.f68795a = Preconditions.checkNotEmpty(str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Logger logger;
        FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(com.google.firebase.f.n(this.f68795a));
        if (firebaseAuth.c() != null) {
            Task<com.google.firebase.auth.g> a10 = firebaseAuth.a(true);
            logger = k.f68783h;
            logger.v("Token refreshing started", new Object[0]);
            a10.addOnFailureListener(new m(this));
        }
    }
}
