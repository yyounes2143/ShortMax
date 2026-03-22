package qa;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes5.dex */
class n implements pa.c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f65278a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    private final l f65279b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Context context, String str) {
        this.f65279b = new l(context, str);
    }

    @Override // pa.c
    public String getString(String str, String str2) {
        String str3 = this.f65278a.get(str);
        if (str3 != null) {
            return str3;
        }
        String b10 = this.f65279b.b(str, str2);
        if (b10 == null) {
            return str2;
        }
        this.f65278a.put(str, b10);
        return b10;
    }

    public String toString() {
        return "SecurityResourcesReader{mKey=, encrypt=true}";
    }
}
