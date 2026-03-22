package b7;

import android.annotation.SuppressLint;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import androidx.annotation.StringRes;
/* compiled from: NotificationUtil.java */
@SuppressLint({"InlinedApi"})
/* loaded from: classes4.dex */
public final class e0 {
    public static void a(Context context, String str, @StringRes int i10, @StringRes int i11, int i12) {
        if (s0.f2506a >= 26) {
            NotificationManager notificationManager = (NotificationManager) a.e((NotificationManager) context.getSystemService("notification"));
            d0.a();
            NotificationChannel a10 = androidx.browser.trusted.f.a(str, context.getString(i10), i12);
            if (i11 != 0) {
                a10.setDescription(context.getString(i11));
            }
            notificationManager.createNotificationChannel(a10);
        }
    }
}
