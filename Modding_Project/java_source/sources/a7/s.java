package a7;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: HttpDataSource.java */
/* loaded from: classes4.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f292a = new HashMap();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f293b;

    public synchronized Map<String, String> a() {
        try {
            if (this.f293b == null) {
                this.f293b = Collections.unmodifiableMap(new HashMap(this.f292a));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f293b;
    }
}
