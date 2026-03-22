package pa;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
@Deprecated
/* loaded from: classes5.dex */
public abstract class a implements oa.d {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, a> f64842a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f64843b = new Object();

    public static a b(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return c(context, context.getPackageName());
    }

    public static a c(Context context, String str) {
        a aVar;
        synchronized (f64843b) {
            try {
                Map<String, a> map = f64842a;
                aVar = map.get(str);
                if (aVar == null) {
                    aVar = new qa.d(context, str);
                    map.put(str, aVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }
}
