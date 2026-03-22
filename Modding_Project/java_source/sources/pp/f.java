package pp;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.mraid.h;
import io.bidmachine.iab.utils.Logger;
import java.util.concurrent.atomic.AtomicBoolean;
import sq.l;
import tp.s;
/* loaded from: classes8.dex */
public class f {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicBoolean f64978a = new AtomicBoolean(false);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static l f64979b;

    @Nullable
    public static String a() {
        l lVar = f64979b;
        if (lVar != null) {
            return lVar.getUserAgent();
        }
        return null;
    }

    public static void b(@NonNull Context context) {
        f64978a.compareAndSet(false, true);
    }

    public static void c(boolean z10) {
        Logger.LogLevel logLevel;
        s.e(z10);
        if (z10) {
            logLevel = Logger.LogLevel.debug;
        } else {
            logLevel = Logger.LogLevel.none;
        }
        h.g(logLevel);
    }

    public static void d(@Nullable l lVar) {
        f64979b = lVar;
    }
}
