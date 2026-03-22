package k0;

import coil.memory.MemoryCache;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealMemoryCache.kt */
@Metadata
/* loaded from: classes2.dex */
public final class d implements MemoryCache {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final f f60562a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final g f60563b;

    public d(@NotNull f fVar, @NotNull g gVar) {
        this.f60562a = fVar;
        this.f60563b = gVar;
    }

    @Override // coil.memory.MemoryCache
    public void a(int i10) {
        this.f60562a.a(i10);
        this.f60563b.a(i10);
    }

    @Override // coil.memory.MemoryCache
    @Nullable
    public MemoryCache.b b(@NotNull MemoryCache.Key key) {
        MemoryCache.b b10 = this.f60562a.b(key);
        if (b10 == null) {
            return this.f60563b.b(key);
        }
        return b10;
    }

    @Override // coil.memory.MemoryCache
    public void c(@NotNull MemoryCache.Key key, @NotNull MemoryCache.b bVar) {
        this.f60562a.c(MemoryCache.Key.b(key, null, r0.c.b(key.c()), 1, null), bVar.a(), r0.c.b(bVar.b()));
    }
}
