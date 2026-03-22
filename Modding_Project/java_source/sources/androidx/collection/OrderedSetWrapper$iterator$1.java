package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.i;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: OrderedScatterSet.kt */
@Metadata
@d(c = "androidx.collection.OrderedSetWrapper$iterator$1", f = "OrderedScatterSet.kt", l = {1454}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nOrderedScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OrderedScatterSet.kt\nandroidx/collection/OrderedSetWrapper$iterator$1\n+ 2 OrderedScatterSet.kt\nandroidx/collection/OrderedScatterSet\n+ 3 SieveCache.kt\nandroidx/collection/SieveCacheKt\n*L\n1#1,1511:1\n301#2,7:1512\n308#2,4:1520\n1123#3:1519\n*S KotlinDebug\n*F\n+ 1 OrderedScatterSet.kt\nandroidx/collection/OrderedSetWrapper$iterator$1\n*L\n1454#1:1512,7\n1454#1:1520,4\n1454#1:1519\n*E\n"})
/* loaded from: classes.dex */
final class OrderedSetWrapper$iterator$1<E> extends RestrictedSuspendLambda implements Function2<i<? super E>, c<? super Unit>, Object> {
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ OrderedSetWrapper<E> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderedSetWrapper$iterator$1(OrderedSetWrapper<E> orderedSetWrapper, c<? super OrderedSetWrapper$iterator$1> cVar) {
        super(2, cVar);
        this.this$0 = orderedSetWrapper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        OrderedSetWrapper$iterator$1 orderedSetWrapper$iterator$1 = new OrderedSetWrapper$iterator$1(this.this$0, cVar);
        orderedSetWrapper$iterator$1.L$0 = obj;
        return orderedSetWrapper$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, c<? super Unit> cVar) {
        return invoke((i) ((i) obj), cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        OrderedScatterSet orderedScatterSet;
        int i10;
        i iVar;
        Object[] objArr;
        long[] jArr;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                i10 = this.I$0;
                jArr = (long[]) this.L$2;
                objArr = (Object[]) this.L$1;
                iVar = (i) this.L$0;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            orderedScatterSet = ((OrderedSetWrapper) this.this$0).parent;
            Object[] objArr2 = orderedScatterSet.elements;
            long[] jArr2 = orderedScatterSet.nodes;
            i10 = orderedScatterSet.tail;
            iVar = (i) this.L$0;
            objArr = objArr2;
            jArr = jArr2;
        }
        while (i10 != Integer.MAX_VALUE) {
            int i12 = (int) ((jArr[i10] >> 31) & SieveCacheKt.NodeLinkMask);
            Object obj2 = objArr[i10];
            this.L$0 = iVar;
            this.L$1 = objArr;
            this.L$2 = jArr;
            this.I$0 = i12;
            this.label = 1;
            if (iVar.a(obj2, this) == f10) {
                return f10;
            }
            i10 = i12;
        }
        return Unit.f60915a;
    }

    public final Object invoke(i<? super E> iVar, c<? super Unit> cVar) {
        return ((OrderedSetWrapper$iterator$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
