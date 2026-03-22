package r8;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* compiled from: JsonDataEncoderBuilder.java */
/* loaded from: classes5.dex */
public final class d implements q8.b<d> {

    /* renamed from: e  reason: collision with root package name */
    private static final p8.c<Object> f65673e = new p8.c() { // from class: r8.a
        @Override // p8.c
        public final void a(Object obj, Object obj2) {
            d.l(obj, (p8.d) obj2);
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private static final p8.e<String> f65674f = new p8.e() { // from class: r8.b
        @Override // p8.e
        public final void a(Object obj, Object obj2) {
            ((p8.f) obj2).a((String) obj);
        }
    };

    /* renamed from: g  reason: collision with root package name */
    private static final p8.e<Boolean> f65675g = new p8.e() { // from class: r8.c
        @Override // p8.e
        public final void a(Object obj, Object obj2) {
            d.n((Boolean) obj, (p8.f) obj2);
        }
    };

    /* renamed from: h  reason: collision with root package name */
    private static final b f65676h = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, p8.c<?>> f65677a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, p8.e<?>> f65678b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private p8.c<Object> f65679c = f65673e;

    /* renamed from: d  reason: collision with root package name */
    private boolean f65680d = false;

    /* compiled from: JsonDataEncoderBuilder.java */
    /* loaded from: classes5.dex */
    class a implements p8.a {
        a() {
        }

        @Override // p8.a
        public void a(@NonNull Object obj, @NonNull Writer writer) throws IOException {
            e eVar = new e(writer, d.this.f65677a, d.this.f65678b, d.this.f65679c, d.this.f65680d);
            eVar.k(obj, false);
            eVar.u();
        }

        @Override // p8.a
        public String b(@NonNull Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                a(obj, stringWriter);
            } catch (IOException unused) {
            }
            return stringWriter.toString();
        }
    }

    /* compiled from: JsonDataEncoderBuilder.java */
    /* loaded from: classes5.dex */
    private static final class b implements p8.e<Date> {

        /* renamed from: a  reason: collision with root package name */
        private static final DateFormat f65682a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f65682a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private b() {
        }

        @Override // p8.e
        /* renamed from: b */
        public void a(@NonNull Date date, @NonNull p8.f fVar) throws IOException {
            fVar.a(f65682a.format(date));
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    public d() {
        p(String.class, f65674f);
        p(Boolean.class, f65675g);
        p(Date.class, f65676h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l(Object obj, p8.d dVar) throws IOException {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n(Boolean bool, p8.f fVar) throws IOException {
        fVar.g(bool.booleanValue());
    }

    @NonNull
    public p8.a i() {
        return new a();
    }

    @NonNull
    public d j(@NonNull q8.a aVar) {
        aVar.a(this);
        return this;
    }

    @NonNull
    public d k(boolean z10) {
        this.f65680d = z10;
        return this;
    }

    @Override // q8.b
    @NonNull
    /* renamed from: o */
    public <T> d a(@NonNull Class<T> cls, @NonNull p8.c<? super T> cVar) {
        this.f65677a.put(cls, cVar);
        this.f65678b.remove(cls);
        return this;
    }

    @NonNull
    public <T> d p(@NonNull Class<T> cls, @NonNull p8.e<? super T> eVar) {
        this.f65678b.put(cls, eVar);
        this.f65677a.remove(cls);
        return this;
    }
}
