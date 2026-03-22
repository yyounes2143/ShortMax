package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.adjust.sdk.Constants;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import java.util.concurrent.ExecutionException;
/* compiled from: MessagingAnalytics.java */
/* loaded from: classes5.dex */
public class g0 {
    @VisibleForTesting
    static void A(String str, Bundle bundle) {
        try {
            com.google.firebase.f.m();
            if (bundle == null) {
                bundle = new Bundle();
            }
            Bundle bundle2 = new Bundle();
            String d10 = d(bundle);
            if (d10 != null) {
                bundle2.putString("_nmid", d10);
            }
            String e10 = e(bundle);
            if (e10 != null) {
                bundle2.putString("_nmn", e10);
            }
            String i10 = i(bundle);
            if (!TextUtils.isEmpty(i10)) {
                bundle2.putString("label", i10);
            }
            String g10 = g(bundle);
            if (!TextUtils.isEmpty(g10)) {
                bundle2.putString("message_channel", g10);
            }
            String r10 = r(bundle);
            if (r10 != null) {
                bundle2.putString("_nt", r10);
            }
            String l10 = l(bundle);
            if (l10 != null) {
                try {
                    bundle2.putInt("_nmt", Integer.parseInt(l10));
                } catch (NumberFormatException e11) {
                    Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e11);
                }
            }
            String t10 = t(bundle);
            if (t10 != null) {
                try {
                    bundle2.putInt("_ndt", Integer.parseInt(t10));
                } catch (NumberFormatException e12) {
                    Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e12);
                }
            }
            String n10 = n(bundle);
            if ("_nr".equals(str) || "_nf".equals(str)) {
                bundle2.putString("_nmc", n10);
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Logging to scion event=" + str + " scionPayload=" + bundle2);
            }
            n7.a aVar = (n7.a) com.google.firebase.f.m().j(n7.a.class);
            if (aVar != null) {
                aVar.a(AppMeasurement.FCM_ORIGIN, str, bundle2);
            } else {
                Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
            }
        } catch (IllegalStateException unused) {
            Log.e("FirebaseMessaging", "Default FirebaseApp has not been initialized. Skip logging event to GA.");
        }
    }

    private static void B(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if ("1".equals(bundle.getString("google.c.a.tc"))) {
            n7.a aVar = (n7.a) com.google.firebase.f.m().j(n7.a.class);
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Received event with track-conversion=true. Setting user property and reengagement event");
            }
            if (aVar != null) {
                String string = bundle.getString("google.c.a.c_id");
                aVar.b(AppMeasurement.FCM_ORIGIN, "_ln", string);
                Bundle bundle2 = new Bundle();
                bundle2.putString("source", "Firebase");
                bundle2.putString(Constants.MEDIUM, "notification");
                bundle2.putString(MBInterstitialActivity.INTENT_CAMAPIGN, string);
                aVar.a(AppMeasurement.FCM_ORIGIN, "_cmp", bundle2);
                return;
            }
            Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
        } else if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Received event with track-conversion=false. Do not set user property");
        }
    }

    public static boolean C(Intent intent) {
        if (intent != null && !u(intent)) {
            return a();
        }
        return false;
    }

    public static boolean D(Intent intent) {
        if (intent != null && !u(intent)) {
            return E(intent.getExtras());
        }
        return false;
    }

    public static boolean E(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return "1".equals(bundle.getString("google.c.a.e"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            com.google.firebase.f.m();
            Context l10 = com.google.firebase.f.m().l();
            SharedPreferences sharedPreferences = l10.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("export_to_big_query")) {
                return sharedPreferences.getBoolean("export_to_big_query", false);
            }
            try {
                PackageManager packageManager = l10.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(l10.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                    return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return false;
        } catch (IllegalStateException unused2) {
            Log.i("FirebaseMessaging", "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query");
            return false;
        }
    }

    static MessagingClientEvent b(MessagingClientEvent.Event event, Intent intent) {
        if (intent == null) {
            return null;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = Bundle.EMPTY;
        }
        MessagingClientEvent.a j10 = MessagingClientEvent.p().n(s(extras)).e(event).f(f(extras)).i(o()).l(MessagingClientEvent.SDKPlatform.ANDROID).h(m(extras)).j(k(extras));
        String h10 = h(extras);
        if (h10 != null) {
            j10.g(h10);
        }
        String r10 = r(extras);
        if (r10 != null) {
            j10.m(r10);
        }
        String c10 = c(extras);
        if (c10 != null) {
            j10.c(c10);
        }
        String i10 = i(extras);
        if (i10 != null) {
            j10.b(i10);
        }
        String e10 = e(extras);
        if (e10 != null) {
            j10.d(e10);
        }
        long q10 = q(extras);
        if (q10 > 0) {
            j10.k(q10);
        }
        return j10.a();
    }

    @Nullable
    static String c(Bundle bundle) {
        return bundle.getString("collapse_key");
    }

    @Nullable
    static String d(Bundle bundle) {
        return bundle.getString("google.c.a.c_id");
    }

    @Nullable
    static String e(Bundle bundle) {
        return bundle.getString("google.c.a.c_l");
    }

    @NonNull
    static String f(Bundle bundle) {
        String string = bundle.getString("google.to");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            return (String) Tasks.await(com.google.firebase.installations.c.q(com.google.firebase.f.m()).getId());
        } catch (InterruptedException | ExecutionException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Nullable
    static String g(Bundle bundle) {
        return bundle.getString("google.c.a.m_c");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String h(Bundle bundle) {
        String string = bundle.getString("google.message_id");
        if (string == null) {
            return bundle.getString("message_id");
        }
        return string;
    }

    @Nullable
    static String i(Bundle bundle) {
        return bundle.getString("google.c.a.m_l");
    }

    @NonNull
    private static int j(String str) {
        if (Constants.HIGH.equals(str)) {
            return 1;
        }
        if (Constants.NORMAL.equals(str)) {
            return 2;
        }
        return 0;
    }

    static int k(Bundle bundle) {
        int p10 = p(bundle);
        if (p10 == 2) {
            return 5;
        }
        if (p10 == 1) {
            return 10;
        }
        return 0;
    }

    @Nullable
    static String l(Bundle bundle) {
        return bundle.getString("google.c.a.ts");
    }

    @NonNull
    static MessagingClientEvent.MessageType m(Bundle bundle) {
        if (bundle != null && i0.t(bundle)) {
            return MessagingClientEvent.MessageType.DISPLAY_NOTIFICATION;
        }
        return MessagingClientEvent.MessageType.DATA_MESSAGE;
    }

    @NonNull
    static String n(Bundle bundle) {
        if (bundle != null && i0.t(bundle)) {
            return "display";
        }
        return "data";
    }

    @NonNull
    static String o() {
        return com.google.firebase.f.m().l().getPackageName();
    }

    @NonNull
    static int p(Bundle bundle) {
        String string = bundle.getString("google.delivered_priority");
        if (string == null) {
            if ("1".equals(bundle.getString("google.priority_reduced"))) {
                return 2;
            }
            string = bundle.getString("google.priority");
        }
        return j(string);
    }

    @Nullable
    static long q(Bundle bundle) {
        if (bundle.containsKey("google.c.sender.id")) {
            try {
                return Long.parseLong(bundle.getString("google.c.sender.id"));
            } catch (NumberFormatException e10) {
                Log.w("FirebaseMessaging", "error parsing project number", e10);
            }
        }
        com.google.firebase.f m10 = com.google.firebase.f.m();
        String d10 = m10.p().d();
        if (d10 != null) {
            try {
                return Long.parseLong(d10);
            } catch (NumberFormatException e11) {
                Log.w("FirebaseMessaging", "error parsing sender ID", e11);
            }
        }
        String c10 = m10.p().c();
        if (!c10.startsWith("1:")) {
            try {
                return Long.parseLong(c10);
            } catch (NumberFormatException e12) {
                Log.w("FirebaseMessaging", "error parsing app ID", e12);
            }
        } else {
            String[] split = c10.split(":");
            if (split.length < 2) {
                return 0L;
            }
            String str = split[1];
            if (str.isEmpty()) {
                return 0L;
            }
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException e13) {
                Log.w("FirebaseMessaging", "error parsing app ID", e13);
            }
        }
        return 0L;
    }

    @Nullable
    static String r(Bundle bundle) {
        String string = bundle.getString("from");
        if (string == null || !string.startsWith("/topics/")) {
            return null;
        }
        return string;
    }

    @NonNull
    static int s(Bundle bundle) {
        Object obj = bundle.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof String) {
            try {
                return Integer.parseInt((String) obj);
            } catch (NumberFormatException unused) {
                Log.w("FirebaseMessaging", "Invalid TTL: " + obj);
                return 0;
            }
        }
        return 0;
    }

    @Nullable
    static String t(Bundle bundle) {
        if (bundle.containsKey("google.c.a.udt")) {
            return bundle.getString("google.c.a.udt");
        }
        return null;
    }

    private static boolean u(Intent intent) {
        return FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(intent.getAction());
    }

    public static void v(Intent intent) {
        A("_nd", intent.getExtras());
    }

    public static void w(Intent intent) {
        A("_nf", intent.getExtras());
    }

    public static void x(Bundle bundle) {
        B(bundle);
        A("_no", bundle);
    }

    public static void y(Intent intent) {
        if (D(intent)) {
            A("_nr", intent.getExtras());
        }
        if (C(intent)) {
            z(MessagingClientEvent.Event.MESSAGE_DELIVERED, intent, FirebaseMessaging.s());
        }
    }

    private static void z(MessagingClientEvent.Event event, Intent intent, @Nullable a5.i iVar) {
        if (iVar == null) {
            Log.e("FirebaseMessaging", "TransportFactory is null. Skip exporting message delivery metrics to Big Query");
            return;
        }
        MessagingClientEvent b10 = b(event, intent);
        if (b10 == null) {
            return;
        }
        try {
            iVar.a("FCM_CLIENT_EVENT_LOGGING", c9.a.class, a5.c.b("proto"), new a5.g() { // from class: com.google.firebase.messaging.f0
                @Override // a5.g
                public final Object apply(Object obj) {
                    return ((c9.a) obj).c();
                }
            }).b(a5.d.g(c9.a.b().b(b10).a(), a5.f.b(Integer.valueOf(intent.getIntExtra("google.product_id", 111881503)))));
        } catch (RuntimeException e10) {
            Log.w("FirebaseMessaging", "Failed to send big query analytics payload.", e10);
        }
    }
}
