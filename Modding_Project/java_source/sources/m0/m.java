package m0;

import android.graphics.drawable.Drawable;
import coil.decode.DataSource;
import coil.memory.MemoryCache;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageResult.kt */
@Metadata
/* loaded from: classes2.dex */
public final class m extends g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f62429a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final f f62430b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final DataSource f62431c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final MemoryCache.Key f62432d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f62433e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f62434f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f62435g;

    public m(@NotNull Drawable drawable, @NotNull f fVar, @NotNull DataSource dataSource, @Nullable MemoryCache.Key key, @Nullable String str, boolean z10, boolean z11) {
        super(null);
        this.f62429a = drawable;
        this.f62430b = fVar;
        this.f62431c = dataSource;
        this.f62432d = key;
        this.f62433e = str;
        this.f62434f = z10;
        this.f62435g = z11;
    }

    @Override // m0.g
    @NotNull
    public Drawable a() {
        return this.f62429a;
    }

    @Override // m0.g
    @NotNull
    public f b() {
        return this.f62430b;
    }

    @NotNull
    public final DataSource c() {
        return this.f62431c;
    }

    public final boolean d() {
        return this.f62435g;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            if (Intrinsics.areEqual(a(), mVar.a()) && Intrinsics.areEqual(b(), mVar.b()) && this.f62431c == mVar.f62431c && Intrinsics.areEqual(this.f62432d, mVar.f62432d) && Intrinsics.areEqual(this.f62433e, mVar.f62433e) && this.f62434f == mVar.f62434f && this.f62435g == mVar.f62435g) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = ((((a().hashCode() * 31) + b().hashCode()) * 31) + this.f62431c.hashCode()) * 31;
        MemoryCache.Key key = this.f62432d;
        int i11 = 0;
        if (key != null) {
            i10 = key.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        String str = this.f62433e;
        if (str != null) {
            i11 = str.hashCode();
        }
        return ((((i12 + i11) * 31) + Boolean.hashCode(this.f62434f)) * 31) + Boolean.hashCode(this.f62435g);
    }
}
