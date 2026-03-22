package kotlinx.coroutines.channels;

import gt.y1;
import kotlin.Metadata;
import mt.x;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BufferedChannel.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g<E> implements y1 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final kotlinx.coroutines.e<a<? extends E>> f61387a;

    /* JADX WARN: Multi-variable type inference failed */
    public g(@NotNull kotlinx.coroutines.e<? super a<? extends E>> eVar) {
        this.f61387a = eVar;
    }

    @Override // gt.y1
    public void g(@NotNull x<?> xVar, int i10) {
        this.f61387a.g(xVar, i10);
    }
}
