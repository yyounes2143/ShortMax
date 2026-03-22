package r7;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: Logger.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    static final b f65670c = new b("FirebaseAppCheck");

    /* renamed from: a  reason: collision with root package name */
    private final String f65671a;

    /* renamed from: b  reason: collision with root package name */
    private int f65672b = 4;

    public b(@NonNull String str) {
        this.f65671a = str;
    }

    private boolean a(int i10) {
        if (this.f65672b > i10 && !Log.isLoggable(this.f65671a, i10)) {
            return false;
        }
        return true;
    }

    @NonNull
    public static b f() {
        return f65670c;
    }

    public void b(@NonNull String str) {
        c(str, null);
    }

    public void c(@NonNull String str, @Nullable Throwable th2) {
        if (a(3)) {
            Log.d(this.f65671a, str, th2);
        }
    }

    public void d(@NonNull String str) {
        e(str, null);
    }

    public void e(@NonNull String str, @Nullable Throwable th2) {
        if (a(6)) {
            Log.e(this.f65671a, str, th2);
        }
    }
}
