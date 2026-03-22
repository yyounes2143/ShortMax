package kotlinx.coroutines.flow.internal;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* compiled from: SafeCollector.kt */
@Metadata
/* loaded from: classes8.dex */
/* synthetic */ class SafeCollectorKt$emitFun$1 extends FunctionReferenceImpl implements n<kt.c<? super Object>, Object, rs.c<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final SafeCollectorKt$emitFun$1 f61786a = new SafeCollectorKt$emitFun$1();

    SafeCollectorKt$emitFun$1() {
        super(3, kt.c.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // at.n
    /* renamed from: b */
    public final Object invoke(kt.c<Object> cVar, Object obj, rs.c<? super Unit> cVar2) {
        return cVar.emit(obj, cVar2);
    }
}
