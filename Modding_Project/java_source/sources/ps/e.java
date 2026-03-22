package ps;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Comparisons.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e implements Comparator<Comparable<? super Object>> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f64986a = new e();

    private e() {
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(@NotNull Comparable<Object> a10, @NotNull Comparable<Object> b10) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        return a10.compareTo(b10);
    }

    @Override // java.util.Comparator
    @NotNull
    public final Comparator<Comparable<? super Object>> reversed() {
        return f.f64987a;
    }
}
