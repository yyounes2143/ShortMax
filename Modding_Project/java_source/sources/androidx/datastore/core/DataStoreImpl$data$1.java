package androidx.datastore.core;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl$data$1", f = "DataStoreImpl.kt", l = {72, 74, 100}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDataStoreImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/DataStoreImpl$data$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,538:1\n53#2:539\n55#2:543\n50#3:540\n55#3:542\n107#4:541\n*S KotlinDebug\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/DataStoreImpl$data$1\n*L\n108#1:539\n108#1:543\n108#1:540\n108#1:542\n108#1:541\n*E\n"})
/* loaded from: classes2.dex */
public final class DataStoreImpl$data$1<T> extends SuspendLambda implements Function2<c<? super T>, rs.c<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataStoreImpl.kt */
    @Metadata
    @d(c = "androidx.datastore.core.DataStoreImpl$data$1$1", f = "DataStoreImpl.kt", l = {102}, m = "invokeSuspend")
    /* renamed from: androidx.datastore.core.DataStoreImpl$data$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<c<? super State<T>>, rs.c<? super Unit>, Object> {
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DataStoreImpl<T> dataStoreImpl, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.this$0 = dataStoreImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new AnonymousClass1(this.this$0, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
            return invoke((c) ((c) obj), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object incrementCollector;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                this.label = 1;
                incrementCollector = dataStoreImpl.incrementCollector(this);
                if (incrementCollector == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }

        @Nullable
        public final Object invoke(@NotNull c<? super State<T>> cVar, @Nullable rs.c<? super Unit> cVar2) {
            return ((AnonymousClass1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataStoreImpl.kt */
    @Metadata
    @d(c = "androidx.datastore.core.DataStoreImpl$data$1$2", f = "DataStoreImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.datastore.core.DataStoreImpl$data$1$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<State<T>, rs.c<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(rs.c<? super AnonymousClass2> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(cVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Nullable
        public final Object invoke(@NotNull State<T> state, @Nullable rs.c<? super Boolean> cVar) {
            return ((AnonymousClass2) create(state, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.label == 0) {
                f.b(obj);
                return kotlin.coroutines.jvm.internal.a.a(!(((State) this.L$0) instanceof Final));
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Boolean> cVar) {
            return invoke((State) ((State) obj), cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataStoreImpl.kt */
    @Metadata
    @d(c = "androidx.datastore.core.DataStoreImpl$data$1$3", f = "DataStoreImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.datastore.core.DataStoreImpl$data$1$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<State<T>, rs.c<? super Boolean>, Object> {
        final /* synthetic */ State<T> $startState;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(State<T> state, rs.c<? super AnonymousClass3> cVar) {
            super(2, cVar);
            this.$startState = state;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$startState, cVar);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Nullable
        public final Object invoke(@NotNull State<T> state, @Nullable rs.c<? super Boolean> cVar) {
            return ((AnonymousClass3) create(state, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            boolean z10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.label == 0) {
                f.b(obj);
                State state = (State) this.L$0;
                if ((state instanceof Data) && state.getVersion() <= this.$startState.getVersion()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                return kotlin.coroutines.jvm.internal.a.a(z10);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Boolean> cVar) {
            return invoke((State) ((State) obj), cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataStoreImpl.kt */
    @Metadata
    @d(c = "androidx.datastore.core.DataStoreImpl$data$1$5", f = "DataStoreImpl.kt", l = {116}, m = "invokeSuspend")
    /* renamed from: androidx.datastore.core.DataStoreImpl$data$1$5  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass5 extends SuspendLambda implements n<c<? super T>, Throwable, rs.c<? super Unit>, Object> {
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(DataStoreImpl<T> dataStoreImpl, rs.c<? super AnonymousClass5> cVar) {
            super(3, cVar);
            this.this$0 = dataStoreImpl;
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Throwable th2, rs.c<? super Unit> cVar) {
            return invoke((c) ((c) obj), th2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object decrementCollector;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                this.label = 1;
                decrementCollector = dataStoreImpl.decrementCollector(this);
                if (decrementCollector == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }

        @Nullable
        public final Object invoke(@NotNull c<? super T> cVar, @Nullable Throwable th2, @Nullable rs.c<? super Unit> cVar2) {
            return new AnonymousClass5(this.this$0, cVar2).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$data$1(DataStoreImpl<T> dataStoreImpl, rs.c<? super DataStoreImpl$data$1> cVar) {
        super(2, cVar);
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        DataStoreImpl$data$1 dataStoreImpl$data$1 = new DataStoreImpl$data$1(this.this$0, cVar);
        dataStoreImpl$data$1.L$0 = obj;
        return dataStoreImpl$data$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke((c) ((c) obj), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00bc A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r8.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L32
            if (r1 == r4) goto L2a
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            kotlin.f.b(r9)
            goto Lbd
        L16:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1e:
            java.lang.Object r1 = r8.L$1
            androidx.datastore.core.State r1 = (androidx.datastore.core.State) r1
            java.lang.Object r3 = r8.L$0
            kt.c r3 = (kt.c) r3
            kotlin.f.b(r9)
            goto L66
        L2a:
            java.lang.Object r1 = r8.L$0
            kt.c r1 = (kt.c) r1
            kotlin.f.b(r9)
            goto L4a
        L32:
            kotlin.f.b(r9)
            java.lang.Object r9 = r8.L$0
            kt.c r9 = (kt.c) r9
            androidx.datastore.core.DataStoreImpl<T> r1 = r8.this$0
            r8.L$0 = r9
            r8.label = r4
            r4 = 0
            java.lang.Object r1 = androidx.datastore.core.DataStoreImpl.access$readState(r1, r4, r8)
            if (r1 != r0) goto L47
            return r0
        L47:
            r7 = r1
            r1 = r9
            r9 = r7
        L4a:
            androidx.datastore.core.State r9 = (androidx.datastore.core.State) r9
            boolean r4 = r9 instanceof androidx.datastore.core.Data
            if (r4 == 0) goto L69
            r4 = r9
            androidx.datastore.core.Data r4 = (androidx.datastore.core.Data) r4
            java.lang.Object r4 = r4.getValue()
            r8.L$0 = r1
            r8.L$1 = r9
            r8.label = r3
            java.lang.Object r3 = r1.emit(r4, r8)
            if (r3 != r0) goto L64
            return r0
        L64:
            r3 = r1
            r1 = r9
        L66:
            r9 = r1
            r1 = r3
            goto L78
        L69:
            boolean r3 = r9 instanceof androidx.datastore.core.UnInitialized
            if (r3 != 0) goto Lc7
            boolean r3 = r9 instanceof androidx.datastore.core.ReadException
            if (r3 != 0) goto Lc0
            boolean r3 = r9 instanceof androidx.datastore.core.Final
            if (r3 == 0) goto L78
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        L78:
            androidx.datastore.core.DataStoreImpl<T> r3 = r8.this$0
            androidx.datastore.core.DataStoreInMemoryCache r3 = androidx.datastore.core.DataStoreImpl.access$getInMemoryCache$p(r3)
            kt.b r3 = r3.getFlow()
            androidx.datastore.core.DataStoreImpl$data$1$1 r4 = new androidx.datastore.core.DataStoreImpl$data$1$1
            androidx.datastore.core.DataStoreImpl<T> r5 = r8.this$0
            r6 = 0
            r4.<init>(r5, r6)
            kt.b r3 = kotlinx.coroutines.flow.c.P(r3, r4)
            androidx.datastore.core.DataStoreImpl$data$1$2 r4 = new androidx.datastore.core.DataStoreImpl$data$1$2
            r4.<init>(r6)
            kt.b r3 = kotlinx.coroutines.flow.c.V(r3, r4)
            androidx.datastore.core.DataStoreImpl$data$1$3 r4 = new androidx.datastore.core.DataStoreImpl$data$1$3
            r4.<init>(r9, r6)
            kt.b r9 = kotlinx.coroutines.flow.c.s(r3, r4)
            androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1 r3 = new androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1
            r3.<init>()
            androidx.datastore.core.DataStoreImpl$data$1$5 r9 = new androidx.datastore.core.DataStoreImpl$data$1$5
            androidx.datastore.core.DataStoreImpl<T> r4 = r8.this$0
            r9.<init>(r4, r6)
            kt.b r9 = kotlinx.coroutines.flow.c.N(r3, r9)
            r8.L$0 = r6
            r8.L$1 = r6
            r8.label = r2
            java.lang.Object r9 = kotlinx.coroutines.flow.c.u(r1, r9, r8)
            if (r9 != r0) goto Lbd
            return r0
        Lbd:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        Lc0:
            androidx.datastore.core.ReadException r9 = (androidx.datastore.core.ReadException) r9
            java.lang.Throwable r9 = r9.getReadException()
            throw r9
        Lc7:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"
            r9.<init>(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$data$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Nullable
    public final Object invoke(@NotNull c<? super T> cVar, @Nullable rs.c<? super Unit> cVar2) {
        return ((DataStoreImpl$data$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
