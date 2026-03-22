package v7;

import android.app.Application;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.Recaptcha;
import com.google.android.recaptcha.RecaptchaTasksClient;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
final class c0 implements a0 {
    @Override // v7.a0
    public final Task<RecaptchaTasksClient> a(Application application, String str) {
        return Recaptcha.fetchTaskClient(application, str);
    }
}
