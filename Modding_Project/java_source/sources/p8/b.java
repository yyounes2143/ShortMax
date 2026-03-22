package p8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: FieldDescriptor.java */
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f64815a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, Object> f64816b;

    /* compiled from: FieldDescriptor.java */
    /* renamed from: p8.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0898b {

        /* renamed from: a  reason: collision with root package name */
        private final String f64817a;

        /* renamed from: b  reason: collision with root package name */
        private Map<Class<?>, Object> f64818b = null;

        C0898b(String str) {
            this.f64817a = str;
        }

        @NonNull
        public b a() {
            Map unmodifiableMap;
            String str = this.f64817a;
            if (this.f64818b == null) {
                unmodifiableMap = Collections.emptyMap();
            } else {
                unmodifiableMap = Collections.unmodifiableMap(new HashMap(this.f64818b));
            }
            return new b(str, unmodifiableMap);
        }

        @NonNull
        public <T extends Annotation> C0898b b(@NonNull T t10) {
            if (this.f64818b == null) {
                this.f64818b = new HashMap();
            }
            this.f64818b.put(t10.annotationType(), t10);
            return this;
        }
    }

    @NonNull
    public static C0898b a(@NonNull String str) {
        return new C0898b(str);
    }

    @NonNull
    public static b d(@NonNull String str) {
        return new b(str, Collections.emptyMap());
    }

    @NonNull
    public String b() {
        return this.f64815a;
    }

    @Nullable
    public <T extends Annotation> T c(@NonNull Class<T> cls) {
        return (T) this.f64816b.get(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f64815a.equals(bVar.f64815a) && this.f64816b.equals(bVar.f64816b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f64815a.hashCode() * 31) + this.f64816b.hashCode();
    }

    @NonNull
    public String toString() {
        return "FieldDescriptor{name=" + this.f64815a + ", properties=" + this.f64816b.values() + "}";
    }

    private b(String str, Map<Class<?>, Object> map) {
        this.f64815a = str;
        this.f64816b = map;
    }
}
