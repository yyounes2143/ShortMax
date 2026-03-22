package a0;

import coil.ImageLoader;
import d0.g;
import g0.i;
import g0.l;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m0.j;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComponentRegistry.kt */
@Metadata
/* loaded from: classes2.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<h0.a> f39a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<Pair<j0.d<? extends Object, ? extends Object>, Class<? extends Object>>> f40b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<Pair<i0.b<? extends Object>, Class<? extends Object>>> f41c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final List<Pair<i.a<? extends Object>, Class<? extends Object>>> f42d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final List<g.a> f43e;

    /* compiled from: ComponentRegistry.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<h0.a> f44a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final List<Pair<j0.d<? extends Object, ?>, Class<? extends Object>>> f45b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final List<Pair<i0.b<? extends Object>, Class<? extends Object>>> f46c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final List<Pair<i.a<? extends Object>, Class<? extends Object>>> f47d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final List<g.a> f48e;

        public a(@NotNull b bVar) {
            this.f44a = CollectionsKt.g1(bVar.c());
            this.f45b = CollectionsKt.g1(bVar.e());
            this.f46c = CollectionsKt.g1(bVar.d());
            this.f47d = CollectionsKt.g1(bVar.b());
            this.f48e = CollectionsKt.g1(bVar.a());
        }

        @NotNull
        public final a a(@NotNull g.a aVar) {
            this.f48e.add(aVar);
            return this;
        }

        @NotNull
        public final <T> a b(@NotNull i.a<T> aVar, @NotNull Class<T> cls) {
            this.f47d.add(k.a(aVar, cls));
            return this;
        }

        @NotNull
        public final <T> a c(@NotNull i0.b<T> bVar, @NotNull Class<T> cls) {
            this.f46c.add(k.a(bVar, cls));
            return this;
        }

        @NotNull
        public final <T> a d(@NotNull j0.d<T, ?> dVar, @NotNull Class<T> cls) {
            this.f45b.add(k.a(dVar, cls));
            return this;
        }

        @NotNull
        public final b e() {
            return new b(r0.c.a(this.f44a), r0.c.a(this.f45b), r0.c.a(this.f46c), r0.c.a(this.f47d), r0.c.a(this.f48e), null);
        }

        @NotNull
        public final List<g.a> f() {
            return this.f48e;
        }

        @NotNull
        public final List<Pair<i.a<? extends Object>, Class<? extends Object>>> g() {
            return this.f47d;
        }
    }

    public /* synthetic */ b(List list, List list2, List list3, List list4, List list5, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, list3, list4, list5);
    }

    @NotNull
    public final List<g.a> a() {
        return this.f43e;
    }

    @NotNull
    public final List<Pair<i.a<? extends Object>, Class<? extends Object>>> b() {
        return this.f42d;
    }

    @NotNull
    public final List<h0.a> c() {
        return this.f39a;
    }

    @NotNull
    public final List<Pair<i0.b<? extends Object>, Class<? extends Object>>> d() {
        return this.f41c;
    }

    @NotNull
    public final List<Pair<j0.d<? extends Object, ? extends Object>, Class<? extends Object>>> e() {
        return this.f40b;
    }

    @Nullable
    public final String f(@NotNull Object obj, @NotNull j jVar) {
        List<Pair<i0.b<? extends Object>, Class<? extends Object>>> list = this.f41c;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Pair<i0.b<? extends Object>, Class<? extends Object>> pair = list.get(i10);
            i0.b<? extends Object> b10 = pair.b();
            if (pair.d().isAssignableFrom(obj.getClass())) {
                Intrinsics.checkNotNull(b10, "null cannot be cast to non-null type coil.key.Keyer<kotlin.Any>");
                String a10 = b10.a(obj, jVar);
                if (a10 != null) {
                    return a10;
                }
            }
        }
        return null;
    }

    @NotNull
    public final Object g(@NotNull Object obj, @NotNull j jVar) {
        List<Pair<j0.d<? extends Object, ? extends Object>, Class<? extends Object>>> list = this.f40b;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Pair<j0.d<? extends Object, ? extends Object>, Class<? extends Object>> pair = list.get(i10);
            j0.d<? extends Object, ? extends Object> b10 = pair.b();
            if (pair.d().isAssignableFrom(obj.getClass())) {
                Intrinsics.checkNotNull(b10, "null cannot be cast to non-null type coil.map.Mapper<kotlin.Any, *>");
                Object a10 = b10.a(obj, jVar);
                if (a10 != null) {
                    obj = a10;
                }
            }
        }
        return obj;
    }

    @NotNull
    public final a h() {
        return new a(this);
    }

    @Nullable
    public final Pair<g, Integer> i(@NotNull l lVar, @NotNull j jVar, @NotNull ImageLoader imageLoader, int i10) {
        int size = this.f43e.size();
        while (i10 < size) {
            g a10 = this.f43e.get(i10).a(lVar, jVar, imageLoader);
            if (a10 != null) {
                return k.a(a10, Integer.valueOf(i10));
            }
            i10++;
        }
        return null;
    }

    @Nullable
    public final Pair<i, Integer> j(@NotNull Object obj, @NotNull j jVar, @NotNull ImageLoader imageLoader, int i10) {
        int size = this.f42d.size();
        while (i10 < size) {
            Pair<i.a<? extends Object>, Class<? extends Object>> pair = this.f42d.get(i10);
            i.a<? extends Object> b10 = pair.b();
            if (pair.d().isAssignableFrom(obj.getClass())) {
                Intrinsics.checkNotNull(b10, "null cannot be cast to non-null type coil.fetch.Fetcher.Factory<kotlin.Any>");
                i a10 = b10.a(obj, jVar, imageLoader);
                if (a10 != null) {
                    return k.a(a10, Integer.valueOf(i10));
                }
            }
            i10++;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private b(List<? extends h0.a> list, List<? extends Pair<? extends j0.d<? extends Object, ? extends Object>, ? extends Class<? extends Object>>> list2, List<? extends Pair<? extends i0.b<? extends Object>, ? extends Class<? extends Object>>> list3, List<? extends Pair<? extends i.a<? extends Object>, ? extends Class<? extends Object>>> list4, List<? extends g.a> list5) {
        this.f39a = list;
        this.f40b = list2;
        this.f41c = list3;
        this.f42d = list4;
        this.f43e = list5;
    }

    public b() {
        this(CollectionsKt.n(), CollectionsKt.n(), CollectionsKt.n(), CollectionsKt.n(), CollectionsKt.n());
    }
}
