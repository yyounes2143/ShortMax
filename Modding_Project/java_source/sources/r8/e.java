package r8;

import android.util.Base64;
import android.util.JsonWriter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JsonValueObjectEncoderContext.java */
/* loaded from: classes5.dex */
public final class e implements p8.d, p8.f {

    /* renamed from: a  reason: collision with root package name */
    private e f65683a = null;

    /* renamed from: b  reason: collision with root package name */
    private boolean f65684b = true;

    /* renamed from: c  reason: collision with root package name */
    private final JsonWriter f65685c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<Class<?>, p8.c<?>> f65686d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<Class<?>, p8.e<?>> f65687e;

    /* renamed from: f  reason: collision with root package name */
    private final p8.c<Object> f65688f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f65689g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(@NonNull Writer writer, @NonNull Map<Class<?>, p8.c<?>> map, @NonNull Map<Class<?>, p8.e<?>> map2, p8.c<Object> cVar, boolean z10) {
        this.f65685c = new JsonWriter(writer);
        this.f65686d = map;
        this.f65687e = map2;
        this.f65688f = cVar;
        this.f65689g = z10;
    }

    private boolean t(Object obj) {
        if (obj != null && !obj.getClass().isArray() && !(obj instanceof Collection) && !(obj instanceof Date) && !(obj instanceof Enum) && !(obj instanceof Number)) {
            return false;
        }
        return true;
    }

    private e w(@NonNull String str, @Nullable Object obj) throws IOException, EncodingException {
        y();
        this.f65685c.name(str);
        if (obj == null) {
            this.f65685c.nullValue();
            return this;
        }
        return k(obj, false);
    }

    private e x(@NonNull String str, @Nullable Object obj) throws IOException, EncodingException {
        if (obj == null) {
            return this;
        }
        y();
        this.f65685c.name(str);
        return k(obj, false);
    }

    private void y() throws IOException {
        if (this.f65684b) {
            e eVar = this.f65683a;
            if (eVar != null) {
                eVar.y();
                this.f65683a.f65684b = false;
                this.f65683a = null;
                this.f65685c.endObject();
                return;
            }
            return;
        }
        throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
    }

    @Override // p8.d
    @NonNull
    public p8.d b(@NonNull p8.b bVar, long j10) throws IOException {
        return o(bVar.b(), j10);
    }

    @Override // p8.d
    @NonNull
    public p8.d c(@NonNull p8.b bVar, boolean z10) throws IOException {
        return q(bVar.b(), z10);
    }

    @Override // p8.d
    @NonNull
    public p8.d d(@NonNull p8.b bVar, int i10) throws IOException {
        return n(bVar.b(), i10);
    }

    @Override // p8.d
    @NonNull
    public p8.d e(@NonNull p8.b bVar, double d10) throws IOException {
        return m(bVar.b(), d10);
    }

    @Override // p8.d
    @NonNull
    public p8.d f(@NonNull p8.b bVar, @Nullable Object obj) throws IOException {
        return p(bVar.b(), obj);
    }

    @NonNull
    public e h(double d10) throws IOException {
        y();
        this.f65685c.value(d10);
        return this;
    }

    @NonNull
    public e i(int i10) throws IOException {
        y();
        this.f65685c.value(i10);
        return this;
    }

