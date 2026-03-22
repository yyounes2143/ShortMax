package kotlinx.coroutines.flow;

import java.util.Collection;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Collection.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__CollectionKt", f = "Collection.kt", l = {22}, m = "toCollection")
/* loaded from: classes8.dex */
public final class FlowKt__CollectionKt$toCollection$1<T, C extends Collection<? super T>> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61440h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61441i;

    /* renamed from: j  reason: collision with root package name */
    int f61442j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__CollectionKt$toCollection$1(rs.c<? super FlowKt__CollectionKt$toCollection$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61441i = obj;
        this.f61442j |= Integer.MIN_VALUE;
        return c.W(null, null, this);
    }
}
