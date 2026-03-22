package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Recomposer.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2", f = "Recomposer.kt", l = {587, 598}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 4 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 6 Trace.kt\nandroidx/compose/runtime/internal/TraceKt\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 8 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n+ 9 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,1894:1\n33#2:1895\n33#2:1976\n33#2:1990\n33#2:2006\n33#2:2115\n34#3,5:1896\n34#3,5:1977\n34#3,5:1999\n34#3,5:2007\n34#3,5:2051\n34#3,5:2056\n231#4,3:1901\n200#4,7:1904\n211#4,3:1912\n214#4,9:1916\n234#4:1925\n231#4,3:1926\n200#4,7:1929\n211#4,3:1937\n214#4,9:1941\n234#4:1950\n231#4,3:1951\n200#4,7:1954\n211#4,3:1962\n214#4,9:1966\n234#4:1975\n231#4,3:2063\n200#4,7:2066\n211#4,3:2074\n214#4,9:2078\n234#4:2087\n231#4,3:2088\n200#4,7:2091\n211#4,3:2099\n214#4,9:2103\n234#4:2112\n1399#5:1911\n1270#5:1915\n1399#5:1936\n1270#5:1940\n1399#5:1961\n1270#5:1965\n1399#5:2073\n1270#5:2077\n1399#5:2098\n1270#5:2102\n45#6,5:1982\n45#6,3:1987\n49#6:2004\n424#7,8:1991\n519#7:2005\n742#7,15:2012\n813#8,21:2027\n835#8:2062\n836#8,2:2113\n149#9,3:2048\n153#9:2061\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2\n*L\n549#1:1895\n580#1:1976\n616#1:1990\n647#1:2006\n746#1:2115\n553#1:1896,5\n581#1:1977,5\n626#1:1999,5\n648#1:2007,5\n701#1:2051,5\n704#1:2056,5\n559#1:1901,3\n559#1:1904,7\n559#1:1912,3\n559#1:1916,9\n559#1:1925\n565#1:1926,3\n565#1:1929,7\n565#1:1937,3\n565#1:1941,9\n565#1:1950\n570#1:1951,3\n570#1:1954,7\n570#1:1962,3\n570#1:1966,9\n570#1:1975\n719#1:2063,3\n719#1:2066,7\n719#1:2074,3\n719#1:2078,9\n719#1:2087\n733#1:2088,3\n733#1:2091,7\n733#1:2099,3\n733#1:2103,9\n733#1:2112\n559#1:1911\n559#1:1915\n565#1:1936\n565#1:1940\n570#1:1961\n570#1:1965\n719#1:2073\n719#1:2077\n733#1:2098\n733#1:2102\n602#1:1982,5\n612#1:1987,3\n612#1:2004\n617#1:1991,8\n645#1:2005\n661#1:2012,15\n691#1:2027,21\n691#1:2062\n691#1:2113,2\n691#1:2048,3\n691#1:2061\n*E\n"})
/* loaded from: classes.dex */
public final class Recomposer$runRecomposeAndApplyChanges$2 extends SuspendLambda implements at.n<gt.g0, MonotonicFrameClock, rs.c<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    Object L$8;
    int label;
    final /* synthetic */ Recomposer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recomposer$runRecomposeAndApplyChanges$2(Recomposer recomposer, rs.c<? super Recomposer$runRecomposeAndApplyChanges$2> cVar) {
        super(3, cVar);
        this.this$0 = recomposer;
    }

    private static final void invokeSuspend$clearRecompositionState(Recomposer recomposer, List<ControlledComposition> list, List<MovableContentStateReference> list2, List<ControlledComposition> list3, MutableScatterSet<ControlledComposition> mutableScatterSet, MutableScatterSet<ControlledComposition> mutableScatterSet2, MutableScatterSet<Object> mutableScatterSet3, MutableScatterSet<ControlledComposition> mutableScatterSet4) {
        synchronized (recomposer.stateLock) {
            try {
                list.clear();
                list2.clear();
                int size = list3.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ControlledComposition controlledComposition = list3.get(i10);
                    controlledComposition.abandonChanges();
                    recomposer.recordFailedCompositionLocked(controlledComposition);
                }
                list3.clear();
                Object[] objArr = mutableScatterSet.elements;
                long[] jArr = mutableScatterSet.metadata;
                int length = jArr.length - 2;
                long j10 = -9187201950435737472L;
                if (length >= 0) {
                    int i11 = 0;
                    while (true) {
                        long j11 = jArr[i11];
                        int i12 = length;
                        if ((((~j11) << 7) & j11 & j10) != j10) {
                            int i13 = 8 - ((~(i11 - i12)) >>> 31);
                            for (int i14 = 0; i14 < i13; i14++) {
                                if ((j11 & 255) < 128) {
                                    ControlledComposition controlledComposition2 = (ControlledComposition) objArr[(i11 << 3) + i14];
                                    controlledComposition2.abandonChanges();
                                    recomposer.recordFailedCompositionLocked(controlledComposition2);
                                }
                                j11 >>= 8;
                            }
                            if (i13 != 8) {
                                break;
                            }
                        }
                        length = i12;
                        if (i11 == length) {
                            break;
                        }
                        i11++;
                        j10 = -9187201950435737472L;
                    }
                }
                mutableScatterSet.clear();
                Object[] objArr2 = mutableScatterSet2.elements;
                long[] jArr2 = mutableScatterSet2.metadata;
                int length2 = jArr2.length - 2;
                if (length2 >= 0) {
                    int i15 = 0;
                    while (true) {
                        long j12 = jArr2[i15];
                        if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i16 = 8 - ((~(i15 - length2)) >>> 31);
                            for (int i17 = 0; i17 < i16; i17++) {
                                if ((j12 & 255) < 128) {
                                    ((ControlledComposition) objArr2[(i15 << 3) + i17]).changesApplied();
                                }
                                j12 >>= 8;
                            }
                            if (i16 != 8) {
                                break;
                            }
                        }
                        if (i15 == length2) {
                            break;
                        }
                        i15++;
                    }
                }
                mutableScatterSet2.clear();
                mutableScatterSet3.clear();
                Object[] objArr3 = mutableScatterSet4.elements;
                long[] jArr3 = mutableScatterSet4.metadata;
                int length3 = jArr3.length - 2;
                if (length3 >= 0) {
                    int i18 = 0;
                    while (true) {
                        long j13 = jArr3[i18];
                        if ((((~j13) << 7) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i19 = 8 - ((~(i18 - length3)) >>> 31);
                            for (int i20 = 0; i20 < i19; i20++) {
                                if ((j13 & 255) < 128) {
                                    ControlledComposition controlledComposition3 = (ControlledComposition) objArr3[(i18 << 3) + i20];
                                    controlledComposition3.abandonChanges();
                                    recomposer.recordFailedCompositionLocked(controlledComposition3);
                                }
                                j13 >>= 8;
                            }
                            if (i19 != 8) {
                                break;
                            }
                        }
                        if (i18 == length3) {
                            break;
                        }
                        i18++;
                    }
                }
                mutableScatterSet4.clear();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static final void invokeSuspend$fillToInsert(List<MovableContentStateReference> list, Recomposer recomposer) {
        List list2;
        List list3;
        list.clear();
        synchronized (recomposer.stateLock) {
            try {
                list2 = recomposer.movableContentAwaitingInsert;
                int size = list2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    list.add((MovableContentStateReference) list2.get(i10));
                }
                list3 = recomposer.movableContentAwaitingInsert;
                list3.clear();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:58:0x0134
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.Unit invokeSuspend$lambda$22(androidx.compose.runtime.Recomposer r26, androidx.collection.MutableScatterSet r27, androidx.collection.MutableScatterSet r28, java.util.List r29, java.util.List r30, androidx.collection.MutableScatterSet r31, java.util.List r32, androidx.collection.MutableScatterSet r33, java.util.Set r34, long r35) {
        /*
            Method dump skipped, instructions count: 1037
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend$lambda$22(androidx.compose.runtime.Recomposer, androidx.collection.MutableScatterSet, androidx.collection.MutableScatterSet, java.util.List, java.util.List, androidx.collection.MutableScatterSet, java.util.List, androidx.collection.MutableScatterSet, java.util.Set, long):kotlin.Unit");
    }

    @Override // at.n
    public final Object invoke(gt.g0 g0Var, MonotonicFrameClock monotonicFrameClock, rs.c<? super Unit> cVar) {
        Recomposer$runRecomposeAndApplyChanges$2 recomposer$runRecomposeAndApplyChanges$2 = new Recomposer$runRecomposeAndApplyChanges$2(this.this$0, cVar);
        recomposer$runRecomposeAndApplyChanges$2.L$0 = monotonicFrameClock;
        return recomposer$runRecomposeAndApplyChanges$2.invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0166  */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r11v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v12, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0139 -> B:23:0x0142). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0151 -> B:24:0x014d). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r26) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
