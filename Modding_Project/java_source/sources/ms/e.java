package ms;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Exceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public class e {
    public static void a(@NotNull Throwable th2, @NotNull Throwable exception) {
        Intrinsics.checkNotNullParameter(th2, "<this>");
        Intrinsics.checkNotNullParameter(exception, "exception");
        if (th2 != exception) {
            ts.b.f67697a.a(th2, exception);
        }
    }

    @NotNull
    public static List<Throwable> b(@NotNull Throwable th2) {
        Intrinsics.checkNotNullParameter(th2, "<this>");
        return ts.b.f67697a.c(th2);
    }

    @NotNull
    public static String c(@NotNull Throwable th2) {
        Intrinsics.checkNotNullParameter(th2, "<this>");
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th2.printStackTrace(printWriter);
        printWriter.flush();
        String stringWriter2 = stringWriter.toString();
        Intrinsics.checkNotNullExpressionValue(stringWriter2, "toString(...)");
        return stringWriter2;
    }
}
