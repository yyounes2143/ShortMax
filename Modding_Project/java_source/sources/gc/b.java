package gc;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Configuration.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<ic.a> f52308a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<a> f52309b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final e f52310c;

    /* renamed from: d  reason: collision with root package name */
    private final long f52311d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f52312e;

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull List<? extends ic.a> headerModifiers, @NotNull List<? extends a> components, @NotNull e flags, long j10, @NotNull String delimiter) {
        Intrinsics.checkNotNullParameter(headerModifiers, "headerModifiers");
        Intrinsics.checkNotNullParameter(components, "components");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        this.f52308a = headerModifiers;
        this.f52309b = components;
        this.f52310c = flags;
        this.f52311d = j10;
        this.f52312e = delimiter;
    }

    @NotNull
    public final List<a> a() {
        return this.f52309b;
    }

    @NotNull
    public final String b() {
        return this.f52312e;
    }

    @NotNull
    public final e c() {
        return this.f52310c;
    }

    @NotNull
    public final List<ic.a> d() {
        return this.f52308a;
    }

    public final long e() {
        return this.f52311d;
    }

    public /* synthetic */ b(List list, List list2, e eVar, long j10, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? CollectionsKt.n() : list, (i10 & 2) != 0 ? a.f52301b : list2, (i10 & 4) != 0 ? e.f52318c : eVar, (i10 & 8) != 0 ? 1048576L : j10, (i10 & 16) != 0 ? " " : str);
    }
}
