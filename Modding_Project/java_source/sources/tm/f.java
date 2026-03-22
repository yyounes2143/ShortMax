package tm;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes7.dex */
public class f {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final Map<io.bidmachine.iab.vast.a, Boolean> f67415a = new WeakHashMap();

    @Nullable
    public static synchronized io.bidmachine.iab.vast.a a(@Nullable String str) {
        synchronized (f.class) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            for (Map.Entry<io.bidmachine.iab.vast.a, Boolean> entry : f67415a.entrySet()) {
                io.bidmachine.iab.vast.a key = entry.getKey();
                if (key.H().equals(str)) {
                    return key;
                }
            }
            return null;
        }
    }

    public static synchronized void b(@Nullable io.bidmachine.iab.vast.a aVar) {
        synchronized (f.class) {
            if (aVar == null) {
                return;
            }
            f67415a.put(aVar, Boolean.TRUE);
        }
    }
}
