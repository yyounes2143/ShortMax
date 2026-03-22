package com.google.firebase.auth;

import com.google.android.gms.internal.p003firebaseauthapi.zzac;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.recaptcha.RecaptchaTasksClient;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class q implements Continuation<RecaptchaTasksClient, Task<Void>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public q(FirebaseAuth firebaseAuth) {
        Objects.requireNonNull(firebaseAuth);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<Void> then(Task<RecaptchaTasksClient> task) throws Exception {
        String str;
        if (task.isSuccessful()) {
            return Tasks.forResult(null);
        }
        Exception exception = task.getException();
        if (exception != null) {
            str = exception.getMessage();
        } else {
            str = "";
        }
        return Tasks.forException(new FirebaseAuthException("INTERNAL_ERROR", zzac.zzb(str)));
    }
}
