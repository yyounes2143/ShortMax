package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.i;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: ScatterSet.kt */
@Metadata
@d(c = "androidx.collection.MutableSetWrapper$iterator$1$iterator$1", f = "ScatterSet.kt", l = {1188}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/MutableSetWrapper$iterator$1$iterator$1\n+ 2 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1210:1\n200#2,7:1211\n211#2,3:1219\n214#2,9:1223\n1399#3:1218\n1270#3:1222\n*S KotlinDebug\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/MutableSetWrapper$iterator$1$iterator$1\n*L\n1186#1:1211,7\n1186#1:1219,3\n1186#1:1223,9\n1186#1:1218\n1186#1:1222\n*E\n"})
/* loaded from: classes.dex */
public final class MutableSetWrapper$iterator$1$iterator$1<E> extends RestrictedSuspendLambda implements Function2<i<? super E>, c<? super Unit>, Object> {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ MutableSetWrapper<E> this$0;
    final /* synthetic */ MutableSetWrapper$iterator$1 this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableSetWrapper$iterator$1$iterator$1(MutableSetWrapper<E> mutableSetWrapper, MutableSetWrapper$iterator$1 mutableSetWrapper$iterator$1, c<? super MutableSetWrapper$iterator$1$iterator$1> cVar) {
        super(2, cVar);
        this.this$0 = mutableSetWrapper;
        this.this$1 = mutableSetWrapper$iterator$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        MutableSetWrapper$iterator$1$iterator$1 mutableSetWrapper$iterator$1$iterator$1 = new MutableSetWrapper$iterator$1$iterator$1(this.this$0, this.this$1, cVar);
        mutableSetWrapper$iterator$1$iterator$1.L$0 = obj;
        return mutableSetWrapper$iterator$1$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, c<? super Unit> cVar) {
        return invoke((i) ((i) obj), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b9  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x005d -> B:23:0x00b7). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x005f -> B:14:0x0075). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x007e -> B:20:0x00a9). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00a6 -> B:20:0x00a9). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instructions count: 191
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableSetWrapper$iterator$1$iterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    public final Object invoke(i<? super E> iVar, c<? super Unit> cVar) {
        return ((MutableSetWrapper$iterator$1$iterator$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
