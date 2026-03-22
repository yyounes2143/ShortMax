package v7;

import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzaen;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaAction;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
final class b0 implements Continuation {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f68724a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ e0 f68725b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ RecaptchaAction f68726c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ Continuation f68727d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(String str, e0 e0Var, RecaptchaAction recaptchaAction, Continuation continuation) {
        this.f68724a = str;
        this.f68725b = e0Var;
        this.f68726c = recaptchaAction;
        this.f68727d = continuation;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object then(Task task) throws Exception {
        if (!task.isSuccessful() && zzaen.zzc((Exception) Preconditions.checkNotNull(task.getException()))) {
            if (Log.isLoggable("RecaptchaCallWrapper", 4)) {
                String str = this.f68724a;
                Log.i("RecaptchaCallWrapper", "Invalid token - Refreshing Recaptcha Enterprise config and fetching new token for tenant " + str);
            }
            return this.f68725b.b(this.f68724a, Boolean.TRUE, this.f68726c).continueWithTask(this.f68727d);
        }
        return task;
    }
}
