package ca;

import com.hades.aar.admanager.core.AdFormat;
import da.b;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public class a {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final c.a f3344e = new c.a();

    /* renamed from: a  reason: collision with root package name */
    private boolean f3345a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3346b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private b.a f3347c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final ms.i f3348d = kotlin.c.b(p000admanager.b.b.f395d);

    public static /* synthetic */ long d(a aVar, AdFormat adFormat, long j10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                j10 = 2400000;
            }
            return aVar.c(adFormat, j10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getExpirationGap");
    }

    private final HashMap<AdFormat, Long> f() {
        return (HashMap) this.f3348d.getValue();
    }

    @Nullable
    public final b.a a() {
        return this.f3347c;
    }

    public final boolean b() {
        return this.f3345a;
    }

    public final long c(@NotNull AdFormat format, long j10) {
        Intrinsics.checkNotNullParameter(format, "format");
        Long l10 = f().get(format);
        if (l10 == null) {
            ga.a aVar = ga.a.f52235a;
            aVar.c("AdManagerAdConfig", "getExpirationTime by default:" + j10);
            l10 = Long.valueOf(j10);
        }
        return l10.longValue();
    }

    public final boolean e() {
        return this.f3346b;
    }

    public final void g(@Nullable b.a aVar) {
        this.f3347c = aVar;
    }

    public final void h(boolean z10) {
        this.f3345a = z10;
    }

    public final void i(@NotNull AdFormat format, long j10) {
        Intrinsics.checkNotNullParameter(format, "format");
        if (f().containsKey(format)) {
            f().put(format, Long.valueOf(j10));
            return;
        }
        ga.a.f52235a.c("AdManagerAdConfig", "setExpirationTime fail");
    }

    public final void j(boolean z10) {
        this.f3346b = z10;
    }
}
