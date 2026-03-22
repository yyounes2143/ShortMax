package kotlin.collections;

import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlidingWindow.kt */
@Metadata
/* loaded from: classes8.dex */
public final class v0<E> extends d<E> implements RandomAccess {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<E> f61023a;

    /* renamed from: b  reason: collision with root package name */
    private int f61024b;

    /* renamed from: c  reason: collision with root package name */
    private int f61025c;

    /* JADX WARN: Multi-variable type inference failed */
    public v0(@NotNull List<? extends E> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.f61023a = list;
    }

    public final void e(int i10, int i11) {
        d.Companion.d(i10, i11, this.f61023a.size());
        this.f61024b = i10;
        this.f61025c = i11 - i10;
    }

    @Override // kotlin.collections.d, java.util.List
    public E get(int i10) {
        d.Companion.b(i10, this.f61025c);
        return this.f61023a.get(this.f61024b + i10);
    }

    @Override // kotlin.collections.d, kotlin.collections.b
    public int getSize() {
        return this.f61025c;
    }
}
