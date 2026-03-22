package gb;

import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f52295a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, d> f52296b = new ConcurrentHashMap(16);

    /* renamed from: c  reason: collision with root package name */
    private List<b> f52297c = new ArrayList(16);

    public d a(String str) {
        if (TextUtils.isEmpty(str)) {
            Logger.w("Service", "In servings.getServing(String groupId), the groupId is Empty or null");
            return null;
        }
        return this.f52296b.get(str);
    }

    public List<b> b() {
        return this.f52297c;
    }

    public void c(String str, d dVar) {
        if (!TextUtils.isEmpty(str) && dVar != null) {
            this.f52296b.put(str, dVar);
        }
    }

    public void d(List<b> list) {
        this.f52297c = list;
    }

    public String e() {
        return this.f52295a;
    }

    public void g(String str) {
        this.f52295a = str;
    }

    public void f(String str) {
    }
}
