package v7;

import android.app.Application;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzac;
import com.google.android.gms.internal.p003firebaseauthapi.zzahs;
import com.google.android.gms.internal.p003firebaseauthapi.zzt;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.recaptcha.RecaptchaTasksClient;
import com.google.firebase.auth.internal.zzbu;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class d0 implements Continuation<zzahs, Task<RecaptchaTasksClient>> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f68745a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ e0 f68746b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(e0 e0Var, String str) {
        this.f68745a = str;
        Objects.requireNonNull(e0Var);
        this.f68746b = e0Var;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<RecaptchaTasksClient> then(Task<zzahs> task) throws Exception {
        String str;
        if (!task.isSuccessful()) {
            return Tasks.forException(new zzbu((String) Preconditions.checkNotNull(((Exception) Preconditions.checkNotNull(task.getException())).getMessage())));
        }
        zzahs result = task.getResult();
        String zza = result.zza();
        if (zzac.zzc(zza)) {
            String str2 = this.f68745a;
            return Tasks.forException(new zzbu("No Recaptcha Enterprise siteKey configured for tenant/project " + str2));
        }
        List<String> zza2 = zzt.zza('/').zza((CharSequence) zza);
        if (zza2.size() != 4) {
            str = null;
        } else {
            str = zza2.get(3);
        }
        if (TextUtils.isEmpty(str)) {
            return Tasks.forException(new Exception("Invalid siteKey format " + zza));
        }
        if (Log.isLoggable("RecaptchaHandler", 4)) {
            String str3 = this.f68745a;
            Log.i("RecaptchaHandler", "Successfully obtained site key for tenant " + str3);
        }
        e0 e0Var = this.f68746b;
        Task<RecaptchaTasksClient> a10 = e0Var.f68756f.a((Application) e0Var.f68754d.l(), str);
        e0.c(this.f68746b, result, a10, this.f68745a);
        return a10;
    }
}
