package qm;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes7.dex */
public class a {
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f65373c = new a(1, "No internet connection");

    /* renamed from: a  reason: collision with root package name */
    private final int f65374a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f65375b;

    public a(int i10, @NonNull String str) {
        this.f65374a = i10;
        this.f65375b = str;
    }

    @NonNull
    public static a a(@NonNull String str) {
        return new a(3, str);
    }

    @NonNull
    public static a b(@NonNull String str) {
        return new a(6, str);
    }

    @NonNull
    public static a e(@NonNull String str) {
        return new a(4, str);
    }

    @NonNull
    public static a f(@NonNull String str) {
        return new a(0, str);
    }

    @NonNull
    public static a g(@NonNull String str) {
        return new a(7, str);
    }

    @NonNull
    public static a h(@NonNull String str) {
        return new a(2, str);
    }

    @NonNull
    public static a i(@NonNull String str) {
        return new a(5, str);
    }

    @NonNull
    public static a j(@NonNull String str, @Nullable Throwable th2) {
        if (th2 != null) {
            try {
                StringBuilder sb2 = new StringBuilder(str);
                sb2.append(" - ");
                sb2.append(th2.getClass().getName());
                String message = th2.getMessage();
                if (!TextUtils.isEmpty(message)) {
                    sb2.append(": ");
                    sb2.append(message);
                }
                return f(sb2.toString());
            } catch (Throwable unused) {
            }
        }
        return f(str);
    }

    public int c() {
        return this.f65374a;
    }

    @NonNull
    public String d() {
        return this.f65375b;
    }

    @NonNull
    public String toString() {
        return String.format("(%s) %s", Integer.valueOf(this.f65374a), this.f65375b);
    }
}
