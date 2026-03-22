package v7;

import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzaen;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.firebase.auth.FirebaseAuth;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public abstract class x<T> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Task a(RecaptchaAction recaptchaAction, FirebaseAuth firebaseAuth, String str, Continuation continuation, Task task) throws Exception {
        if (task.isSuccessful()) {
            return Tasks.forResult(task.getResult());
        }
        Exception exc = (Exception) Preconditions.checkNotNull(task.getException());
        if (zzaen.zzd(exc)) {
            if (Log.isLoggable("RecaptchaCallWrapper", 4)) {
                String valueOf = String.valueOf(recaptchaAction);
                Log.i("RecaptchaCallWrapper", "Falling back to recaptcha enterprise flow for action " + valueOf);
            }
            if (firebaseAuth.E() == null) {
                firebaseAuth.D(new e0(firebaseAuth.b(), firebaseAuth));
            }
            return d(firebaseAuth.E(), recaptchaAction, str, continuation);
        }
        String valueOf2 = String.valueOf(recaptchaAction);
        String message = exc.getMessage();
        Log.e("RecaptchaCallWrapper", "Initial task failed for action " + valueOf2 + "with exception - " + message);
        return Tasks.forException(exc);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> Task<T> d(e0 e0Var, RecaptchaAction recaptchaAction, @Nullable String str, Continuation<String, Task<T>> continuation) {
        Task<String> b10 = e0Var.b(str, Boolean.FALSE, recaptchaAction);
        return b10.continueWithTask(continuation).continueWithTask(new b0(str, e0Var, recaptchaAction, continuation));
    }

    public final Task<T> b(final FirebaseAuth firebaseAuth, @Nullable final String str, final RecaptchaAction recaptchaAction, String str2) {
        final Continuation continuation = new Continuation() { // from class: v7.y
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                x xVar = x.this;
                if (!task.isSuccessful()) {
                    String message = ((Exception) Preconditions.checkNotNull(task.getException())).getMessage();
                    Log.e("RecaptchaCallWrapper", "Failed to get Recaptcha token, error - " + message + "\n\n Failing open with a fake token.");
                    return xVar.c("NO_RECAPTCHA");
                }
                return xVar.c((String) task.getResult());
            }
        };
        e0 E = firebaseAuth.E();
        if (E != null && E.e(str2)) {
            return d(E, recaptchaAction, str, continuation);
        }
        return (Task<T>) c(null).continueWithTask(new Continuation() { // from class: v7.z
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return x.a(RecaptchaAction.this, firebaseAuth, str, continuation, task);
            }
        });
    }

    public abstract Task<T> c(@Nullable String str);
}