    @NonNull
    public e j(long j10) throws IOException {
        y();
        this.f65685c.value(j10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public e k(@Nullable Object obj, boolean z10) throws IOException {
        int[] iArr;
        Class<?> cls;
        if (z10 && t(obj)) {
            if (obj == null) {
                cls = null;
            } else {
                cls = obj.getClass();
            }
            throw new EncodingException(String.format("%s cannot be encoded inline", cls));
        } else if (obj == null) {
            this.f65685c.nullValue();
            return this;
        } else if (obj instanceof Number) {
            this.f65685c.value((Number) obj);
            return this;
        } else {
            int i10 = 0;
            if (obj.getClass().isArray()) {
                if (obj instanceof byte[]) {
                    return s((byte[]) obj);
                }
                this.f65685c.beginArray();
                if (obj instanceof int[]) {
                    int length = ((int[]) obj).length;
                    while (i10 < length) {
                        this.f65685c.value(iArr[i10]);
                        i10++;
                    }
                } else if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    int length2 = jArr.length;
                    while (i10 < length2) {
                        j(jArr[i10]);
                        i10++;
                    }
                } else if (obj instanceof double[]) {
                    double[] dArr = (double[]) obj;
                    int length3 = dArr.length;
                    while (i10 < length3) {
                        this.f65685c.value(dArr[i10]);
                        i10++;
                    }
                } else if (obj instanceof boolean[]) {
                    boolean[] zArr = (boolean[]) obj;
                    int length4 = zArr.length;
                    while (i10 < length4) {
                        this.f65685c.value(zArr[i10]);
                        i10++;
                    }
                } else if (obj instanceof Number[]) {
                    for (Number number : (Number[]) obj) {
                        k(number, false);
                    }
                } else {
                    for (Object obj2 : (Object[]) obj) {
                        k(obj2, false);
                    }
                }
                this.f65685c.endArray();
                return this;
            } else if (obj instanceof Collection) {
                this.f65685c.beginArray();
                for (Object obj3 : (Collection) obj) {
                    k(obj3, false);
                }
                this.f65685c.endArray();
                return this;
            } else if (obj instanceof Map) {
                this.f65685c.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        p((String) key, entry.getValue());
                    } catch (ClassCastException e10) {
                        throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e10);
                    }
                }
                this.f65685c.endObject();
                return this;
            } else {
                p8.c<?> cVar = this.f65686d.get(obj.getClass());
                if (cVar != null) {
                    return v(cVar, obj, z10);
                }
                p8.e<?> eVar = this.f65687e.get(obj.getClass());
                if (eVar != null) {
                    eVar.a(obj, this);
                    return this;
                } else if (obj instanceof Enum) {
                    if (obj instanceof f) {
                        i(((f) obj).getNumber());
                    } else {
                        a(((Enum) obj).name());
                    }
                    return this;
                } else {
                    return v(this.f65688f, obj, z10);
                }
            }
        }
    }

    @Override // p8.f
    @NonNull
    /* renamed from: l */
    public e a(@Nullable String str) throws IOException {
        y();
        this.f65685c.value(str);
        return this;
    }

    @NonNull
    public e m(@NonNull String str, double d10) throws IOException {
        y();
        this.f65685c.name(str);
        return h(d10);
    }

    @NonNull
    public e n(@NonNull String str, int i10) throws IOException {
        y();
        this.f65685c.name(str);
        return i(i10);
    }

    @NonNull
    public e o(@NonNull String str, long j10) throws IOException {
        y();
        this.f65685c.name(str);
        return j(j10);
    }

    @NonNull
    public e p(@NonNull String str, @Nullable Object obj) throws IOException {
        if (this.f65689g) {
            return x(str, obj);
        }
        return w(str, obj);
    }

    @NonNull
    public e q(@NonNull String str, boolean z10) throws IOException {
        y();
        this.f65685c.name(str);
        return g(z10);
    }

    @Override // p8.f
    @NonNull
    /* renamed from: r */
    public e g(boolean z10) throws IOException {
        y();
        this.f65685c.value(z10);
        return this;
    }

    @NonNull
    public e s(@Nullable byte[] bArr) throws IOException {
        y();
        if (bArr == null) {
            this.f65685c.nullValue();
        } else {
            this.f65685c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u() throws IOException {
        y();
        this.f65685c.flush();
    }

    e v(p8.c<Object> cVar, Object obj, boolean z10) throws IOException {
        if (!z10) {
            this.f65685c.beginObject();
        }
        cVar.a(obj, this);
        if (!z10) {
            this.f65685c.endObject();
        }
        return this;
    }
}
