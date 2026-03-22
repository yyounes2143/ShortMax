package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j<T> implements kt.i<T>, kt.a<T>, lt.g<T> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ kt.i<T> f61797a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final r f61798b;

    /* JADX WARN: Multi-variable type inference failed */
    public j(@NotNull kt.i<? extends T> iVar, @Nullable r rVar) {
        this.f61797a = iVar;
        this.f61798b = rVar;
    }

    @Override // lt.g
    @NotNull
    public kt.b<T> a(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return o.d(this, coroutineContext, i10, bufferOverflow);
    }

    @Override // kt.f, kt.b
    @Nullable
    public Object collect(@NotNull kt.c<? super T> cVar, @NotNull rs.c<?> cVar2) {
        return this.f61797a.collect(cVar, cVar2);
    }

    @Override // kt.i
    public T getValue() {
        return this.f61797a.getValue();
    }
}
