package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import org.jetbrains.annotations.NotNull;
/* compiled from: Share.kt */
@Metadata
/* loaded from: classes8.dex */
final class l<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final kt.b<T> f61800a;

    /* renamed from: b  reason: collision with root package name */
    public final int f61801b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final BufferOverflow f61802c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final CoroutineContext f61803d;

    /* JADX WARN: Multi-variable type inference failed */
    public l(@NotNull kt.b<? extends T> bVar, int i10, @NotNull BufferOverflow bufferOverflow, @NotNull CoroutineContext coroutineContext) {
        this.f61800a = bVar;
        this.f61801b = i10;
        this.f61802c = bufferOverflow;
        this.f61803d = coroutineContext;
    }
}
