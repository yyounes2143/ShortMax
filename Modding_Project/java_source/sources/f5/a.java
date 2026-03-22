package f5;

import c5.m;
import com.google.firebase.encoders.proto.Protobuf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: ClientMetrics.java */
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: e  reason: collision with root package name */
    private static final a f51602e = new C0741a().b();

    /* renamed from: a  reason: collision with root package name */
    private final e f51603a;

    /* renamed from: b  reason: collision with root package name */
    private final List<c> f51604b;

    /* renamed from: c  reason: collision with root package name */
    private final b f51605c;

    /* renamed from: d  reason: collision with root package name */
    private final String f51606d;

    /* compiled from: ClientMetrics.java */
    /* renamed from: f5.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0741a {

        /* renamed from: a  reason: collision with root package name */
        private e f51607a = null;

        /* renamed from: b  reason: collision with root package name */
        private List<c> f51608b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private b f51609c = null;

        /* renamed from: d  reason: collision with root package name */
        private String f51610d = "";

        C0741a() {
        }

        public C0741a a(c cVar) {
            this.f51608b.add(cVar);
            return this;
        }

        public a b() {
            return new a(this.f51607a, Collections.unmodifiableList(this.f51608b), this.f51609c, this.f51610d);
        }

        public C0741a c(String str) {
            this.f51610d = str;
            return this;
        }

        public C0741a d(b bVar) {
            this.f51609c = bVar;
            return this;
        }

        public C0741a e(e eVar) {
            this.f51607a = eVar;
            return this;
        }
    }

    a(e eVar, List<c> list, b bVar, String str) {
        this.f51603a = eVar;
        this.f51604b = list;
        this.f51605c = bVar;
        this.f51606d = str;
    }

    public static C0741a e() {
        return new C0741a();
    }

    @Protobuf(tag = 4)
    public String a() {
        return this.f51606d;
    }

    @Protobuf(tag = 3)
    public b b() {
        return this.f51605c;
    }

    @Protobuf(tag = 2)
    public List<c> c() {
        return this.f51604b;
    }

    @Protobuf(tag = 1)
    public e d() {
        return this.f51603a;
    }

    public byte[] f() {
        return m.a(this);
    }
}
