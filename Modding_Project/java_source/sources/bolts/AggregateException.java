package bolts;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.List;
/* loaded from: classes2.dex */
public class AggregateException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private List<Throwable> f2779a;

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        int i10 = -1;
        for (Throwable th2 : this.f2779a) {
            printStream.append("\n");
            printStream.append("  Inner throwable #");
            i10++;
            printStream.append((CharSequence) Integer.toString(i10));
            printStream.append(": ");
            th2.printStackTrace(printStream);
            printStream.append("\n");
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        int i10 = -1;
        for (Throwable th2 : this.f2779a) {
            printWriter.append("\n");
            printWriter.append("  Inner throwable #");
            i10++;
            printWriter.append((CharSequence) Integer.toString(i10));
            printWriter.append(": ");
            th2.printStackTrace(printWriter);
            printWriter.append("\n");
        }
    }
}
