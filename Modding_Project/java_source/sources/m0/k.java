package m0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Parameters.kt */
@Metadata
/* loaded from: classes2.dex */
public final class k implements Iterable<Pair<? extends String, ? extends c>>, KMappedMarker {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final b f62420b = new b(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final k f62421c = new k();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, c> f62422a;

    /* compiled from: Parameters.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, c> f62423a;

        public a(@NotNull k kVar) {
            this.f62423a = p0.A(kVar.f62422a);
        }

        @NotNull
        public final k a() {
            return new k(r0.c.b(this.f62423a), null);
        }
    }

    /* compiled from: Parameters.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: Parameters.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Object f62424a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f62425b;

        @Nullable
        public final String a() {
            return this.f62425b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (Intrinsics.areEqual(this.f62424a, cVar.f62424a) && Intrinsics.areEqual(this.f62425b, cVar.f62425b)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int i10;
            Object obj = this.f62424a;
            int i11 = 0;
            if (obj != null) {
                i10 = obj.hashCode();
            } else {
                i10 = 0;
            }
            int i12 = i10 * 31;
            String str = this.f62425b;
            if (str != null) {
                i11 = str.hashCode();
            }
            return i12 + i11;
        }

        @NotNull
        public String toString() {
            return "Entry(value=" + this.f62424a + ", memoryCacheKey=" + this.f62425b + ')';
        }
    }

    public /* synthetic */ k(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(map);
    }

    @NotNull
    public final Map<String, String> c() {
        if (isEmpty()) {
            return p0.i();
        }
        Map<String, c> map = this.f62422a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, c> entry : map.entrySet()) {
            String a10 = entry.getValue().a();
            if (a10 != null) {
                linkedHashMap.put(entry.getKey(), a10);
            }
        }
        return linkedHashMap;
    }

    @NotNull
    public final a d() {
        return new a(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof k) && Intrinsics.areEqual(this.f62422a, ((k) obj).f62422a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f62422a.hashCode();
    }

    public final boolean isEmpty() {
        return this.f62422a.isEmpty();
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Pair<? extends String, ? extends c>> iterator() {
        Map<String, c> map = this.f62422a;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, c> entry : map.entrySet()) {
            arrayList.add(ms.k.a(entry.getKey(), entry.getValue()));
        }
        return arrayList.iterator();
    }

    @NotNull
    public String toString() {
        return "Parameters(entries=" + this.f62422a + ')';
    }

    private k(Map<String, c> map) {
        this.f62422a = map;
    }

    public k() {
        this(p0.i());
    }
}
