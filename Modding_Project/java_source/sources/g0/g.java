package g0;

import android.graphics.drawable.Drawable;
import coil.decode.DataSource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FetchResult.kt */
@Metadata
/* loaded from: classes2.dex */
public final class g extends h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f52146a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f52147b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final DataSource f52148c;

    public g(@NotNull Drawable drawable, boolean z10, @NotNull DataSource dataSource) {
        super(null);
        this.f52146a = drawable;
        this.f52147b = z10;
        this.f52148c = dataSource;
    }

    @NotNull
    public final DataSource a() {
        return this.f52148c;
    }

    @NotNull
    public final Drawable b() {
        return this.f52146a;
    }

    public final boolean c() {
        return this.f52147b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (Intrinsics.areEqual(this.f52146a, gVar.f52146a) && this.f52147b == gVar.f52147b && this.f52148c == gVar.f52148c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((this.f52146a.hashCode() * 31) + Boolean.hashCode(this.f52147b)) * 31) + this.f52148c.hashCode();
    }
}
