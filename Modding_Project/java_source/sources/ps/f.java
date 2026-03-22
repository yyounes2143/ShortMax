package ps;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Comparisons.kt */
@Metadata
/* loaded from: classes8.dex */
final class f implements Comparator<Comparable<? super Object>> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f f64987a = new f();

    private f() {
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(@NotNull Comparable<Object> a10, @NotNull Comparable<Object> b10) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        return b10.compareTo(a10);
    }

    @Override // java.util.Comparator
    @NotNull
    public final Comparator<Comparable<? super Object>> reversed() {
        return e.f64986a;
    }
}
