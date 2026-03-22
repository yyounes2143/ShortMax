package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.ChannelFlowMerge;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge;
import mt.b0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Merge.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,214:1\n49#2:215\n51#2:219\n49#2:220\n51#2:224\n46#3:216\n51#3:218\n46#3:221\n51#3:223\n105#4:217\n105#4:222\n105#4:225\n1#5:226\n*S KotlinDebug\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n43#1:215\n43#1:219\n70#1:220\n70#1:224\n43#1:216\n43#1:218\n70#1:221\n70#1:223\n43#1:217\n70#1:222\n78#1:225\n*E\n"})
/* loaded from: classes8.dex */
public final /* synthetic */ class FlowKt__MergeKt {

    /* renamed from: a */
    private static final int f61548a = b0.b("kotlinx.coroutines.flow.defaultConcurrency", 16, 1, Integer.MAX_VALUE);

    /* compiled from: SafeCollector.common.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n1#1,108:1\n79#2,2:109\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a<T> implements kt.b<T> {

        /* renamed from: a */
        final /* synthetic */ kt.b f61557a;

        public a(kt.b bVar) {
            this.f61557a = bVar;
        }

        @Override // kt.b
        public Object collect(kt.c<? super T> cVar, rs.c<? super Unit> cVar2) {
            Object collect = this.f61557a.collect(new FlowKt__MergeKt$flattenConcat$1$1(cVar), cVar2);
            if (collect == kotlin.coroutines.intrinsics.a.f()) {
                return collect;
            }
            return Unit.f60915a;
        }
    }

    @NotNull
    public static final <T, R> kt.b<R> a(@NotNull final kt.b<? extends T> bVar, int i10, @NotNull final Function2<? super T, ? super rs.c<? super kt.b<? extends R>>, ? extends Object> function2) {
        return c.E(new kt.b<kt.b<? extends R>>() { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,49:1\n50#2:50\n*E\n"})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes8.dex */
            public static final class AnonymousClass2<T> implements kt.c {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kt.c f61551a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Function2 f61552b;

                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2", f = "Merge.kt", l = {50, 50}, m = "emit")
                /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes8.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: h  reason: collision with root package name */
                    /* synthetic */ Object f61553h;

                    /* renamed from: i  reason: collision with root package name */
                    int f61554i;

                    /* renamed from: j  reason: collision with root package name */
                    Object f61555j;

                    public AnonymousClass1(rs.c cVar) {
                        super(cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f61553h = obj;
                        this.f61554i |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kt.c cVar, Function2 function2) {
                    this.f61551a = cVar;
                    this.f61552b = function2;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
                /* JADX WARN: Removed duplicated region for block: B:22:0x005c A[RETURN] */
                @Override // kt.c
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r7, rs.c r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f61554i
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f61554i = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.f61553h
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.f61554i
                        r3 = 2
                        r4 = 1
                        if (r2 == 0) goto L3c
                        if (r2 == r4) goto L34
                        if (r2 != r3) goto L2c
                        kotlin.f.b(r8)
                        goto L5d
                    L2c:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L34:
                        java.lang.Object r7 = r0.f61555j
                        kt.c r7 = (kt.c) r7
                        kotlin.f.b(r8)
                        goto L51
                    L3c:
                        kotlin.f.b(r8)
                        kt.c r8 = r6.f61551a
                        kotlin.jvm.functions.Function2 r2 = r6.f61552b
                        r0.f61555j = r8
                        r0.f61554i = r4
                        java.lang.Object r7 = r2.invoke(r7, r0)
                        if (r7 != r1) goto L4e
                        return r1
                    L4e:
                        r5 = r8
                        r8 = r7
                        r7 = r5
                    L51:
                        r2 = 0
                        r0.f61555j = r2
                        r0.f61554i = r3
                        java.lang.Object r7 = r7.emit(r8, r0)
                        if (r7 != r1) goto L5d
                        return r1
                    L5d:
                        kotlin.Unit r7 = kotlin.Unit.f60915a
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            public Object collect(kt.c cVar, rs.c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar, function2), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        }, i10);
    }

    public static /* synthetic */ kt.b b(kt.b bVar, int i10, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = f61548a;
        }
        return c.B(bVar, i10, function2);
    }

    @NotNull
    public static final <T> kt.b<T> c(@NotNull kt.b<? extends kt.b<? extends T>> bVar) {
        return new a(bVar);
    }

    @NotNull
    public static final <T> kt.b<T> d(@NotNull kt.b<? extends kt.b<? extends T>> bVar, int i10) {
        if (i10 > 0) {
            if (i10 == 1) {
                return c.D(bVar);
            }
            return new ChannelFlowMerge(bVar, i10, null, 0, null, 28, null);
        }
        throw new IllegalArgumentException(("Expected positive concurrency level, but had " + i10).toString());
    }

    @NotNull
    public static final <T, R> kt.b<R> e(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super T, ? super rs.c<? super R>, ? extends Object> function2) {
        return c.X(bVar, new FlowKt__MergeKt$mapLatest$1(function2, null));
    }

    @NotNull
    public static final <T> kt.b<T> f(@NotNull Iterable<? extends kt.b<? extends T>> iterable) {
        return new ChannelLimitedFlowMerge(iterable, null, 0, null, 14, null);
    }

    @NotNull
    public static final <T> kt.b<T> g(@NotNull kt.b<? extends T>... bVarArr) {
        return c.L(kotlin.collections.n.Z(bVarArr));
    }

    @NotNull
    public static final <T, R> kt.b<R> h(@NotNull kt.b<? extends T> bVar, @NotNull at.n<? super kt.c<? super R>, ? super T, ? super rs.c<? super Unit>, ? extends Object> nVar) {
        return new ChannelFlowTransformLatest(nVar, bVar, null, 0, null, 28, null);
    }
}
