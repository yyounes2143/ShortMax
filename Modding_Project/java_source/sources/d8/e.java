package d8;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: KeysMap.java */
/* loaded from: classes5.dex */
class e {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f50215a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final int f50216b;

    /* renamed from: c  reason: collision with root package name */
    private final int f50217c;

    public e(int i10, int i11) {
        this.f50216b = i10;
        this.f50217c = i11;
    }

    private String b(String str) {
        if (str != null) {
            return c(str, this.f50217c);
        }
        throw new IllegalArgumentException("Custom attribute key must not be null.");
    }

    public static String c(String str, int i10) {
        if (str != null) {
            String trim = str.trim();
            if (trim.length() > i10) {
                return trim.substring(0, i10);
            }
            return trim;
        }
        return str;
    }

    @NonNull
    public synchronized Map<String, String> a() {
        return Collections.unmodifiableMap(new HashMap(this.f50215a));
    }

    public synchronized boolean d(String str, String str2) {
        String b10 = b(str);
        if (this.f50215a.size() >= this.f50216b && !this.f50215a.containsKey(b10)) {
            z7.g f10 = z7.g.f();
            f10.k("Ignored entry \"" + str + "\" when adding custom keys. Maximum allowable: " + this.f50216b);
            return false;
        }
        String c10 = c(str2, this.f50217c);
        if (CommonUtils.z(this.f50215a.get(b10), c10)) {
            return false;
        }
        Map<String, String> map = this.f50215a;
        if (str2 == null) {
            c10 = "";
        }
        map.put(b10, c10);
        return true;
    }

    public synchronized void e(Map<String, String> map) {
        String c10;
        try {
            int i10 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String b10 = b(entry.getKey());
                if (this.f50215a.size() >= this.f50216b && !this.f50215a.containsKey(b10)) {
                    i10++;
                }
                String value = entry.getValue();
                Map<String, String> map2 = this.f50215a;
                if (value == null) {
                    c10 = "";
                } else {
                    c10 = c(value, this.f50217c);
                }
                map2.put(b10, c10);
            }
            if (i10 > 0) {
                z7.g f10 = z7.g.f();
                f10.k("Ignored " + i10 + " entries when adding custom keys. Maximum allowable: " + this.f50216b);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
