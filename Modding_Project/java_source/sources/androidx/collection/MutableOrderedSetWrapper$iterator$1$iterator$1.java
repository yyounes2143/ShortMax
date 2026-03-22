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
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: OrderedScatterSet.kt */
@Metadata
@d(c = "androidx.collection.MutableOrderedSetWrapper$iterator$1$iterator$1", f = "OrderedScatterSet.kt", l = {1489}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nOrderedScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OrderedScatterSet.kt\nandroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1\n+ 2 OrderedScatterSet.kt\nandroidx/collection/OrderedScatterSet\n+ 3 SieveCache.kt\nandroidx/collection/SieveCacheKt\n*L\n1#1,1511:1\n255#2,6:1512\n261#2,4:1519\n1123#3:1518\n*S KotlinDebug\n*F\n+ 1 OrderedScatterSet.kt\nandroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1\n*L\n1487#1:1512,6\n1487#1:1519,4\n1487#1:1518\n*E\n"})
/* loaded from: classes.dex */
public final class MutableOrderedSetWrapper$iterator$1$iterator$1<E> extends RestrictedSuspendLambda implements Function2<i<? super E>, c<? super Unit>, Object> {
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ MutableOrderedSetWrapper<E> this$0;
    final /* synthetic */ MutableOrderedSetWrapper$iterator$1 this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableOrderedSetWrapper$iterator$1$iterator$1(MutableOrderedSetWrapper<E> mutableOrderedSetWrapper, MutableOrderedSetWrapper$iterator$1 mutableOrderedSetWrapper$iterator$1, c<? super MutableOrderedSetWrapper$iterator$1$iterator$1> cVar) {
        super(2, cVar);
        this.this$0 = mutableOrderedSetWrapper;
        this.this$1 = mutableOrderedSetWrapper$iterator$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        MutableOrderedSetWrapper$iterator$1$iterator$1 mutableOrderedSetWrapper$iterator$1$iterator$1 = new MutableOrderedSetWrapper$iterator$1$iterator$1(this.this$0, this.this$1, cVar);
        mutableOrderedSetWrapper$iterator$1$iterator$1.L$0 = obj;
        return mutableOrderedSetWrapper$iterator$1$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, c<? super Unit> cVar) {
        return invoke((i) ((i) obj), cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableOrderedScatterSet mutableOrderedScatterSet;
        MutableOrderedSetWrapper<E> mutableOrderedSetWrapper;
        int i10;
        i iVar;
        MutableOrderedSetWrapper$iterator$1 mutableOrderedSetWrapper$iterator$1;
        long[] jArr;
        MutableOrderedScatterSet mutableOrderedScatterSet2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                i10 = this.I$0;
                jArr = (long[]) this.L$3;
                mutableOrderedSetWrapper = (MutableOrderedSetWrapper) this.L$2;
                mutableOrderedSetWrapper$iterator$1 = (MutableOrderedSetWrapper$iterator$1) this.L$1;
                iVar = (i) this.L$0;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            mutableOrderedScatterSet = ((MutableOrderedSetWrapper) this.this$0).parent;
            MutableOrderedSetWrapper$iterator$1 mutableOrderedSetWrapper$iterator$12 = this.this$1;
            mutableOrderedSetWrapper = this.this$0;
            long[] jArr2 = mutableOrderedScatterSet.nodes;
            i10 = mutableOrderedScatterSet.tail;
            iVar = (i) this.L$0;
            mutableOrderedSetWrapper$iterator$1 = mutableOrderedSetWrapper$iterator$12;
            jArr = jArr2;
        }
        while (i10 != Integer.MAX_VALUE) {
            int i12 = (int) ((jArr[i10] >> 31) & SieveCacheKt.NodeLinkMask);
            mutableOrderedSetWrapper$iterator$1.setCurrent(i10);
            mutableOrderedScatterSet2 = ((MutableOrderedSetWrapper) mutableOrderedSetWrapper).parent;
            Object obj2 = mutableOrderedScatterSet2.elements[i10];
            this.L$0 = iVar;
            this.L$1 = mutableOrderedSetWrapper$iterator$1;
            this.L$2 = mutableOrderedSetWrapper;
            this.L$3 = jArr;
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
        return ((MutableOrderedSetWrapper$iterator$1$iterator$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
