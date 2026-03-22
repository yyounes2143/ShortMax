package en;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: HttpDataSource.java */
/* loaded from: classes8.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f51439a = new HashMap();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f51440b;

    public synchronized Map<String, String> a() {
        try {
            if (this.f51440b == null) {
                this.f51440b = Collections.unmodifiableMap(new HashMap(this.f51439a));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f51440b;
    }
}
