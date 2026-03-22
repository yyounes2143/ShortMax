package bu;

import android.util.Log;
import au.f;
import java.util.logging.Level;
/* compiled from: AndroidLogger.java */
/* loaded from: classes8.dex */
public class c implements f {

    /* renamed from: a  reason: collision with root package name */
    private final String f2824a;

    public c(String str) {
        this.f2824a = str;
    }

    private int c(Level level) {
        int intValue = level.intValue();
        if (intValue < 800) {
            if (intValue < 500) {
                return 2;
            }
            return 3;
        } else if (intValue < 900) {
            return 4;
        } else {
            if (intValue < 1000) {
                return 5;
            }
            return 6;
        }
    }

    @Override // au.f
    public void a(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(c(level), this.f2824a, str);
        }
    }

    @Override // au.f
    public void b(Level level, String str, Throwable th2) {
        if (level != Level.OFF) {
            int c10 = c(level);
            String str2 = this.f2824a;
            Log.println(c10, str2, str + "\n" + Log.getStackTraceString(th2));
        }
    }
}
