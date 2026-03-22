package au;

import java.io.PrintStream;
import java.util.logging.Level;
/* compiled from: Logger.java */
/* loaded from: classes8.dex */
public interface f {

    /* compiled from: Logger.java */
    /* loaded from: classes8.dex */
    public static class a {
        public static f a() {
            if (bu.a.a()) {
                return bu.a.b().f2822a;
            }
            return new b();
        }
    }

    /* compiled from: Logger.java */
    /* loaded from: classes8.dex */
    public static class b implements f {
        @Override // au.f
        public void a(Level level, String str) {
            PrintStream printStream = System.out;
            printStream.println("[" + level + "] " + str);
        }

        @Override // au.f
        public void b(Level level, String str, Throwable th2) {
            PrintStream printStream = System.out;
            printStream.println("[" + level + "] " + str);
            th2.printStackTrace(printStream);
        }
    }

    void a(Level level, String str);

    void b(Level level, String str, Throwable th2);
}
