package k0;

import android.graphics.Bitmap;
import coil.memory.MemoryCache;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StrongMemoryCache.kt */
@Metadata
/* loaded from: classes2.dex */
public final class a implements f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final g f60558a;

    public a(@NotNull g gVar) {
        this.f60558a = gVar;
    }

    @Override // k0.f
    @Nullable
    public MemoryCache.b b(@NotNull MemoryCache.Key key) {
        return null;
    }

    @Override // k0.f
    public void c(@NotNull MemoryCache.Key key, @NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map) {
        this.f60558a.c(key, bitmap, map, r0.a.a(bitmap));
    }

    @Override // k0.f
    public void a(int i10) {
    }
}
