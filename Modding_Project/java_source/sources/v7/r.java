package v7;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzaen;
import com.google.android.gms.internal.p003firebaseauthapi.zzafz;
import com.google.android.gms.internal.p003firebaseauthapi.zzagl;
import com.google.android.gms.internal.p003firebaseauthapi.zzahr;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.IntegrityManager;
import com.google.android.play.core.integrity.IntegrityManagerFactory;
import com.google.android.play.core.integrity.IntegrityTokenResponse;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseAuthException;
import com.google.firebase.auth.FirebaseAuthMissingActivityForRecaptchaException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public class r {

    /* renamed from: b  reason: collision with root package name */
    private static final String f68812b = "r";

    /* renamed from: c  reason: collision with root package name */
    private static final r f68813c = new r();

    /* renamed from: a  reason: collision with root package name */
    private String f68814a;

    private r() {
    }

    public static r b() {
        return f68813c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(final FirebaseAuth firebaseAuth, String str, final Activity activity, boolean z10, boolean z11, final n0 n0Var, final TaskCompletionSource<u0> taskCompletionSource) {
        Task<zzahr> m10;
        if (z10 && !z11) {
            IntegrityManager create = IntegrityManagerFactory.create(firebaseAuth.b().l());
            if (!TextUtils.isEmpty(this.f68814a)) {
                m10 = Tasks.forResult(new zzahr(this.f68814a));
            } else {
                m10 = firebaseAuth.m();
            }
            m10.continueWithTask(firebaseAuth.N(), new p0(this, str, create)).addOnCompleteListener(new OnCompleteListener() { // from class: v7.o0
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    r.f(r.this, taskCompletionSource, firebaseAuth, n0Var, activity, task);
                }
            });
            return;
        }
        d(firebaseAuth, n0Var, activity, taskCompletionSource);
    }

    private final void d(FirebaseAuth firebaseAuth, n0 n0Var, Activity activity, TaskCompletionSource<u0> taskCompletionSource) {
        Task<String> task;
        if (activity == null) {
            taskCompletionSource.setException(new FirebaseAuthMissingActivityForRecaptchaException());
            return;
        }
        v.d(firebaseAuth.b().l(), firebaseAuth);
        Preconditions.checkNotNull(activity);
        TaskCompletionSource<String> taskCompletionSource2 = new TaskCompletionSource<>();
        if (!q.a().e(activity, taskCompletionSource2)) {
            task = Tasks.forException(zzaen.zza(new Status(17057, "reCAPTCHA flow already in progress")));
        } else {
            new zzafz(firebaseAuth, activity).zza();
            task = taskCompletionSource2.getTask();
        }
        task.addOnSuccessListener(new r0(this, taskCompletionSource)).addOnFailureListener(new s0(this, taskCompletionSource));
    }

    public static /* synthetic */ void e(r rVar, TaskCompletionSource taskCompletionSource, FirebaseAuth firebaseAuth, RecaptchaAction recaptchaAction, String str, Activity activity, boolean z10, boolean z11, n0 n0Var, Task task) {
        if (!task.isSuccessful()) {
            String str2 = f68812b;
            String message = task.getException().getMessage();
            Log.e(str2, "Failed to initialize reCAPTCHA config: " + message);
        }
        if (firebaseAuth.E() != null && firebaseAuth.E().e("PHONE_PROVIDER")) {
            firebaseAuth.E().b(firebaseAuth.g(), Boolean.FALSE, recaptchaAction).addOnSuccessListener(new q0(rVar, taskCompletionSource)).addOnFailureListener(new h0(rVar, firebaseAuth, str, activity, z10, z11, n0Var, taskCompletionSource));
        } else {
            rVar.c(firebaseAuth, str, activity, z10, z11, n0Var, taskCompletionSource);
        }
    }

    public static /* synthetic */ void f(r rVar, TaskCompletionSource taskCompletionSource, FirebaseAuth firebaseAuth, n0 n0Var, Activity activity, Task task) {
        String message;
        if (task.isSuccessful() && task.getResult() != null && !TextUtils.isEmpty(((IntegrityTokenResponse) task.getResult()).token())) {
            taskCompletionSource.setResult(new x0().a(((IntegrityTokenResponse) task.getResult()).token()).b());
            return;
        }
        if (task.getException() == null) {
            message = "";
        } else {
            message = task.getException().getMessage();
        }
        String str = f68812b;
        Log.e(str, "Play Integrity Token fetch failed, falling back to Recaptcha" + message);
        rVar.d(firebaseAuth, n0Var, activity, taskCompletionSource);
    }

    public static boolean i(Exception exc) {
        if (!(exc instanceof FirebaseAuthMissingActivityForRecaptchaException)) {
            if (!(exc instanceof FirebaseAuthException) || !((FirebaseAuthException) exc).b().endsWith("UNAUTHORIZED_DOMAIN")) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final Task<u0> a(final FirebaseAuth firebaseAuth, @Nullable final String str, @Nullable final Activity activity, final boolean z10, boolean z11, boolean z12, final RecaptchaAction recaptchaAction) {
        boolean z13;
        e eVar = (e) firebaseAuth.e();
        final n0 d10 = n0.d();
        if (!zzagl.zza(firebaseAuth.b()) && !eVar.e()) {
            String str2 = f68812b;
            boolean c10 = eVar.c();
            Log.i(str2, "ForceRecaptchaV2Flow from phoneAuthOptions = " + z11 + ", ForceRecaptchav2Flow from firebaseSettings = " + c10);
            if (!z11 && !eVar.c()) {
                z13 = false;
            } else {
                z13 = true;
            }
            boolean z14 = z13;
            final TaskCompletionSource<u0> taskCompletionSource = new TaskCompletionSource<>();
            Task<String> c11 = d10.c();
            if (c11 != null) {
                if (c11.isSuccessful()) {
                    return Tasks.forResult(new x0().d(c11.getResult()).b());
                }
                String message = c11.getException().getMessage();
                Log.e(str2, "Error in previous reCAPTCHAV2 flow: " + message);
                Log.e(str2, "Continuing with application verification as normal");
            }
            if (!z14 && !z12) {
                firebaseAuth.i().addOnCompleteListener(new OnCompleteListener() { // from class: v7.c
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        r.e(r.this, taskCompletionSource, firebaseAuth, recaptchaAction, str, activity, z10, r8, d10, task);
                    }
                });
            } else {
                c(firebaseAuth, str, activity, z10, z14, d10, taskCompletionSource);
            }
            return taskCompletionSource.getTask();
        }
        return Tasks.forResult(new x0().b());
    }
}
