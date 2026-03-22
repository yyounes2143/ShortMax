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
public final class i<T> implements kt.f<T>, kt.a<T>, lt.g<T> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ kt.f<T> f61700a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final r f61701b;

    /* JADX WARN: Multi-variable type inference failed */
    public i(@NotNull kt.f<? extends T> fVar, @Nullable r rVar) {
        this.f61700a = fVar;
        this.f61701b = rVar;
    }

    @Override // lt.g
    @NotNull
    public kt.b<T> a(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return kt.g.e(this, coroutineContext, i10, bufferOverflow);
    }

    @Override // kt.f, kt.b
    @Nullable
    public Object collect(@NotNull kt.c<? super T> cVar, @NotNull rs.c<?> cVar2) {
        return this.f61700a.collect(cVar, cVar2);
    }
}
