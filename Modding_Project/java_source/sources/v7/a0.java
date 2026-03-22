package v7;

import android.app.Application;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaTasksClient;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public interface a0 {
    Task<RecaptchaTasksClient> a(Application application, String str);
}
