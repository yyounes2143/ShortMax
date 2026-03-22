package db;

import android.os.SystemClock;
import com.huawei.hms.framework.common.Logger;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, a> f50290a = new ConcurrentHashMap(16);

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final long f50291a;

        /* renamed from: b  reason: collision with root package name */
        private final long f50292b;

        public a(long j10, long j11) {
            this.f50291a = j10;
            this.f50292b = j11;
        }

        public boolean a() {
            if (SystemClock.elapsedRealtime() - this.f50292b <= this.f50291a) {
                return true;
            }
            return false;
        }
    }

    public static a a(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("map size of get is before: ");
        Map<String, a> map = f50290a;
        sb2.append(map.size());
        Logger.v("RequestUtil", sb2.toString());
        a aVar = map.get(str);
        Logger.v("RequestUtil", "map size of get is after: " + map.size());
        return aVar;
    }

    public static void b(String str, a aVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("map size of put is before: ");
        Map<String, a> map = f50290a;
        sb2.append(map.size());
        Logger.v("RequestUtil", sb2.toString());
        map.put(str, aVar);
        Logger.v("RequestUtil", "map size of put is after: " + map.size());
    }
}
