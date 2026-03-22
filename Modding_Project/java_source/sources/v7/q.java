package v7;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.VisibleForTesting;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class q {

    /* renamed from: c  reason: collision with root package name */
    private static q f68808c;

    /* renamed from: a  reason: collision with root package name */
    private boolean f68809a = false;

    /* renamed from: b  reason: collision with root package name */
    private BroadcastReceiver f68810b;

    private q() {
    }

    public static q a() {
        if (f68808c == null) {
            f68808c = new q();
        }
        return f68808c;
    }

    private final void b(Activity activity, BroadcastReceiver broadcastReceiver) {
        this.f68810b = broadcastReceiver;
        LocalBroadcastManager.getInstance(activity).registerReceiver(broadcastReceiver, new IntentFilter("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public static void c(Context context) {
        q qVar = f68808c;
        qVar.f68809a = false;
        if (qVar.f68810b != null) {
            LocalBroadcastManager.getInstance(context).unregisterReceiver(f68808c.f68810b);
        }
        f68808c.f68810b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(q qVar, Intent intent, TaskCompletionSource taskCompletionSource, Context context) {
        taskCompletionSource.setResult(intent.getStringExtra("com.google.firebase.auth.internal.RECAPTCHA_TOKEN"));
        c(context);
    }

    public final boolean e(Activity activity, TaskCompletionSource<String> taskCompletionSource) {
        if (!this.f68809a) {
            b(activity, new s(this, activity, taskCompletionSource));
            this.f68809a = true;
            return true;
        }
        return false;
    }
}
