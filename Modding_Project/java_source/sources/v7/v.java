package v7;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.p003firebaseauthapi.zzah;
import com.google.android.gms.internal.p003firebaseauthapi.zzajb;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class v {
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    private static long f68822d = 3600000;

    /* renamed from: e  reason: collision with root package name */
    private static final zzah<String> f68823e = zzah.zza("firebaseAppName", "firebaseUserUid", "operation", "tenantId", "verifyAssertionRequest", HiAnalyticsConstant.HaKey.BI_KEY_RESULT, "statusMessage", "timestamp");

    /* renamed from: f  reason: collision with root package name */
    private static final v f68824f = new v();

    /* renamed from: a  reason: collision with root package name */
    private Task<AuthResult> f68825a;

    /* renamed from: b  reason: collision with root package name */
    private Task<String> f68826b;

    /* renamed from: c  reason: collision with root package name */
    private long f68827c = 0;

    private v() {
    }

    public static void b(Context context, Status status) {
        SharedPreferences.Editor edit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        edit.putInt(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, status.getStatusCode());
        edit.putString("statusMessage", status.getStatusMessage());
        edit.putLong("timestamp", DefaultClock.getInstance().currentTimeMillis());
        edit.commit();
    }

    public static void c(Context context, zzajb zzajbVar, String str, @Nullable String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        edit.putString("verifyAssertionRequest", SafeParcelableSerializer.serializeToString(zzajbVar));
        edit.putString("operation", str);
        edit.putString("tenantId", str2);
        edit.putLong("timestamp", DefaultClock.getInstance().currentTimeMillis());
        edit.commit();
    }

    public static void d(Context context, FirebaseAuth firebaseAuth) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(firebaseAuth);
        SharedPreferences.Editor edit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        edit.putString("firebaseAppName", firebaseAuth.b().o());
        edit.commit();
    }

    public static void e(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        edit.putString("recaptchaToken", str);
        edit.putString("operation", str2);
        edit.putLong("timestamp", DefaultClock.getInstance().currentTimeMillis());
        edit.commit();
    }

    private static void f(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        zzah<String> zzahVar = f68823e;
        int size = zzahVar.size();
        int i10 = 0;
        while (i10 < size) {
            String str = zzahVar.get(i10);
            i10++;
            edit.remove(str);
        }
        edit.commit();
    }

    public static v i() {
        return f68824f;
    }

    public final void a(Context context) {
        Preconditions.checkNotNull(context);
        f(context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0));
        this.f68825a = null;
        this.f68827c = 0L;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x008b, code lost:
        if (r4.equals("com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE") == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(com.google.firebase.auth.FirebaseAuth r12) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v7.v.g(com.google.firebase.auth.FirebaseAuth):void");
    }

    @Nullable
    public final Task<String> h() {
        if (DefaultClock.getInstance().currentTimeMillis() - this.f68827c < f68822d) {
            return this.f68826b;
        }
        return null;
    }
}
