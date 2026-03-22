package y6;

import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.ParserException;
import java.util.regex.Pattern;
/* compiled from: WebvttParserUtil.java */
/* loaded from: classes4.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f70731a = Pattern.compile("^NOTE([ \t].*)?$");

    public static boolean a(g0 g0Var) {
        String p10 = g0Var.p();
        if (p10 != null && p10.startsWith("WEBVTT")) {
            return true;
        }
        return false;
    }

    public static float b(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long c(String str) throws NumberFormatException {
        String[] I0 = s0.I0(str, "\\.");
        long j10 = 0;
        for (String str2 : s0.H0(I0[0], ":")) {
            j10 = (j10 * 60) + Long.parseLong(str2);
        }
        long j11 = j10 * 1000;
        if (I0.length == 2) {
            j11 += Long.parseLong(I0[1]);
        }
        return j11 * 1000;
    }

    public static void d(g0 g0Var) throws ParserException {
        int e10 = g0Var.e();
        if (a(g0Var)) {
            return;
        }
        g0Var.P(e10);
        throw ParserException.b("Expected WEBVTT. Got " + g0Var.p(), null);
    }
}
