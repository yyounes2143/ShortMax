package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Combine.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1", f = "Combine.kt", l = {29, 30}, m = "emit")
/* loaded from: classes8.dex */
public final class CombineKt$combineInternal$2$1$1$emit$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f61772h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CombineKt$combineInternal$2.AnonymousClass1.C08561<T> f61773i;

    /* renamed from: j  reason: collision with root package name */
    int f61774j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CombineKt$combineInternal$2$1$1$emit$1(CombineKt$combineInternal$2.AnonymousClass1.C08561<? super T> c08561, rs.c<? super CombineKt$combineInternal$2$1$1$emit$1> cVar) {
        super(cVar);
        this.f61773i = c08561;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61772h = obj;
        this.f61774j |= Integer.MIN_VALUE;
        return this.f61773i.emit(null, this);
    }
}
