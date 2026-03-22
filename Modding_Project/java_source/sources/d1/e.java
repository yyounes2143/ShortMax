package d1;

import android.util.Log;
import com.airbnb.lottie.o0;
import java.util.HashSet;
import java.util.Set;
/* compiled from: LogcatLogger.java */
/* loaded from: classes2.dex */
public class e implements o0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f49767a = new HashSet();

    @Override // com.airbnb.lottie.o0
    public void a(String str) {
        c(str, null);
    }

    @Override // com.airbnb.lottie.o0
    public void b(String str, Throwable th2) {
        if (com.airbnb.lottie.d.f4474a) {
            Log.d("LOTTIE", str, th2);
        }
    }

    @Override // com.airbnb.lottie.o0
    public void c(String str, Throwable th2) {
        Set<String> set = f49767a;
        if (set.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, th2);
        set.add(str);
    }

    @Override // com.airbnb.lottie.o0
    public void d(String str) {
        e(str, null);
    }

    public void e(String str, Throwable th2) {
        if (com.airbnb.lottie.d.f4474a) {
            Log.d("LOTTIE", str, th2);
        }
    }
}
