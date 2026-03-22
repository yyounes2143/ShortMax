package coil.memory;

import android.graphics.Bitmap;
import androidx.collection.LruCache;
import coil.memory.MemoryCache;
import coil.memory.RealStrongMemoryCache;
import java.util.Map;
import k0.f;
import k0.g;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StrongMemoryCache.kt */
@Metadata
/* loaded from: classes2.dex */
public final class RealStrongMemoryCache implements f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final g f4068a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final RealStrongMemoryCache$cache$1 f4069b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StrongMemoryCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Bitmap f4070a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, Object> f4071b;

        /* renamed from: c  reason: collision with root package name */
        private final int f4072c;

        public a(@NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map, int i10) {
            this.f4070a = bitmap;
            this.f4071b = map;
            this.f4072c = i10;
        }

        @NotNull
        public final Bitmap a() {
            return this.f4070a;
        }

        @NotNull
        public final Map<String, Object> b() {
            return this.f4071b;
        }

        public final int c() {
            return this.f4072c;
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [coil.memory.RealStrongMemoryCache$cache$1] */
    public RealStrongMemoryCache(final int i10, @NotNull g gVar) {
        this.f4068a = gVar;
        this.f4069b = new LruCache<MemoryCache.Key, a>(i10) { // from class: coil.memory.RealStrongMemoryCache$cache$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.collection.LruCache
            /* renamed from: a */
            public void entryRemoved(boolean z10, @NotNull MemoryCache.Key key, @NotNull RealStrongMemoryCache.a aVar, @Nullable RealStrongMemoryCache.a aVar2) {
                g gVar2;
                gVar2 = this.f4068a;
                gVar2.c(key, aVar.a(), aVar.b(), aVar.c());
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.collection.LruCache
            /* renamed from: b */
            public int sizeOf(@NotNull MemoryCache.Key key, @NotNull RealStrongMemoryCache.a aVar) {
                return aVar.c();
            }
        };
    }

    @Override // k0.f
    public void a(int i10) {
        if (i10 >= 40) {
            e();
        } else if (10 <= i10 && i10 < 20) {
            trimToSize(g() / 2);
        }
    }

    @Override // k0.f
    @Nullable
    public MemoryCache.b b(@NotNull MemoryCache.Key key) {
        a aVar = get(key);
        if (aVar != null) {
            return new MemoryCache.b(aVar.a(), aVar.b());
        }
        return null;
    }

    @Override // k0.f
    public void c(@NotNull MemoryCache.Key key, @NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map) {
        int a10 = r0.a.a(bitmap);
        if (a10 <= f()) {
            put(key, new a(bitmap, map, a10));
            return;
        }
        remove(key);
        this.f4068a.c(key, bitmap, map, a10);
    }

    public void e() {
        evictAll();
    }

    public int f() {
        return maxSize();
    }

    public int g() {
        return size();
    }
}
