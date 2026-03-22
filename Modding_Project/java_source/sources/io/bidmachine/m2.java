package io.bidmachine;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.protobuf.Extras;
import io.bidmachine.protobuf.InitResponse;
import java.util.UUID;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BidMachineSharedPreference.java */
/* loaded from: classes7.dex */
public class m2 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f55056a;

    static void A(@NonNull Context context, int i10) {
        fr.i.d(j(context), "session_count", Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull Context context) {
        z(context, c(context));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(@NonNull Context context) {
        fr.i.g(j(context), "init_extras");
    }

    static long c(@NonNull Context context) {
        return fr.i.b(j(context), "current_session_duration", 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String d(@NonNull Context context, @NonNull String str) {
        SharedPreferences j10 = j(context);
        return fr.i.c(j10, "hw_info_" + str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Extras e(@NonNull Context context) {
        SharedPreferences j10 = j(context);
        try {
            return Extras.parseFrom(Base64.decode(fr.i.c(j10, "init_extras", null), 0));
        } catch (Exception unused) {
            fr.i.g(j10, "init_extras");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static InitResponse f(@NonNull Context context) {
        SharedPreferences j10 = j(context);
        try {
            return InitResponse.parseFrom(Base64.decode(j10.getString("initData", null), 0));
        } catch (Exception unused) {
            fr.i.g(j10, "initData");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static String g(@NonNull Context context) {
        String c10 = fr.i.c(j(context), "init_data_session_id", null);
        if (c10 != null) {
            return c10;
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long h(@NonNull Context context) {
        return fr.i.b(j(context), "last_session_duration", 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(@NonNull Context context) {
        return fr.i.a(j(context), "session_count", 0);
    }

    @NonNull
    @VisibleForTesting
    static SharedPreferences j(@NonNull Context context) {
        if (f55056a == null) {
            f55056a = context.getSharedPreferences("BidMachinePref", 0);
        }
        return f55056a;
    }

    @Nullable
    static String k(@NonNull Context context) {
        return fr.i.c(j(context), "ua", null);
    }

    @Nullable
    static String l(@NonNull Context context) {
        return fr.i.c(j(context), "ua_device_os", null);
    }

    static long m(@NonNull Context context) {
        return fr.i.b(j(context), "ua_exp", -1L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String n(@NonNull Context context) {
        String k10 = k(context);
        if (!TextUtils.isEmpty(k10) && fr.c.h().equals(l(context)) && m(context) > System.currentTimeMillis()) {
            return k10;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void o(@NonNull Context context) {
        A(context, i(context) + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static String p(@NonNull Context context) {
        SharedPreferences j10 = j(context);
        String c10 = fr.i.c(j10, "bid_machine_ifv", null);
        if (!TextUtils.isEmpty(c10)) {
            return c10;
        }
        String uuid = UUID.randomUUID().toString();
        fr.i.f(j10, "bid_machine_ifv", uuid);
        return uuid;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long q(@NonNull Context context) {
        SharedPreferences j10 = j(context);
        long b10 = fr.i.b(j10, "first_app_launch_ms", 0L);
        if (b10 != 0) {
            return b10;
        }
        long currentTimeMillis = System.currentTimeMillis();
        fr.i.e(j10, "first_app_launch_ms", Long.valueOf(currentTimeMillis));
        return currentTimeMillis;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void r(@NonNull Context context, @NonNull String str, @Nullable String str2) {
        SharedPreferences j10 = j(context);
        fr.i.f(j10, "hw_info_" + str, str2);
    }

    static void s(@NonNull Context context, @Nullable String str) {
        fr.i.f(j(context), "ua", str);
    }

    static void t(@NonNull Context context, @Nullable String str) {
        fr.i.f(j(context), "ua_device_os", str);
    }

    static void u(@NonNull Context context, long j10) {
        fr.i.e(j(context), "ua_exp", Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void v(@NonNull Context context, @Nullable String str, long j10) {
        s(context, str);
        t(context, fr.c.h());
        u(context, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void w(@NonNull Context context, long j10) {
        fr.i.e(j(context), "current_session_duration", Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void x(@NonNull Context context, @NonNull Extras extras) {
        try {
            fr.i.f(j(context), "init_extras", Base64.encodeToString(extras.toByteArray(), 0));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void y(@NonNull Context context, @NonNull InitResponse initResponse, @NonNull String str) {
        try {
            fr.i.f(j(context), "initData", Base64.encodeToString(initResponse.toByteArray(), 0));
            fr.i.f(j(context), "init_data_session_id", str);
        } catch (Exception unused) {
        }
    }

    static void z(@NonNull Context context, long j10) {
        fr.i.e(j(context), "last_session_duration", Long.valueOf(j10));
    }
}
