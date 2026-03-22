package io.bidmachine.analytics.internal;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: io.bidmachine.analytics.internal.n  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public final class C3319n {

    /* renamed from: a  reason: collision with root package name */
    private final String f54181a;

    /* renamed from: b  reason: collision with root package name */
    private final a f54182b;

    /* renamed from: c  reason: collision with root package name */
    private final a f54183c;

    /* renamed from: d  reason: collision with root package name */
    private final ms.i f54184d = kotlin.c.b(new c());

    /* renamed from: e  reason: collision with root package name */
    private final ms.i f54185e = kotlin.c.b(new b());

    /* renamed from: io.bidmachine.analytics.internal.n$a */
    /* loaded from: classes7.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List f54186a;

        /* renamed from: b  reason: collision with root package name */
        private final List f54187b;

        /* renamed from: c  reason: collision with root package name */
        private final List f54188c;

        public a(List list, List list2, List list3) {
            this.f54186a = list;
            this.f54187b = list2;
            this.f54188c = list3;
        }

        public final a a(List list, List list2, List list3) {
            return new a(list, list2, list3);
        }

        public final List b() {
            return this.f54188c;
        }

        public final List c() {
            return this.f54187b;
        }

        public final boolean d() {
            if (this.f54186a.isEmpty() && this.f54187b.isEmpty() && this.f54188c.isEmpty()) {
                return true;
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f54186a, aVar.f54186a) && Intrinsics.areEqual(this.f54187b, aVar.f54187b) && Intrinsics.areEqual(this.f54188c, aVar.f54188c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f54186a.hashCode() * 31) + this.f54187b.hashCode()) * 31) + this.f54188c.hashCode();
        }

        public String toString() {
            return super.toString();
        }

        public static /* synthetic */ a a(a aVar, List list, List list2, List list3, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                list = aVar.f54186a;
            }
            if ((i10 & 2) != 0) {
                list2 = aVar.f54187b;
            }
            if ((i10 & 4) != 0) {
                list3 = aVar.f54188c;
            }
            return aVar.a(list, list2, list3);
        }

        public final List a() {
            return this.f54186a;
        }

        public /* synthetic */ a(List list, List list2, List list3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? CollectionsKt.n() : list, (i10 & 2) != 0 ? CollectionsKt.n() : list2, (i10 & 4) != 0 ? CollectionsKt.n() : list3);
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.n$b */
    /* loaded from: classes7.dex */
    static final class b extends Lambda implements Function0 {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            String A0 = CollectionsKt.A0(CollectionsKt.q(Integer.valueOf(C3319n.this.c().a().size()), Integer.valueOf(C3319n.this.c().c().size()), Integer.valueOf(C3319n.this.c().b().size()), Integer.valueOf(C3319n.this.e().a().size()), Integer.valueOf(C3319n.this.e().c().size()), Integer.valueOf(C3319n.this.e().b().size())), "_", null, null, 0, null, null, 62, null);
            return C3319n.this.d().hashCode() + '_' + A0;
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.n$c */
    /* loaded from: classes7.dex */
    static final class c extends Lambda implements Function0 {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            JSONObject jSONObject = new JSONObject();
            C3319n c3319n = C3319n.this;
            jSONObject.put("ver", c3319n.a());
            jSONObject.put("iaa", new JSONArray((Collection) c3319n.c().a()));
            jSONObject.put("iah", new JSONArray((Collection) c3319n.c().c()));
            jSONObject.put("iad", new JSONArray((Collection) c3319n.c().b()));
            jSONObject.put("sua", new JSONArray((Collection) c3319n.e().a()));
            jSONObject.put("suh", new JSONArray((Collection) c3319n.e().c()));
            jSONObject.put("sud", new JSONArray((Collection) c3319n.e().b()));
            return jSONObject.toString();
        }
    }

    public C3319n(String str, a aVar, a aVar2) {
        this.f54181a = str;
        this.f54182b = aVar;
        this.f54183c = aVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String d() {
        return (String) this.f54184d.getValue();
    }

    public final String b() {
        return (String) this.f54185e.getValue();
    }

    public final a c() {
        return this.f54182b;
    }

    public final a e() {
        return this.f54183c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3319n)) {
            return false;
        }
        C3319n c3319n = (C3319n) obj;
        if (Intrinsics.areEqual(this.f54181a, c3319n.f54181a) && Intrinsics.areEqual(this.f54182b, c3319n.f54182b) && Intrinsics.areEqual(this.f54183c, c3319n.f54183c)) {
            return true;
        }
        return false;
    }

    public final boolean f() {
        if (this.f54182b.d() && this.f54183c.d()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f54181a.hashCode() * 31) + this.f54182b.hashCode()) * 31) + this.f54183c.hashCode();
    }

    public String toString() {
        return d();
    }

    public final String a() {
        return this.f54181a;
    }
}
