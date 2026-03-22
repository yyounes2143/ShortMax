package k0;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import coil.ImageLoader;
import coil.decode.DataSource;
import coil.intercept.EngineInterceptor;
import coil.memory.MemoryCache;
import coil.size.Scale;
import h0.a;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m0.j;
import m0.l;
import m0.m;
import n0.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r0.h;
import r0.i;
import r0.q;
/* compiled from: MemoryCacheService.kt */
@Metadata
/* loaded from: classes2.dex */
public final class c {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f60559c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ImageLoader f60560a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final l f60561b;

    /* compiled from: MemoryCacheService.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public c(@NotNull ImageLoader imageLoader, @NotNull l lVar, @Nullable q qVar) {
        this.f60560a = imageLoader;
        this.f60561b = lVar;
    }

    private final String b(MemoryCache.b bVar) {
        Object obj = bVar.b().get("coil#disk_cache_key");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    private final boolean d(MemoryCache.b bVar) {
        Boolean bool;
        Object obj = bVar.b().get("coil#is_sampled");
        if (obj instanceof Boolean) {
            bool = (Boolean) obj;
        } else {
            bool = null;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    private final boolean e(m0.f fVar, MemoryCache.Key key, MemoryCache.b bVar, n0.g gVar, Scale scale) {
        int i10;
        boolean d10 = d(bVar);
        if (n0.b.a(gVar)) {
            if (d10) {
                return false;
            }
            return true;
        }
        String str = key.c().get("coil#transformation_size");
        if (str != null) {
            return Intrinsics.areEqual(str, gVar.toString());
        }
        int width = bVar.a().getWidth();
        int height = bVar.a().getHeight();
        n0.c b10 = gVar.b();
        int i11 = Integer.MAX_VALUE;
        if (b10 instanceof c.a) {
            i10 = ((c.a) b10).f62716a;
        } else {
            i10 = Integer.MAX_VALUE;
        }
        n0.c a10 = gVar.a();
        if (a10 instanceof c.a) {
            i11 = ((c.a) a10).f62716a;
        }
        double c10 = d0.f.c(width, height, i10, i11, scale);
        boolean a11 = h.a(fVar);
        if (a11) {
            double h10 = kotlin.ranges.e.h(c10, 1.0d);
            if (Math.abs(i10 - (width * h10)) <= 1.0d || Math.abs(i11 - (h10 * height)) <= 1.0d) {
                return true;
            }
        } else if ((i.s(i10) || Math.abs(i10 - width) <= 1) && (i.s(i11) || Math.abs(i11 - height) <= 1)) {
            return true;
        }
        if (c10 != 1.0d && !a11) {
            return false;
        }
        if (c10 > 1.0d && d10) {
            return false;
        }
        return true;
    }

    @Nullable
    public final MemoryCache.b a(@NotNull m0.f fVar, @NotNull MemoryCache.Key key, @NotNull n0.g gVar, @NotNull Scale scale) {
        MemoryCache.b bVar;
        if (!fVar.C().getReadEnabled()) {
            return null;
        }
        MemoryCache d10 = this.f60560a.d();
        if (d10 != null) {
            bVar = d10.b(key);
        } else {
            bVar = null;
        }
        if (bVar == null || !c(fVar, key, bVar, gVar, scale)) {
            return null;
        }
        return bVar;
    }

    @VisibleForTesting
    public final boolean c(@NotNull m0.f fVar, @NotNull MemoryCache.Key key, @NotNull MemoryCache.b bVar, @NotNull n0.g gVar, @NotNull Scale scale) {
        if (!this.f60561b.c(fVar, r0.a.c(bVar.a()))) {
            return false;
        }
        return e(fVar, key, bVar, gVar, scale);
    }

    @Nullable
    public final MemoryCache.Key f(@NotNull m0.f fVar, @NotNull Object obj, @NotNull j jVar, @NotNull a0.c cVar) {
        MemoryCache.Key B = fVar.B();
        if (B != null) {
            return B;
        }
        cVar.l(fVar, obj);
        String f10 = this.f60560a.getComponents().f(obj, jVar);
        cVar.m(fVar, f10);
        if (f10 == null) {
            return null;
        }
        List<p0.a> O = fVar.O();
        Map<String, String> c10 = fVar.E().c();
        if (O.isEmpty() && c10.isEmpty()) {
            return new MemoryCache.Key(f10, null, 2, null);
        }
        Map A = p0.A(c10);
        if (!O.isEmpty()) {
            List<p0.a> O2 = fVar.O();
            int size = O2.size();
            for (int i10 = 0; i10 < size; i10++) {
                A.put("coil#transformation_" + i10, O2.get(i10).getCacheKey());
            }
            A.put("coil#transformation_size", jVar.n().toString());
        }
        return new MemoryCache.Key(f10, A);
    }

    @NotNull
    public final m g(@NotNull a.InterfaceC0763a interfaceC0763a, @NotNull m0.f fVar, @NotNull MemoryCache.Key key, @NotNull MemoryCache.b bVar) {
        return new m(new BitmapDrawable(fVar.l().getResources(), bVar.a()), fVar, DataSource.MEMORY_CACHE, key, b(bVar), d(bVar), i.t(interfaceC0763a));
    }

    public final boolean h(@Nullable MemoryCache.Key key, @NotNull m0.f fVar, @NotNull EngineInterceptor.b bVar) {
        MemoryCache d10;
        BitmapDrawable bitmapDrawable;
        Bitmap bitmap;
        if (fVar.C().getWriteEnabled() && (d10 = this.f60560a.d()) != null && key != null) {
            Drawable e10 = bVar.e();
            if (e10 instanceof BitmapDrawable) {
                bitmapDrawable = (BitmapDrawable) e10;
            } else {
                bitmapDrawable = null;
            }
            if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("coil#is_sampled", Boolean.valueOf(bVar.f()));
                String d11 = bVar.d();
                if (d11 != null) {
                    linkedHashMap.put("coil#disk_cache_key", d11);
                }
                d10.c(key, new MemoryCache.b(bitmap, linkedHashMap));
                return true;
            }
        }
        return false;
    }
}
