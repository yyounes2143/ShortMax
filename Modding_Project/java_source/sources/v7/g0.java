package v7;

import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.android.recaptcha.RecaptchaTasksClient;
import com.google.firebase.auth.internal.zzbu;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
final class g0 implements Continuation<RecaptchaTasksClient, Task<String>> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ RecaptchaAction f68765a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(e0 e0Var, RecaptchaAction recaptchaAction) {
        this.f68765a = recaptchaAction;
        Objects.requireNonNull(e0Var);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<String> then(Task<RecaptchaTasksClient> task) throws Exception {
        if (task.isSuccessful()) {
            return task.getResult().executeTask(this.f68765a);
        }
        Exception exc = (Exception) Preconditions.checkNotNull(task.getException());
        if (exc instanceof zzbu) {
            if (Log.isLoggable("RecaptchaHandler", 4)) {
                String message = exc.getMessage();
                Log.i("RecaptchaHandler", "Ignoring error related to fetching recaptcha config - " + message);
            }
            return Tasks.forResult("");
        }
        return Tasks.forException(exc);
    }
}
