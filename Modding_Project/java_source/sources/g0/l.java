package g0;

import coil.decode.DataSource;
import d0.m;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FetchResult.kt */
@Metadata
/* loaded from: classes2.dex */
public final class l extends h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final m f52153a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f52154b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final DataSource f52155c;

    public l(@NotNull m mVar, @Nullable String str, @NotNull DataSource dataSource) {
        super(null);
        this.f52153a = mVar;
        this.f52154b = str;
        this.f52155c = dataSource;
    }

    @NotNull
    public final DataSource a() {
        return this.f52155c;
    }

    @NotNull
    public final m b() {
        return this.f52153a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (Intrinsics.areEqual(this.f52153a, lVar.f52153a) && Intrinsics.areEqual(this.f52154b, lVar.f52154b) && this.f52155c == lVar.f52155c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.f52153a.hashCode() * 31;
        String str = this.f52154b;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return ((hashCode + i10) * 31) + this.f52155c.hashCode();
    }
}
