package hp;

import androidx.annotation.Nullable;
import cn.b0;
import cn.m0;
import io.bidmachine.media3.common.ParserException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: WebvttParserUtil.java */
/* loaded from: classes8.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f53217a = Pattern.compile("^NOTE([ \t].*)?$");

    @Nullable
    public static Matcher a(b0 b0Var) {
        String s10;
        while (true) {
            String s11 = b0Var.s();
            if (s11 != null) {
                if (f53217a.matcher(s11).matches()) {
                    do {
                        s10 = b0Var.s();
                        if (s10 != null) {
                        }
                    } while (!s10.isEmpty());
                } else {
                    Matcher matcher = e.f53191a.matcher(s11);
                    if (matcher.matches()) {
                        return matcher;
                    }
                }
            } else {
                return null;
            }
        }
    }

    public static boolean b(b0 b0Var) {
        String s10 = b0Var.s();
        if (s10 != null && s10.startsWith("WEBVTT")) {
            return true;
        }
        return false;
    }

    public static float c(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long d(String str) {
        String[] n12 = m0.n1(str, "\\.");
        long j10 = 0;
        for (String str2 : m0.m1(n12[0], ":")) {
            j10 = (j10 * 60) + Long.parseLong(str2);
        }
        long j11 = j10 * 1000;
        if (n12.length == 2) {
            String trim = n12[1].trim();
            if (trim.length() == 3) {
                j11 += Long.parseLong(trim);
            } else {
                throw new IllegalArgumentException("Expected 3 decimal places, got: " + trim);
            }
        }
        return j11 * 1000;
    }

    public static void e(b0 b0Var) throws ParserException {
        int f10 = b0Var.f();
        if (b(b0Var)) {
            return;
        }
        b0Var.W(f10);
        throw ParserException.b("Expected WEBVTT. Got " + b0Var.s(), null);
    }
}
