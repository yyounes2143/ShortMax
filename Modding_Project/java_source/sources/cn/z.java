package cn;

import android.annotation.SuppressLint;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import androidx.annotation.StringRes;
/* compiled from: NotificationUtil.java */
@SuppressLint({"InlinedApi"})
/* loaded from: classes8.dex */
public final class z {
    public static void a(Context context, String str, @StringRes int i10, @StringRes int i11, int i12) {
        if (m0.f3614a >= 26) {
            NotificationManager notificationManager = (NotificationManager) a.e((NotificationManager) context.getSystemService("notification"));
            b7.d0.a();
            NotificationChannel a10 = androidx.browser.trusted.f.a(str, context.getString(i10), i12);
            if (i11 != 0) {
                a10.setDescription(context.getString(i11));
            }
            notificationManager.createNotificationChannel(a10);
        }
    }
}
