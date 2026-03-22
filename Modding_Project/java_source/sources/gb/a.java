package gb;

import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f52291a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, c> f52292b = new ConcurrentHashMap(16);

    public c a(String str) {
        if (TextUtils.isEmpty(str)) {
            Logger.w("ApplicationBean", "In getServing(String serviceName), the serviceName is Empty or null");
            return null;
        }
        return this.f52292b.get(str);
    }

    public String b() {
        return this.f52291a;
    }

    public void d(String str, c cVar) {
        if (!TextUtils.isEmpty(str) && cVar != null) {
            this.f52292b.put(str, cVar);
        }
    }

    public void e(String str) {
        this.f52291a = str;
    }

    public void c(long j10) {
    }
}
