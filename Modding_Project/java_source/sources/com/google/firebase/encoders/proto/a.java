package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.proto.Protobuf;
import java.lang.annotation.Annotation;
/* compiled from: AtProtobuf.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private int f20952a;

    /* renamed from: b  reason: collision with root package name */
    private Protobuf.IntEncoding f20953b = Protobuf.IntEncoding.DEFAULT;

    /* compiled from: AtProtobuf.java */
    /* renamed from: com.google.firebase.encoders.proto.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static final class C0305a implements Protobuf {

        /* renamed from: d  reason: collision with root package name */
        private final int f20954d;

        /* renamed from: e  reason: collision with root package name */
        private final Protobuf.IntEncoding f20955e;

        C0305a(int i10, Protobuf.IntEncoding intEncoding) {
            this.f20954d = i10;
            this.f20955e = intEncoding;
        }

        @Override // java.lang.annotation.Annotation
        public Class<? extends Annotation> annotationType() {
            return Protobuf.class;
        }

        @Override // java.lang.annotation.Annotation
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Protobuf)) {
                return false;
            }
            Protobuf protobuf = (Protobuf) obj;
            if (this.f20954d == protobuf.tag() && this.f20955e.equals(protobuf.intEncoding())) {
                return true;
            }
            return false;
        }

        @Override // java.lang.annotation.Annotation
        public int hashCode() {
            return (14552422 ^ this.f20954d) + (this.f20955e.hashCode() ^ 2041407134);
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public Protobuf.IntEncoding intEncoding() {
            return this.f20955e;
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public int tag() {
            return this.f20954d;
        }

        @Override // java.lang.annotation.Annotation
        public String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f20954d + "intEncoding=" + this.f20955e + ')';
        }
    }

    public static a b() {
        return new a();
    }

    public Protobuf a() {
        return new C0305a(this.f20952a, this.f20953b);
    }

    public a c(int i10) {
        this.f20952a = i10;
        return this;
    }
}
