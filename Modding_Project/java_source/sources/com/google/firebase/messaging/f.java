package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.d;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: DisplayNotification.java */
/* loaded from: classes5.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f21188a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f21189b;

    /* renamed from: c  reason: collision with root package name */
    private final i0 f21190c;

    public f(Context context, i0 i0Var, ExecutorService executorService) {
        this.f21188a = executorService;
        this.f21189b = context;
        this.f21190c = i0Var;
    }

    private boolean b() {
        if (((KeyguardManager) this.f21189b.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        if (!PlatformVersion.isAtLeastLollipop()) {
            SystemClock.sleep(10L);
        }
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f21189b.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid) {
                if (runningAppProcessInfo.importance != 100) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    private void c(d.a aVar) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Showing notification");
        }
        ((NotificationManager) this.f21189b.getSystemService("notification")).notify(aVar.f21176b, aVar.f21177c, aVar.f21175a.build());
    }

    @Nullable
    private e0 d() {
        e0 l10 = e0.l(this.f21190c.p("gcm.n.image"));
        if (l10 != null) {
            l10.p(this.f21188a);
        }
        return l10;
    }

    private void e(NotificationCompat.Builder builder, @Nullable e0 e0Var) {
        if (e0Var == null) {
            return;
        }
        try {
            Bitmap bitmap = (Bitmap) Tasks.await(e0Var.m(), 5L, TimeUnit.SECONDS);
            builder.setLargeIcon(bitmap);
            builder.setStyle(new NotificationCompat.BigPictureStyle().bigPicture(bitmap).bigLargeIcon((Bitmap) null));
        } catch (InterruptedException unused) {
            Log.w("FirebaseMessaging", "Interrupted while downloading image, showing notification without it");
            e0Var.close();
            Thread.currentThread().interrupt();
        } catch (ExecutionException e10) {
            Log.w("FirebaseMessaging", "Failed to download image: " + e10.getCause());
        } catch (TimeoutException unused2) {
            Log.w("FirebaseMessaging", "Failed to download image in time, showing notification without it");
            e0Var.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        if (this.f21190c.a("gcm.n.noui")) {
            return true;
        }
        if (b()) {
            return false;
        }
        e0 d10 = d();
        d.a e10 = d.e(this.f21189b, this.f21190c);
        e(e10.f21175a, d10);
        c(e10);
        return true;
    }
}
