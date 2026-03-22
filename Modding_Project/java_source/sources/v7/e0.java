package v7;

import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzac;
import com.google.android.gms.internal.p003firebaseauthapi.zzahs;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.android.recaptcha.RecaptchaTasksClient;
import com.google.firebase.auth.FirebaseAuth;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class e0 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f68751a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Task<RecaptchaTasksClient>> f68752b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private zzahs f68753c;

    /* renamed from: d  reason: collision with root package name */
    com.google.firebase.f f68754d;

    /* renamed from: e  reason: collision with root package name */
    private FirebaseAuth f68755e;

    /* renamed from: f  reason: collision with root package name */
    a0 f68756f;

    public e0(com.google.firebase.f fVar, FirebaseAuth firebaseAuth) {
        this(fVar, firebaseAuth, new c0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(e0 e0Var, zzahs zzahsVar, Task task, String str) {
        synchronized (e0Var.f68751a) {
            e0Var.f68753c = zzahsVar;
            e0Var.f68752b.put(str, task);
        }
    }

    @Nullable
    private final Task<RecaptchaTasksClient> f(String str) {
        Task<RecaptchaTasksClient> task;
        synchronized (this.f68751a) {
            task = this.f68752b.get(str);
        }
        return task;
    }

    private static String g(@Nullable String str) {
        if (zzac.zzc(str)) {
            return ProxyConfig.MATCH_ALL_SCHEMES;
        }
        return str;
    }

    public final Task<RecaptchaTasksClient> a(@Nullable String str, Boolean bool) {
        Task<RecaptchaTasksClient> f10;
        String g10 = g(str);
        if (!bool.booleanValue() && (f10 = f(g10)) != null) {
            return f10;
        }
        return this.f68755e.q("RECAPTCHA_ENTERPRISE").continueWithTask(new d0(this, g10));
    }

    public final Task<String> b(@Nullable String str, Boolean bool, RecaptchaAction recaptchaAction) {
        String g10 = g(str);
        Task<RecaptchaTasksClient> f10 = f(g10);
        if (bool.booleanValue() || f10 == null) {
            f10 = a(g10, bool);
        }
        return f10.continueWithTask(new g0(this, recaptchaAction));
    }

    public final boolean d(String str) {
        String zzb;
        Preconditions.checkNotNull(str);
        zzahs zzahsVar = this.f68753c;
        if (zzahsVar == null || (zzb = zzahsVar.zzb(str)) == null) {
            return false;
        }
        return zzb.equals("AUDIT");
    }

    public final boolean e(String str) {
        boolean z10;
        synchronized (this.f68751a) {
            try {
                zzahs zzahsVar = this.f68753c;
                if (zzahsVar != null && zzahsVar.zzc(str)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } finally {
            }
        }
        return z10;
    }

    private e0(com.google.firebase.f fVar, FirebaseAuth firebaseAuth, a0 a0Var) {
        this.f68751a = new Object();
        this.f68752b = new HashMap();
        this.f68754d = fVar;
        this.f68755e = firebaseAuth;
        this.f68756f = a0Var;
    }
}
