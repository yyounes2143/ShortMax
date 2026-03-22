package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.proto.Protobuf;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProtobufDataEncoderContext.java */
/* loaded from: classes5.dex */
public final class d implements p8.d {

    /* renamed from: f  reason: collision with root package name */
    private static final Charset f20957f = Charset.forName("UTF-8");

    /* renamed from: g  reason: collision with root package name */
    private static final p8.b f20958g = p8.b.a("key").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

    /* renamed from: h  reason: collision with root package name */
    private static final p8.b f20959h = p8.b.a(AppMeasurementSdk.ConditionalUserProperty.VALUE).b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

    /* renamed from: i  reason: collision with root package name */
    private static final p8.c<Map.Entry<Object, Object>> f20960i = new p8.c() { // from class: com.google.firebase.encoders.proto.c
        @Override // p8.c
        public final void a(Object obj, Object obj2) {
            d.w((Map.Entry) obj, (p8.d) obj2);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private OutputStream f20961a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, p8.c<?>> f20962b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<Class<?>, p8.e<?>> f20963c;

    /* renamed from: d  reason: collision with root package name */
    private final p8.c<Object> f20964d;

    /* renamed from: e  reason: collision with root package name */
    private final f f20965e = new f(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProtobufDataEncoderContext.java */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f20966a;

        static {
            int[] iArr = new int[Protobuf.IntEncoding.values().length];
            f20966a = iArr;
            try {
                iArr[Protobuf.IntEncoding.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20966a[Protobuf.IntEncoding.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20966a[Protobuf.IntEncoding.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(OutputStream outputStream, Map<Class<?>, p8.c<?>> map, Map<Class<?>, p8.e<?>> map2, p8.c<Object> cVar) {
        this.f20961a = outputStream;
        this.f20962b = map;
        this.f20963c = map2;
        this.f20964d = cVar;
    }

    private static ByteBuffer p(int i10) {
        return ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
    }

    private <T> long q(p8.c<T> cVar, T t10) throws IOException {
        b bVar = new b();
        try {
            OutputStream outputStream = this.f20961a;
            this.f20961a = bVar;
            cVar.a(t10, this);
            this.f20961a = outputStream;
            long d10 = bVar.d();
            bVar.close();
            return d10;
        } catch (Throwable th2) {
            try {
                bVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private <T> d r(p8.c<T> cVar, p8.b bVar, T t10, boolean z10) throws IOException {
        long q10 = q(cVar, t10);
        if (z10 && q10 == 0) {
            return this;
        }
        x((v(bVar) << 3) | 2);
        y(q10);
        cVar.a(t10, this);
        return this;
    }

    private <T> d s(p8.e<T> eVar, p8.b bVar, T t10, boolean z10) throws IOException {
        this.f20965e.c(bVar, z10);
        eVar.a(t10, this.f20965e);
        return this;
    }

    private static Protobuf u(p8.b bVar) {
        Protobuf protobuf = (Protobuf) bVar.c(Protobuf.class);
        if (protobuf != null) {
            return protobuf;
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private static int v(p8.b bVar) {
        Protobuf protobuf = (Protobuf) bVar.c(Protobuf.class);
        if (protobuf != null) {
            return protobuf.tag();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w(Map.Entry entry, p8.d dVar) throws IOException {
        dVar.f(f20958g, entry.getKey());
        dVar.f(f20959h, entry.getValue());
    }

    private void x(int i10) throws IOException {
        while ((i10 & (-128)) != 0) {
            this.f20961a.write((i10 & 127) | 128);
            i10 >>>= 7;
        }
        this.f20961a.write(i10 & 127);
    }

    private void y(long j10) throws IOException {
        while (((-128) & j10) != 0) {
            this.f20961a.write((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        this.f20961a.write(((int) j10) & 127);
    }

    @Override // p8.d
    @NonNull
    public p8.d e(@NonNull p8.b bVar, double d10) throws IOException {
        return m(bVar, d10, true);
    }

    @Override // p8.d
    @NonNull
    public p8.d f(@NonNull p8.b bVar, @Nullable Object obj) throws IOException {
        return o(bVar, obj, true);
    }

    @Override // p8.d
    @NonNull
    /* renamed from: g */
    public d d(@NonNull p8.b bVar, int i10) throws IOException {
        return h(bVar, i10, true);
    }

    d h(@NonNull p8.b bVar, int i10, boolean z10) throws IOException {
        if (z10 && i10 == 0) {
            return this;
        }
        Protobuf u10 = u(bVar);
        int i11 = a.f20966a[u10.intEncoding().ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 == 3) {
                    x((u10.tag() << 3) | 5);
                    this.f20961a.write(p(4).putInt(i10).array());
                }
            } else {
                x(u10.tag() << 3);
                x((i10 << 1) ^ (i10 >> 31));
            }
        } else {
            x(u10.tag() << 3);
            x(i10);
        }
        return this;
    }

    @Override // p8.d
    @NonNull
    /* renamed from: i */
    public d b(@NonNull p8.b bVar, long j10) throws IOException {
        return j(bVar, j10, true);
    }

    d j(@NonNull p8.b bVar, long j10, boolean z10) throws IOException {
        if (z10 && j10 == 0) {
            return this;
        }
        Protobuf u10 = u(bVar);
        int i10 = a.f20966a[u10.intEncoding().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    x((u10.tag() << 3) | 1);
                    this.f20961a.write(p(8).putLong(j10).array());
                }
            } else {
                x(u10.tag() << 3);
                y((j10 >> 63) ^ (j10 << 1));
            }
        } else {
            x(u10.tag() << 3);
            y(j10);
        }
        return this;
    }

    @Override // p8.d
    @NonNull
    /* renamed from: k */
    public d c(@NonNull p8.b bVar, boolean z10) throws IOException {
        return l(bVar, z10, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d l(@NonNull p8.b bVar, boolean z10, boolean z11) throws IOException {
        return h(bVar, z10 ? 1 : 0, z11);
    }

    p8.d m(@NonNull p8.b bVar, double d10, boolean z10) throws IOException {
        if (z10 && d10 == 0.0d) {
            return this;
        }
        x((v(bVar) << 3) | 1);
        this.f20961a.write(p(8).putDouble(d10).array());
        return this;
    }

    p8.d n(@NonNull p8.b bVar, float f10, boolean z10) throws IOException {
        if (z10 && f10 == 0.0f) {
            return this;
        }
        x((v(bVar) << 3) | 5);
        this.f20961a.write(p(4).putFloat(f10).array());
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p8.d o(@NonNull p8.b bVar, @Nullable Object obj, boolean z10) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z10 && charSequence.length() == 0) {
                return this;
            }
            x((v(bVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f20957f);
            x(bytes.length);
            this.f20961a.write(bytes);
            return this;
        } else if (obj instanceof Collection) {
            for (Object obj2 : (Collection) obj) {
                o(bVar, obj2, false);
            }
            return this;
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                r(f20960i, bVar, entry, false);
            }
            return this;
        } else if (obj instanceof Double) {
            return m(bVar, ((Double) obj).doubleValue(), z10);
        } else {
            if (obj instanceof Float) {
                return n(bVar, ((Float) obj).floatValue(), z10);
            }
            if (obj instanceof Number) {
                return j(bVar, ((Number) obj).longValue(), z10);
            }
            if (obj instanceof Boolean) {
                return l(bVar, ((Boolean) obj).booleanValue(), z10);
            }
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                if (z10 && bArr.length == 0) {
                    return this;
                }
                x((v(bVar) << 3) | 2);
                x(bArr.length);
                this.f20961a.write(bArr);
                return this;
            }
            p8.c<?> cVar = this.f20962b.get(obj.getClass());
            if (cVar != null) {
                return r(cVar, bVar, obj, z10);
            }
            p8.e<?> eVar = this.f20963c.get(obj.getClass());
            if (eVar != null) {
                return s(eVar, bVar, obj, z10);
            }
            if (obj instanceof s8.a) {
                return d(bVar, ((s8.a) obj).getNumber());
            }
            if (obj instanceof Enum) {
                return d(bVar, ((Enum) obj).ordinal());
            }
            return r(this.f20964d, bVar, obj, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d t(@Nullable Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        p8.c<?> cVar = this.f20962b.get(obj.getClass());
        if (cVar != null) {
            cVar.a(obj, this);
            return this;
        }
        throw new EncodingException("No encoder for " + obj.getClass());
    }
}
