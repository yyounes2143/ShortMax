package t3;

import com.facebook.common.internal.ImmutableMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import t3.k;
/* compiled from: DiskCachesStoreFactory.kt */
@Metadata
/* loaded from: classes3.dex */
public final class k implements k2.k<c> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final p f66851a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final b4.d0 f66852b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final o f66853c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final r3.s f66854d;

    /* renamed from: e  reason: collision with root package name */
    private final int f66855e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final g2.b f66856f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final g2.b f66857g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final Map<String, g2.b> f66858h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final ms.i f66859i;

    /* compiled from: DiskCachesStoreFactory.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiskCachesStoreFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskCachesStoreFactory.kt\ncom/facebook/imagepipeline/core/DiskCachesStoreFactory$diskCachesStore$2$1\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n462#2:102\n412#2:103\n462#2:109\n412#2:110\n1246#3,4:104\n1246#3,4:111\n1#4:108\n*S KotlinDebug\n*F\n+ 1 DiskCachesStoreFactory.kt\ncom/facebook/imagepipeline/core/DiskCachesStoreFactory$diskCachesStore$2$1\n*L\n79#1:102\n79#1:103\n86#1:109\n86#1:110\n79#1:104,4\n86#1:111,4\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        private final ms.i f66860a;

        /* renamed from: b  reason: collision with root package name */
        private final ms.i f66861b;

        /* renamed from: c  reason: collision with root package name */
        private final ms.i f66862c;

        /* renamed from: d  reason: collision with root package name */
        private final ms.i f66863d;

        /* renamed from: e  reason: collision with root package name */
        private final ms.i f66864e;

        /* renamed from: f  reason: collision with root package name */
        private final ms.i f66865f;

        a(final k kVar) {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            this.f66860a = kotlin.c.a(lazyThreadSafetyMode, new Function0() { // from class: t3.e
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    g2.e p10;
                    p10 = k.a.p(k.this);
                    return p10;
                }
            });
            this.f66861b = kotlin.c.a(lazyThreadSafetyMode, new Function0() { // from class: t3.f
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    r3.i o10;
                    o10 = k.a.o(k.a.this, kVar);
                    return o10;
                }
            });
            this.f66862c = kotlin.c.a(lazyThreadSafetyMode, new Function0() { // from class: t3.g
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    g2.e r10;
                    r10 = k.a.r(k.this);
                    return r10;
                }
            });
            this.f66863d = kotlin.c.a(lazyThreadSafetyMode, new Function0() { // from class: t3.h
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    r3.i q10;
                    q10 = k.a.q(k.a.this, kVar);
                    return q10;
                }
            });
            this.f66864e = kotlin.c.a(lazyThreadSafetyMode, new Function0() { // from class: t3.i
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Map k10;
                    k10 = k.a.k(k.this, this);
                    return k10;
                }
            });
            this.f66865f = kotlin.c.a(lazyThreadSafetyMode, new Function0() { // from class: t3.j
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    ImmutableMap j10;
                    j10 = k.a.j(k.a.this, kVar);
                    return j10;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final ImmutableMap j(a this$0, k this$1) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            Map<String, g2.e> l10 = this$0.l();
            LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.collections.p0.e(l10.size()));
            Iterator<T> it = l10.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                Object key = entry.getKey();
                n2.g i10 = this$1.f66852b.i(this$1.f66855e);
                Intrinsics.checkNotNullExpressionValue(i10, "getPooledByteBufferFactory(...)");
                n2.j j10 = this$1.f66852b.j();
                Intrinsics.checkNotNullExpressionValue(j10, "getPooledByteStreams(...)");
                Executor c10 = this$1.f66853c.c();
                Intrinsics.checkNotNullExpressionValue(c10, "forLocalStorageRead(...)");
                Executor e10 = this$1.f66853c.e();
                Intrinsics.checkNotNullExpressionValue(e10, "forLocalStorageWrite(...)");
                linkedHashMap.put(key, new r3.i((g2.e) entry.getValue(), i10, j10, c10, e10, this$1.f66854d));
            }
            return ImmutableMap.b(linkedHashMap);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Map k(k this$0, a this$1) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            Map map = this$0.f66858h;
            if (map != null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.collections.p0.e(map.size()));
                for (Map.Entry entry : map.entrySet()) {
                    linkedHashMap.put(entry.getKey(), this$0.f66851a.a((g2.b) entry.getValue()));
                }
                return linkedHashMap;
            }
            return kotlin.collections.p0.i();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final r3.i o(a this$0, k this$1) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            g2.e m10 = this$0.m();
            n2.g i10 = this$1.f66852b.i(this$1.f66855e);
            Intrinsics.checkNotNullExpressionValue(i10, "getPooledByteBufferFactory(...)");
            n2.j j10 = this$1.f66852b.j();
            Intrinsics.checkNotNullExpressionValue(j10, "getPooledByteStreams(...)");
            Executor c10 = this$1.f66853c.c();
            Intrinsics.checkNotNullExpressionValue(c10, "forLocalStorageRead(...)");
            Executor e10 = this$1.f66853c.e();
            Intrinsics.checkNotNullExpressionValue(e10, "forLocalStorageWrite(...)");
            return new r3.i(m10, i10, j10, c10, e10, this$1.f66854d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final g2.e p(k this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            return this$0.f66851a.a(this$0.f66856f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final r3.i q(a this$0, k this$1) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            g2.e n10 = this$0.n();
            n2.g i10 = this$1.f66852b.i(this$1.f66855e);
            Intrinsics.checkNotNullExpressionValue(i10, "getPooledByteBufferFactory(...)");
            n2.j j10 = this$1.f66852b.j();
            Intrinsics.checkNotNullExpressionValue(j10, "getPooledByteStreams(...)");
            Executor c10 = this$1.f66853c.c();
            Intrinsics.checkNotNullExpressionValue(c10, "forLocalStorageRead(...)");
            Executor e10 = this$1.f66853c.e();
            Intrinsics.checkNotNullExpressionValue(e10, "forLocalStorageWrite(...)");
            return new r3.i(n10, i10, j10, c10, e10, this$1.f66854d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final g2.e r(k this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            return this$0.f66851a.a(this$0.f66857g);
        }

        @Override // t3.c
        public r3.i a() {
            return (r3.i) this.f66863d.getValue();
        }

        @Override // t3.c
        public r3.i b() {
            return (r3.i) this.f66861b.getValue();
        }

        @Override // t3.c
        public ImmutableMap<String, r3.i> c() {
            Object value = this.f66865f.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            return (ImmutableMap) value;
        }

        public Map<String, g2.e> l() {
            return (Map) this.f66864e.getValue();
        }

        public g2.e m() {
            return (g2.e) this.f66860a.getValue();
        }

        public g2.e n() {
            return (g2.e) this.f66862c.getValue();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public k(@NotNull p fileCacheFactory, @NotNull b4.d0 poolFactory, @NotNull o executorSupplier, @NotNull r3.s imageCacheStatsTracker, int i10, @NotNull g2.b mainDiskCacheConfig, @NotNull g2.b smallImageDiskCacheConfig, @Nullable Map<String, ? extends g2.b> map) {
        Intrinsics.checkNotNullParameter(fileCacheFactory, "fileCacheFactory");
        Intrinsics.checkNotNullParameter(poolFactory, "poolFactory");
        Intrinsics.checkNotNullParameter(executorSupplier, "executorSupplier");
        Intrinsics.checkNotNullParameter(imageCacheStatsTracker, "imageCacheStatsTracker");
        Intrinsics.checkNotNullParameter(mainDiskCacheConfig, "mainDiskCacheConfig");
        Intrinsics.checkNotNullParameter(smallImageDiskCacheConfig, "smallImageDiskCacheConfig");
        this.f66851a = fileCacheFactory;
        this.f66852b = poolFactory;
        this.f66853c = executorSupplier;
        this.f66854d = imageCacheStatsTracker;
        this.f66855e = i10;
        this.f66856f = mainDiskCacheConfig;
        this.f66857g = smallImageDiskCacheConfig;
        this.f66858h = map;
        this.f66859i = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: t3.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                k.a j10;
                j10 = k.j(k.this);
                return j10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a j(k this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return new a(this$0);
    }

    private final c l() {
        return (c) this.f66859i.getValue();
    }

    @Override // k2.k
    @NotNull
    /* renamed from: k */
    public c get() {
        return l();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k(@NotNull p fileCacheFactory, @NotNull t config) {
        this(fileCacheFactory, config.i(), config.H(), config.k(), config.z(), config.p(), config.t(), config.d());
        Intrinsics.checkNotNullParameter(fileCacheFactory, "fileCacheFactory");
        Intrinsics.checkNotNullParameter(config, "config");
    }
}
