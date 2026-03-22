package com.google.android.play.integrity.internal;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.IllegalFormatException;
import java.util.Locale;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class o0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f20011a;

    public o0(String str) {
        int myUid = Process.myUid();
        int myPid = Process.myPid();
        this.f20011a = ("UID: [" + myUid + "]  PID: [" + myPid + "] ").concat(str);
    }

    private static String f(String str, String str2, @Nullable Object... objArr) {
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
        if (Log.isLoggable("PlayCore", 3)) {
            return Log.d("PlayCore", f(this.f20011a, str, objArr));
        }
        return 0;
    }

    public final int b(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", f(this.f20011a, str, objArr));
        }
        return 0;
    }

    public final int c(Throwable th2, String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", f(this.f20011a, str, objArr), th2);
        }
        return 0;
    }

    public final int d(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            return Log.i("PlayCore", f(this.f20011a, str, objArr));
        }
        return 0;
    }

    public final int e(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 5)) {
            return Log.w("PlayCore", f(this.f20011a, str, objArr));
        }
        return 0;
    }
}
