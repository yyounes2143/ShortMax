package com.google.firebase.messaging;

import android.annotation.TargetApi;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: CommonNotificationBuilder.java */
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicInteger f21174a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    /* compiled from: CommonNotificationBuilder.java */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final NotificationCompat.Builder f21175a;

        /* renamed from: b  reason: collision with root package name */
        public final String f21176b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21177c;

        a(NotificationCompat.Builder builder, String str, int i10) {
            this.f21175a = builder;
            this.f21176b = str;
            this.f21177c = i10;
        }
    }

    @Nullable
    private static PendingIntent a(Context context, i0 i0Var, String str, PackageManager packageManager) {
        Intent f10 = f(str, i0Var, packageManager);
        if (f10 == null) {
            return null;
        }
        f10.addFlags(67108864);
        f10.putExtras(i0Var.y());
        if (q(i0Var)) {
            f10.putExtra("gcm.n.analytics_data", i0Var.x());
        }
        return PendingIntent.getActivity(context, g(), f10, l(1073741824));
    }

    @Nullable
    private static PendingIntent b(Context context, Context context2, i0 i0Var) {
        if (!q(i0Var)) {
            return null;
        }
        return c(context, context2, new Intent(CloudMessagingReceiver.IntentActionKeys.NOTIFICATION_DISMISS).putExtras(i0Var.x()));
    }

    private static PendingIntent c(Context context, Context context2, Intent intent) {
        return PendingIntent.getBroadcast(context, g(), new Intent("com.google.android.c2dm.intent.RECEIVE").setPackage(context2.getPackageName()).putExtra(CloudMessagingReceiver.IntentKeys.WRAPPED_INTENT, intent), l(1073741824));
    }

    public static a d(Context context, Context context2, i0 i0Var, String str, Bundle bundle) {
        String packageName = context2.getPackageName();
        Resources resources = context2.getResources();
        PackageManager packageManager = context2.getPackageManager();
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context2, str);
        String n10 = i0Var.n(resources, packageName, "gcm.n.title");
        if (!TextUtils.isEmpty(n10)) {
            builder.setContentTitle(n10);
        }
        String n11 = i0Var.n(resources, packageName, "gcm.n.body");
        if (!TextUtils.isEmpty(n11)) {
            builder.setContentText(n11);
            builder.setStyle(new NotificationCompat.BigTextStyle().bigText(n11));
        }
        builder.setSmallIcon(m(packageManager, resources, packageName, i0Var.p("gcm.n.icon"), bundle));
        Uri n12 = n(packageName, i0Var, resources);
        if (n12 != null) {
            builder.setSound(n12);
        }
        builder.setContentIntent(a(context, i0Var, packageName, packageManager));
        PendingIntent b10 = b(context, context2, i0Var);
        if (b10 != null) {
            builder.setDeleteIntent(b10);
        }
        Integer h10 = h(context2, i0Var.p("gcm.n.color"), bundle);
        if (h10 != null) {
            builder.setColor(h10.intValue());
        }
        builder.setAutoCancel(!i0Var.a("gcm.n.sticky"));
        builder.setLocalOnly(i0Var.a("gcm.n.local_only"));
        String p10 = i0Var.p("gcm.n.ticker");
        if (p10 != null) {
            builder.setTicker(p10);
        }
        Integer m10 = i0Var.m();
        if (m10 != null) {
            builder.setPriority(m10.intValue());
        }
        Integer r10 = i0Var.r();
        if (r10 != null) {
            builder.setVisibility(r10.intValue());
        }
        Integer l10 = i0Var.l();
        if (l10 != null) {
            builder.setNumber(l10.intValue());
        }
        Long j10 = i0Var.j("gcm.n.event_time");
        if (j10 != null) {
            builder.setShowWhen(true);
            builder.setWhen(j10.longValue());
        }
        long[] q10 = i0Var.q();
        if (q10 != null) {
            builder.setVibrate(q10);
        }
        int[] e10 = i0Var.e();
        if (e10 != null) {
            builder.setLights(e10[0], e10[1], e10[2]);
        }
        builder.setDefaults(i(i0Var));
        return new a(builder, o(i0Var), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a e(Context context, i0 i0Var) {
        Bundle j10 = j(context.getPackageManager(), context.getPackageName());
        return d(context, context, i0Var, k(context, i0Var.k(), j10), j10);
    }

    private static Intent f(String str, i0 i0Var, PackageManager packageManager) {
        String p10 = i0Var.p("gcm.n.click_action");
        if (!TextUtils.isEmpty(p10)) {
            Intent intent = new Intent(p10);
            intent.setPackage(str);
            intent.setFlags(268435456);
            return intent;
        }
        Uri f10 = i0Var.f();
        if (f10 != null) {
            Intent intent2 = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
            intent2.setPackage(str);
            intent2.setData(f10);
            return intent2;
        }
        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            Log.w("FirebaseMessaging", "No activity found to launch app");
        }
        return launchIntentForPackage;
    }

    private static int g() {
        return f21174a.incrementAndGet();
    }

    private static Integer h(Context context, String str, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                Log.w("FirebaseMessaging", "Color is invalid: " + str + ". Notification will use default color.");
            }
        }
        int i10 = bundle.getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i10 != 0) {
            try {
                return Integer.valueOf(ContextCompat.getColor(context, i10));
            } catch (Resources.NotFoundException unused2) {
                Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int i(i0 i0Var) {
        boolean a10 = i0Var.a("gcm.n.default_sound");
        ?? r02 = a10;
        if (i0Var.a("gcm.n.default_vibrate_timings")) {
            r02 = (a10 ? 1 : 0) | true;
        }
        if (i0Var.a("gcm.n.default_light_settings")) {
            return r02 | 4;
        }
        return r02;
    }

    private static Bundle j(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (applicationInfo != null) {
                Bundle bundle = applicationInfo.metaData;
                if (bundle != null) {
                    return bundle;
                }
            }
        } catch (PackageManager.NameNotFoundException e10) {
            Log.w("FirebaseMessaging", "Couldn't get own application info: " + e10);
        }
        return Bundle.EMPTY;
    }

    @TargetApi(26)
    @VisibleForTesting
    public static String k(Context context, String str, Bundle bundle) {
        NotificationChannel notificationChannel;
        String string;
        NotificationChannel notificationChannel2;
        NotificationChannel notificationChannel3;
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion < 26) {
                return null;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (!TextUtils.isEmpty(str)) {
                notificationChannel3 = notificationManager.getNotificationChannel(str);
                if (notificationChannel3 != null) {
                    return str;
                }
                Log.w("FirebaseMessaging", "Notification Channel requested (" + str + ") has not been created by the app. Manifest configuration, or default, value will be used.");
            }
            String string2 = bundle.getString("com.google.firebase.messaging.default_notification_channel_id");
            if (!TextUtils.isEmpty(string2)) {
                notificationChannel2 = notificationManager.getNotificationChannel(string2);
                if (notificationChannel2 != null) {
                    return string2;
                }
                Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
            } else {
                Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
            }
            notificationChannel = notificationManager.getNotificationChannel("fcm_fallback_notification_channel");
            if (notificationChannel == null) {
                int identifier = context.getResources().getIdentifier("fcm_fallback_notification_channel_label", TypedValues.Custom.S_STRING, context.getPackageName());
                if (identifier == 0) {
                    Log.e("FirebaseMessaging", "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name.");
                    string = "Misc";
                } else {
                    string = context.getString(identifier);
                }
                notificationManager.createNotificationChannel(androidx.browser.trusted.f.a("fcm_fallback_notification_channel", string, 3));
            }
            return "fcm_fallback_notification_channel";
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private static int l(int i10) {
        return i10 | 67108864;
    }

    private static int m(PackageManager packageManager, Resources resources, String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str2)) {
            int identifier = resources.getIdentifier(str2, "drawable", str);
            if (identifier != 0 && p(resources, identifier)) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str2, "mipmap", str);
            if (identifier2 != 0 && p(resources, identifier2)) {
                return identifier2;
            }
            Log.w("FirebaseMessaging", "Icon resource " + str2 + " not found. Notification will use default icon.");
        }
        int i10 = bundle.getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (i10 == 0 || !p(resources, i10)) {
            try {
                i10 = packageManager.getApplicationInfo(str, 0).icon;
            } catch (PackageManager.NameNotFoundException e10) {
                Log.w("FirebaseMessaging", "Couldn't get own application info: " + e10);
            }
        }
        if (i10 == 0 || !p(resources, i10)) {
            return 17301651;
        }
        return i10;
    }

    private static Uri n(String str, i0 i0Var, Resources resources) {
        String o10 = i0Var.o();
        if (TextUtils.isEmpty(o10)) {
            return null;
        }
        if (!DataLoaderHelper.PRELOAD_DEFAULT_SCENE.equals(o10) && resources.getIdentifier(o10, "raw", str) != 0) {
            return Uri.parse("android.resource://" + str + "/raw/" + o10);
        }
        return RingtoneManager.getDefaultUri(2);
    }

    private static String o(i0 i0Var) {
        String p10 = i0Var.p("gcm.n.tag");
        if (!TextUtils.isEmpty(p10)) {
            return p10;
        }
        return "FCM-Notification:" + SystemClock.uptimeMillis();
    }

    @TargetApi(26)
    private static boolean p(Resources resources, int i10) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!c.a(resources.getDrawable(i10, null))) {
                return true;
            }
            Log.e("FirebaseMessaging", "Adaptive icons cannot be used in notifications. Ignoring icon id: " + i10);
            return false;
        } catch (Resources.NotFoundException unused) {
            Log.e("FirebaseMessaging", "Couldn't find resource " + i10 + ", treating it as an invalid icon");
            return false;
        }
    }

    static boolean q(@NonNull i0 i0Var) {
        return i0Var.a("google.c.a.e");
    }
}
