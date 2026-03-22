package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.proto.e;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import p8.d;
/* compiled from: ProtobufEncoder.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, p8.c<?>> f20967a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, p8.e<?>> f20968b;

    /* renamed from: c  reason: collision with root package name */
    private final p8.c<Object> f20969c;

    /* compiled from: ProtobufEncoder.java */
    /* loaded from: classes5.dex */
    public static final class a implements q8.b<a> {

        /* renamed from: d  reason: collision with root package name */
        private static final p8.c<Object> f20970d = new p8.c() { // from class: s8.b
            @Override // p8.c
            public final void a(Object obj, Object obj2) {
                e.a.e(obj, (d) obj2);
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final Map<Class<?>, p8.c<?>> f20971a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private final Map<Class<?>, p8.e<?>> f20972b = new HashMap();

        /* renamed from: c  reason: collision with root package name */
        private p8.c<Object> f20973c = f20970d;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void e(Object obj, p8.d dVar) throws IOException {
            throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }

        public e c() {
            return new e(new HashMap(this.f20971a), new HashMap(this.f20972b), this.f20973c);
        }

        @NonNull
        public a d(@NonNull q8.a aVar) {
            aVar.a(this);
            return this;
        }

        @Override // q8.b
        @NonNull
        /* renamed from: f */
        public <U> a a(@NonNull Class<U> cls, @NonNull p8.c<? super U> cVar) {
            this.f20971a.put(cls, cVar);
            this.f20972b.remove(cls);
            return this;
        }
    }

    e(Map<Class<?>, p8.c<?>> map, Map<Class<?>, p8.e<?>> map2, p8.c<Object> cVar) {
        this.f20967a = map;
        this.f20968b = map2;
        this.f20969c = cVar;
    }

    public static a a() {
        return new a();
    }

    public void b(@NonNull Object obj, @NonNull OutputStream outputStream) throws IOException {
        new d(outputStream, this.f20967a, this.f20968b, this.f20969c).t(obj);
    }

    @NonNull
    public byte[] c(@NonNull Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            b(obj, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
