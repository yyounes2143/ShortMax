package fk;

import com.startshorts.androidplayer.log.Logger;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: NumberUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class w {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final w f51779a;

    /* renamed from: b  reason: collision with root package name */
    private static final double f51780b;

    static {
        w wVar = new w();
        f51779a = wVar;
        f51780b = wVar.d("3,120");
    }

    private w() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    @NotNull
    public final String a(long j10) {
        if (j10 < 1000) {
            return String.valueOf(j10);
        }
        try {
            String[] strArr = {"", "K", "M", "B", "T"};
            double d10 = j10;
            int log10 = (int) (Math.log10(d10) / Math.log10(1000.0d));
            String valueOf = String.valueOf(d10 / Math.pow(1000.0d, log10));
            int q02 = StringsKt.q0(valueOf, ".", 0, false, 6, null);
            if (q02 == -1) {
                j10 = valueOf + strArr[log10];
            } else {
                StringBuilder sb2 = new StringBuilder();
                String substring = valueOf.substring(0, q02 + 2);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                sb2.append(substring);
                sb2.append(strArr[log10]);
                j10 = sb2.toString();
            }
            return j10;
        } catch (Exception e10) {
            Logger.f41511a.e("NumberUtil", "formatBigNumber(" + j10 + ") failed -> " + e10.getMessage());
            return String.valueOf(j10);
        }
    }

    public final float b(float f10, int i10) {
        try {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Locale locale = Locale.ENGLISH;
            String format = String.format(locale, "%." + i10 + 'f', Arrays.copyOf(new Object[]{Float.valueOf(f10)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            return Float.parseFloat(format);
        } catch (NumberFormatException unused) {
            return 0.0f;
        }
    }

    public final boolean c(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        return Pattern.compile("[0-9]*").matcher(str).matches();
    }

    public final double d(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Double r10 = StringsKt.r(new Regex("[^\\d.]").replace(str, ""));
        if (r10 != null) {
            return r10.doubleValue();
        }
        return 0.0d;
    }
}
