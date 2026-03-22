package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.snapshots.ReaderKind;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import java.util.Collection;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SnapshotFlow.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1", f = "SnapshotFlow.kt", l = {143, 147, 170}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nSnapshotFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotFlow.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 3 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/ReaderKind$Companion\n+ 4 ScatterSetWrapper.kt\nandroidx/compose/runtime/collection/ScatterSetWrapperKt\n+ 5 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n149#2,5:181\n149#2,5:186\n60#3:191\n60#3:213\n51#4,2:192\n54#4:222\n55#4:226\n256#5,2:194\n231#5,3:196\n200#5,7:199\n211#5,3:207\n214#5,2:211\n217#5,6:214\n234#5:220\n258#5:221\n1399#6:206\n1270#6:210\n1755#7,3:223\n*S KotlinDebug\n*F\n+ 1 SnapshotFlow.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1\n*L\n138#1:181,5\n162#1:186,5\n114#1:191\n127#1:213\n127#1:192,2\n127#1:222\n127#1:226\n127#1:194,2\n127#1:196,3\n127#1:199,7\n127#1:207,3\n127#1:211,2\n127#1:214,6\n127#1:220\n127#1:221\n127#1:206\n127#1:210\n127#1:223,3\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1<T> extends SuspendLambda implements Function2<kt.c<? super T>, rs.c<? super Unit>, Object> {
    final /* synthetic */ Function0<T> $block;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1(Function0<? extends T> function0, rs.c<? super SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1> cVar) {
        super(2, cVar);
        this.$block = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$0(MutableScatterSet mutableScatterSet, Object obj) {
        if (obj instanceof StateObjectImpl) {
            ((StateObjectImpl) obj).m1513recordReadInh_f27i8$runtime(ReaderKind.m1500constructorimpl(4));
        }
        mutableScatterSet.add(obj);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$2(jt.d dVar, Set set, Snapshot snapshot) {
        if (set instanceof ScatterSetWrapper) {
            ScatterSet<T> set$runtime = ((ScatterSetWrapper) set).getSet$runtime();
            Object[] objArr = set$runtime.elements;
            long[] jArr = set$runtime.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i10 = 0;
                loop0: while (true) {
                    long j10 = jArr[i10];
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i11 = 8 - ((~(i10 - length)) >>> 31);
                        for (int i12 = 0; i12 < i11; i12++) {
                            if ((255 & j10) < 128) {
                                Object obj = objArr[(i10 << 3) + i12];
                                if (!(obj instanceof StateObjectImpl) || ((StateObjectImpl) obj).m1512isReadInh_f27i8$runtime(ReaderKind.m1500constructorimpl(4))) {
                                    break loop0;
                                }
                            }
                            j10 >>= 8;
                        }
                        if (i11 != 8) {
                            break;
                        }
                    }
                    if (i10 == length) {
                        break;
                    }
                    i10++;
                }
            }
        } else {
            Set set2 = set;
            if (!(set2 instanceof Collection) || !set2.isEmpty()) {
                for (T t10 : set2) {
                    if (t10 instanceof StateObjectImpl) {
                        if (((StateObjectImpl) t10).m1512isReadInh_f27i8$runtime(ReaderKind.m1500constructorimpl(4))) {
                        }
                    }
                    dVar.h(set);
                }
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1 snapshotStateKt__SnapshotFlowKt$snapshotFlow$1 = new SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1(this.$block, cVar);
        snapshotStateKt__SnapshotFlowKt$snapshotFlow$1.L$0 = obj;
        return snapshotStateKt__SnapshotFlowKt$snapshotFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke((kt.c) ((kt.c) obj), cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e1 A[Catch: all -> 0x0055, TryCatch #5 {all -> 0x0055, blocks: (B:32:0x00dd, B:34:0x00e1, B:39:0x00eb, B:42:0x00f9, B:46:0x010f, B:48:0x0118, B:15:0x0050, B:43:0x0104, B:45:0x010c, B:54:0x0130, B:55:0x0133), top: B:74:0x0050 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f9 A[Catch: all -> 0x0055, TRY_LEAVE, TryCatch #5 {all -> 0x0055, blocks: (B:32:0x00dd, B:34:0x00e1, B:39:0x00eb, B:42:0x00f9, B:46:0x010f, B:48:0x0118, B:15:0x0050, B:43:0x0104, B:45:0x010c, B:54:0x0130, B:55:0x0133), top: B:74:0x0050 }] */
    /* JADX WARN: Type inference failed for: r1v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0139 -> B:28:0x00bf). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    public final Object invoke(kt.c<? super T> cVar, rs.c<? super Unit> cVar2) {
        return ((SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
