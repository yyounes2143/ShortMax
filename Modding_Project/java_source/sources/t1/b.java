package t1;

import android.text.method.PasswordTransformationMethod;
import android.util.Patterns;
import android.view.View;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.text.CharsKt;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SensitiveUserDataUtils.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f66808a = new b();

    private b() {
    }

    private final boolean a(TextView textView) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            String replace = new Regex("\\s").replace(d.k(textView), "");
            int length = replace.length();
            if (length >= 12 && length <= 19) {
                int i10 = 0;
                boolean z10 = false;
                for (int i11 = length - 1; -1 < i11; i11--) {
                    char charAt = replace.charAt(i11);
                    if (!Character.isDigit(charAt)) {
                        return false;
                    }
                    int f10 = CharsKt.f(charAt);
                    if (z10 && (f10 = f10 * 2) > 9) {
                        f10 = (f10 % 10) + 1;
                    }
                    i10 += f10;
                    z10 = !z10;
                }
                if (i10 % 10 != 0) {
                    return false;
                }
                return true;
            }
            return false;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final boolean b(TextView textView) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            if (textView.getInputType() == 32) {
                return true;
            }
            String k10 = d.k(textView);
            if (k10 != null && k10.length() != 0) {
                return Patterns.EMAIL_ADDRESS.matcher(k10).matches();
            }
            return false;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final boolean c(TextView textView) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            if (textView.getInputType() == 128) {
                return true;
            }
            return textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final boolean d(TextView textView) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            if (textView.getInputType() != 96) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final boolean e(TextView textView) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            if (textView.getInputType() != 3) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final boolean f(TextView textView) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            if (textView.getInputType() != 112) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    public static final boolean g(@Nullable View view) {
        if (o4.a.d(b.class)) {
            return false;
        }
        try {
            if (!(view instanceof TextView)) {
                return false;
            }
            b bVar = f66808a;
            if (!bVar.c((TextView) view) && !bVar.a((TextView) view) && !bVar.d((TextView) view) && !bVar.f((TextView) view) && !bVar.e((TextView) view)) {
                if (!bVar.b((TextView) view)) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
            return false;
        }
    }
}
