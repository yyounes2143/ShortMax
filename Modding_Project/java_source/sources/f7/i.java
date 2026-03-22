package f7;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.IllegalFormatException;
import java.util.Locale;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final String f51636a;

    public i(String str) {
        int myUid = Process.myUid();
        int myPid = Process.myPid();
        this.f51636a = ("UID: [" + myUid + "]  PID: [" + myPid + "] ").concat(str);
    }

    private static String e(String str, String str2, @Nullable Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e10) {
                Log.e("PlayCore", "Unable to format ".concat(String.valueOf(str2)), e10);
                str2 = str2 + " [" + TextUtils.join(", ", objArr) + "]";
            }
        }
        return str + " : " + str2;
    }

    public final int a(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", e(this.f51636a, "Play Store app is either not installed or not the official version", objArr));
        }
        return 0;
    }

    public final int b(Throwable th2, String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", e(this.f51636a, str, objArr), th2);
        }
        return 0;
    }

    public final int c(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            return Log.i("PlayCore", e(this.f51636a, str, objArr));
        }
        return 0;
    }

    public final int d(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 5)) {
            return Log.w("PlayCore", e(this.f51636a, str, objArr));
        }
        return 0;
    }
}
