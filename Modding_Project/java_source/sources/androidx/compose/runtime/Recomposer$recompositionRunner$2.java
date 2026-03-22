package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.snapshots.ReaderKind;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Recomposer.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2", f = "Recomposer.kt", l = {1160}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$recompositionRunner$2\n+ 2 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 ScatterSetWrapper.kt\nandroidx/compose/runtime/collection/ScatterSetWrapperKt\n+ 5 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 7 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/ReaderKind$Companion\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1894:1\n34#2,5:1895\n33#3:1900\n33#3:1901\n41#4,3:1902\n46#4:1930\n48#4:1933\n231#5,3:1905\n200#5,7:1908\n211#5,3:1916\n214#5,2:1920\n217#5,6:1923\n234#5:1929\n1399#6:1915\n1270#6:1919\n54#7:1922\n1863#8,2:1931\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$recompositionRunner$2\n*L\n1158#1:1895,5\n1163#1:1900\n1133#1:1901\n1136#1:1902,3\n1136#1:1930\n1136#1:1933\n1136#1:1905,3\n1136#1:1908,7\n1136#1:1916,3\n1136#1:1920,2\n1136#1:1923,6\n1136#1:1929\n1136#1:1915\n1136#1:1919\n1139#1:1922\n1136#1:1931,2\n*E\n"})
/* loaded from: classes.dex */
public final class Recomposer$recompositionRunner$2 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ at.n<gt.g0, MonotonicFrameClock, rs.c<? super Unit>, Object> $block;
    final /* synthetic */ MonotonicFrameClock $parentFrameClock;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ Recomposer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Recomposer.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2$2", f = "Recomposer.kt", l = {1160}, m = "invokeSuspend")
    /* renamed from: androidx.compose.runtime.Recomposer$recompositionRunner$2$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
        final /* synthetic */ at.n<gt.g0, MonotonicFrameClock, rs.c<? super Unit>, Object> $block;
        final /* synthetic */ MonotonicFrameClock $parentFrameClock;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(at.n<? super gt.g0, ? super MonotonicFrameClock, ? super rs.c<? super Unit>, ? extends Object> nVar, MonotonicFrameClock monotonicFrameClock, rs.c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.$block = nVar;
            this.$parentFrameClock = monotonicFrameClock;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$block, this.$parentFrameClock, cVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                at.n<gt.g0, MonotonicFrameClock, rs.c<? super Unit>, Object> nVar = this.$block;
                MonotonicFrameClock monotonicFrameClock = this.$parentFrameClock;
                this.label = 1;
                if (nVar.invoke((gt.g0) this.L$0, monotonicFrameClock, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Recomposer$recompositionRunner$2(Recomposer recomposer, at.n<? super gt.g0, ? super MonotonicFrameClock, ? super rs.c<? super Unit>, ? extends Object> nVar, MonotonicFrameClock monotonicFrameClock, rs.c<? super Recomposer$recompositionRunner$2> cVar) {
        super(2, cVar);
        this.this$0 = recomposer;
        this.$block = nVar;
        this.$parentFrameClock = monotonicFrameClock;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$2(Recomposer recomposer, Set set, Snapshot snapshot) {
        kt.e eVar;
        gt.i iVar;
        synchronized (recomposer.stateLock) {
            try {
                eVar = recomposer._state;
                if (((Recomposer.State) eVar.getValue()).compareTo(Recomposer.State.Idle) >= 0) {
                    MutableScatterSet mutableScatterSet = recomposer.snapshotInvalidations;
                    if (set instanceof ScatterSetWrapper) {
                        ScatterSet set$runtime = ((ScatterSetWrapper) set).getSet$runtime();
                        Object[] objArr = set$runtime.elements;
                        long[] jArr = set$runtime.metadata;
                        int length = jArr.length - 2;
                        if (length >= 0) {
                            int i10 = 0;
                            while (true) {
                                long j10 = jArr[i10];
                                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                                    for (int i12 = 0; i12 < i11; i12++) {
                                        if ((255 & j10) < 128) {
                                            Object obj = objArr[(i10 << 3) + i12];
                                            if (!(obj instanceof StateObjectImpl) || ((StateObjectImpl) obj).m1512isReadInh_f27i8$runtime(ReaderKind.m1500constructorimpl(1))) {
                                                mutableScatterSet.add(obj);
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
                        for (Object obj2 : set) {
                            if (!(obj2 instanceof StateObjectImpl) || ((StateObjectImpl) obj2).m1512isReadInh_f27i8$runtime(ReaderKind.m1500constructorimpl(1))) {
                                mutableScatterSet.add(obj2);
                            }
                        }
                    }
                    iVar = recomposer.deriveStateLocked();
                } else {
                    iVar = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (iVar != null) {
            Result.a aVar = Result.f60901b;
            iVar.resumeWith(Result.d(Unit.f60915a));
        }
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        Recomposer$recompositionRunner$2 recomposer$recompositionRunner$2 = new Recomposer$recompositionRunner$2(this.this$0, this.$block, this.$parentFrameClock, cVar);
        recomposer$recompositionRunner$2.L$0 = obj;
        return recomposer$recompositionRunner$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((Recomposer$recompositionRunner$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer$recompositionRunner$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
