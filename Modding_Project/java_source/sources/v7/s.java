package v7;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p003firebaseauthapi.zzaen;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class s extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Activity> f68816a;

    /* renamed from: b  reason: collision with root package name */
    private final TaskCompletionSource<String> f68817b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ q f68818c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(q qVar, Activity activity, TaskCompletionSource<String> taskCompletionSource) {
        Objects.requireNonNull(qVar);
        this.f68818c = qVar;
        this.f68816a = new WeakReference<>(activity);
        this.f68817b = taskCompletionSource;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f68816a.get() == null) {
            Log.e("FederatedAuthReceiver", "Failed to unregister BroadcastReceiver because the Activity that launched this flow has been garbage collected; please do not finish() your Activity while performing a FederatedAuthProvider operation.");
            this.f68817b.setException(zzaen.zza(new Status(17499, "Activity that started the web operation is no longer alive; see logcat for details")));
            q.c(context);
        } else if (intent.hasExtra("com.google.firebase.auth.internal.OPERATION")) {
            String stringExtra = intent.getStringExtra("com.google.firebase.auth.internal.OPERATION");
            if ("com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA".equals(stringExtra)) {
                q.d(this.f68818c, intent, this.f68817b, context);
                return;
            }
            TaskCompletionSource<String> taskCompletionSource = this.f68817b;
            taskCompletionSource.setException(zzaen.zza(j.a("WEB_CONTEXT_CANCELED:Unknown operation received (" + stringExtra + ")")));
        } else if (l0.d(intent)) {
            this.f68817b.setException(zzaen.zza(l0.a(intent)));
            q.c(context);
        } else if (intent.hasExtra("com.google.firebase.auth.internal.EXTRA_CANCELED")) {
            this.f68817b.setException(zzaen.zza(j.a("WEB_CONTEXT_CANCELED")));
            q.c(context);
        }
    }
}
