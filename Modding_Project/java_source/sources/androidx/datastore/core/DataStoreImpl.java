package androidx.datastore.core;

import androidx.datastore.core.Message;
import androidx.datastore.core.UpdatingDataContextElement;
import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import gt.e;
import gt.g0;
import gt.p;
import gt.r1;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import kt.b;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.d;
import rs.c;
/* compiled from: DataStoreImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDataStoreImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/DataStoreImpl\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,538:1\n120#2,10:539\n120#2,10:549\n*S KotlinDebug\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/DataStoreImpl\n*L\n130#1:539,10\n148#1:549,10\n*E\n"})
/* loaded from: classes2.dex */
public final class DataStoreImpl<T> implements DataStore<T> {
    @NotNull
    private static final String BUG_MESSAGE = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542";
    @NotNull
    public static final Companion Companion = new Companion(null);
    private int collectorCounter;
    @Nullable
    private r collectorJob;
    @NotNull
    private final qt.a collectorMutex;
    @NotNull
    private final i coordinator$delegate;
    @NotNull
    private final CorruptionHandler<T> corruptionHandler;
    @NotNull
    private final b<T> data;
    @NotNull
    private final DataStoreInMemoryCache<T> inMemoryCache;
    @NotNull
    private final DataStoreImpl<T>.InitDataStore readAndInit;
    @NotNull
    private final g0 scope;
    @NotNull
    private final Storage<T> storage;
    @NotNull
    private final i<StorageConnection<T>> storageConnectionDelegate;
    @NotNull
    private final SimpleActor<Message.Update<T>> writeActor;

    /* compiled from: DataStoreImpl.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DataStoreImpl.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public final class InitDataStore extends RunOnce {
        @Nullable
        private List<? extends Function2<? super InitializerApi<T>, ? super c<? super Unit>, ? extends Object>> initTasks;
        final /* synthetic */ DataStoreImpl<T> this$0;

        public InitDataStore(@NotNull DataStoreImpl dataStoreImpl, List<? extends Function2<? super InitializerApi<T>, ? super c<? super Unit>, ? extends Object>> initTasksList) {
            Intrinsics.checkNotNullParameter(initTasksList, "initTasksList");
            this.this$0 = dataStoreImpl;
            this.initTasks = CollectionsKt.d1(initTasksList);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
        @Override // androidx.datastore.core.RunOnce
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object doRun(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
            /*
                r6 = this;
                boolean r0 = r7 instanceof androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1
                if (r0 == 0) goto L13
                r0 = r7
                androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1 r0 = (androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1 r0 = new androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1
                r0.<init>(r6, r7)
            L18:
                java.lang.Object r7 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.label
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L40
                if (r2 == r4) goto L38
                if (r2 != r3) goto L30
                java.lang.Object r0 = r0.L$0
                androidx.datastore.core.DataStoreImpl$InitDataStore r0 = (androidx.datastore.core.DataStoreImpl.InitDataStore) r0
                kotlin.f.b(r7)
                goto L6b
            L30:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L38:
                java.lang.Object r0 = r0.L$0
                androidx.datastore.core.DataStoreImpl$InitDataStore r0 = (androidx.datastore.core.DataStoreImpl.InitDataStore) r0
                kotlin.f.b(r7)
                goto L7d
            L40:
                kotlin.f.b(r7)
                java.util.List<? extends kotlin.jvm.functions.Function2<? super androidx.datastore.core.InitializerApi<T>, ? super rs.c<? super kotlin.Unit>, ? extends java.lang.Object>> r7 = r6.initTasks
                if (r7 == 0) goto L6e
                kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
                boolean r7 = r7.isEmpty()
                if (r7 == 0) goto L51
                goto L6e
            L51:
                androidx.datastore.core.DataStoreImpl<T> r7 = r6.this$0
                androidx.datastore.core.InterProcessCoordinator r7 = androidx.datastore.core.DataStoreImpl.access$getCoordinator(r7)
                androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1 r2 = new androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1
                androidx.datastore.core.DataStoreImpl<T> r4 = r6.this$0
                r5 = 0
                r2.<init>(r4, r6, r5)
                r0.L$0 = r6
                r0.label = r3
                java.lang.Object r7 = r7.lock(r2, r0)
                if (r7 != r1) goto L6a
                return r1
            L6a:
                r0 = r6
            L6b:
                androidx.datastore.core.Data r7 = (androidx.datastore.core.Data) r7
                goto L7f
            L6e:
                androidx.datastore.core.DataStoreImpl<T> r7 = r6.this$0
                r0.L$0 = r6
                r0.label = r4
                r2 = 0
                java.lang.Object r7 = androidx.datastore.core.DataStoreImpl.access$readDataOrHandleCorruption(r7, r2, r0)
                if (r7 != r1) goto L7c
                return r1
            L7c:
                r0 = r6
            L7d:
                androidx.datastore.core.Data r7 = (androidx.datastore.core.Data) r7
            L7f:
                androidx.datastore.core.DataStoreImpl<T> r0 = r0.this$0
                androidx.datastore.core.DataStoreInMemoryCache r0 = androidx.datastore.core.DataStoreImpl.access$getInMemoryCache$p(r0)
                r0.tryUpdate(r7)
                kotlin.Unit r7 = kotlin.Unit.f60915a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.InitDataStore.doRun(rs.c):java.lang.Object");
        }
    }

    public DataStoreImpl(@NotNull Storage<T> storage, @NotNull List<? extends Function2<? super InitializerApi<T>, ? super c<? super Unit>, ? extends Object>> initTasksList, @NotNull CorruptionHandler<T> corruptionHandler, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(initTasksList, "initTasksList");
        Intrinsics.checkNotNullParameter(corruptionHandler, "corruptionHandler");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.storage = storage;
        this.corruptionHandler = corruptionHandler;
        this.scope = scope;
        this.data = kotlinx.coroutines.flow.c.F(new DataStoreImpl$data$1(this, null));
        this.collectorMutex = d.b(false, 1, null);
        this.inMemoryCache = new DataStoreInMemoryCache<>();
        this.readAndInit = new InitDataStore(this, initTasksList);
        this.storageConnectionDelegate = kotlin.c.b(new Function0<StorageConnection<T>>(this) { // from class: androidx.datastore.core.DataStoreImpl$storageConnectionDelegate$1
            final /* synthetic */ DataStoreImpl<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final StorageConnection<T> invoke() {
                Storage storage2;
                storage2 = ((DataStoreImpl) this.this$0).storage;
                return storage2.createConnection();
            }
        });
        this.coordinator$delegate = kotlin.c.b(new Function0<InterProcessCoordinator>(this) { // from class: androidx.datastore.core.DataStoreImpl$coordinator$2
            final /* synthetic */ DataStoreImpl<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final InterProcessCoordinator invoke() {
                return this.this$0.getStorageConnection$datastore_core_release().getCoordinator();
            }
        });
        this.writeActor = new SimpleActor<>(scope, new Function1<Throwable, Unit>(this) { // from class: androidx.datastore.core.DataStoreImpl$writeActor$1
            final /* synthetic */ DataStoreImpl<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                i iVar;
                if (th2 != null) {
                    ((DataStoreImpl) this.this$0).inMemoryCache.tryUpdate(new Final(th2));
                }
                iVar = ((DataStoreImpl) this.this$0).storageConnectionDelegate;
                if (iVar.isInitialized()) {
                    this.this$0.getStorageConnection$datastore_core_release().close();
                }
            }
        }, new Function2<Message.Update<T>, Throwable, Unit>() { // from class: androidx.datastore.core.DataStoreImpl$writeActor$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Throwable th2) {
                invoke((Message.Update) ((Message.Update) obj), th2);
                return Unit.f60915a;
            }

            public final void invoke(@NotNull Message.Update<T> msg, @Nullable Throwable th2) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                p<T> ack = msg.getAck();
                if (th2 == null) {
                    th2 = new CancellationException("DataStore scope was cancelled before updateData could complete");
                }
                ack.d(th2);
            }
        }, new DataStoreImpl$writeActor$3(this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056 A[Catch: all -> 0x005e, TryCatch #0 {all -> 0x005e, blocks: (B:18:0x004e, B:20:0x0056, B:22:0x005a, B:25:0x0060, B:26:0x0062), top: B:31:0x004e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object decrementCollector(rs.c<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.datastore.core.DataStoreImpl$decrementCollector$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.datastore.core.DataStoreImpl$decrementCollector$1 r0 = (androidx.datastore.core.DataStoreImpl$decrementCollector$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.DataStoreImpl$decrementCollector$1 r0 = new androidx.datastore.core.DataStoreImpl$decrementCollector$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r1 = r0.L$1
            qt.a r1 = (qt.a) r1
            java.lang.Object r0 = r0.L$0
            androidx.datastore.core.DataStoreImpl r0 = (androidx.datastore.core.DataStoreImpl) r0
            kotlin.f.b(r6)
            goto L4e
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3a:
            kotlin.f.b(r6)
            qt.a r6 = r5.collectorMutex
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r5
            r1 = r6
        L4e:
            int r6 = r0.collectorCounter     // Catch: java.lang.Throwable -> L5e
            int r6 = r6 + (-1)
            r0.collectorCounter = r6     // Catch: java.lang.Throwable -> L5e
            if (r6 != 0) goto L62
            kotlinx.coroutines.r r6 = r0.collectorJob     // Catch: java.lang.Throwable -> L5e
            if (r6 == 0) goto L60
            kotlinx.coroutines.r.a.b(r6, r4, r3, r4)     // Catch: java.lang.Throwable -> L5e
            goto L60
        L5e:
            r6 = move-exception
            goto L6a
        L60:
            r0.collectorJob = r4     // Catch: java.lang.Throwable -> L5e
        L62:
            kotlin.Unit r6 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L5e
            r1.unlock(r4)
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        L6a:
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.decrementCollector(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> Object doWithWriteFileLock(boolean z10, Function1<? super c<? super R>, ? extends Object> function1, c<? super R> cVar) {
        if (z10) {
            return function1.invoke(cVar);
        }
        return getCoordinator().lock(new DataStoreImpl$doWithWriteFileLock$3(function1, null), cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InterProcessCoordinator getCoordinator() {
        return (InterProcessCoordinator) this.coordinator$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(2:3|(10:5|6|7|(5:(1:(1:(1:12)(2:19|20))(3:21|22|23))(1:28)|13|14|15|16)(4:29|30|31|(6:33|(1:35)|26|14|15|16)(3:36|(1:38)(1:54)|(2:40|(2:42|(1:44)(1:45))(2:46|47))(2:48|(2:50|51)(2:52|53))))|24|(1:27)|26|14|15|16))|59|6|7|(0)(0)|24|(0)|26|14|15|16|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0034, code lost:
        r10 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00bb A[RETURN] */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.datastore.core.DataStoreImpl, java.lang.Object, androidx.datastore.core.DataStoreImpl<T>] */
    /* JADX WARN: Type inference failed for: r9v21, types: [gt.p] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handleUpdate(androidx.datastore.core.Message.Update<T> r9, rs.c<? super kotlin.Unit> r10) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.handleUpdate(androidx.datastore.core.Message$Update, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0055 A[Catch: all -> 0x0067, TryCatch #0 {all -> 0x0067, blocks: (B:18:0x004e, B:20:0x0055, B:23:0x0069), top: B:28:0x004e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object incrementCollector(rs.c<? super kotlin.Unit> r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof androidx.datastore.core.DataStoreImpl$incrementCollector$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.datastore.core.DataStoreImpl$incrementCollector$1 r0 = (androidx.datastore.core.DataStoreImpl$incrementCollector$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.DataStoreImpl$incrementCollector$1 r0 = new androidx.datastore.core.DataStoreImpl$incrementCollector$1
            r0.<init>(r11, r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r1 = r0.L$1
            qt.a r1 = (qt.a) r1
            java.lang.Object r0 = r0.L$0
            androidx.datastore.core.DataStoreImpl r0 = (androidx.datastore.core.DataStoreImpl) r0
            kotlin.f.b(r12)
            goto L4e
        L32:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L3a:
            kotlin.f.b(r12)
            qt.a r12 = r11.collectorMutex
            r0.L$0 = r11
            r0.L$1 = r12
            r0.label = r3
            java.lang.Object r0 = r12.lock(r4, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r11
            r1 = r12
        L4e:
            int r12 = r0.collectorCounter     // Catch: java.lang.Throwable -> L67
            int r12 = r12 + r3
            r0.collectorCounter = r12     // Catch: java.lang.Throwable -> L67
            if (r12 != r3) goto L69
            gt.g0 r5 = r0.scope     // Catch: java.lang.Throwable -> L67
            androidx.datastore.core.DataStoreImpl$incrementCollector$2$1 r8 = new androidx.datastore.core.DataStoreImpl$incrementCollector$2$1     // Catch: java.lang.Throwable -> L67
            r8.<init>(r0, r4)     // Catch: java.lang.Throwable -> L67
            r9 = 3
            r10 = 0
            r6 = 0
            r7 = 0
            kotlinx.coroutines.r r12 = gt.e.d(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L67
            r0.collectorJob = r12     // Catch: java.lang.Throwable -> L67
            goto L69
        L67:
            r12 = move-exception
            goto L71
        L69:
            kotlin.Unit r12 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L67
            r1.unlock(r4)
            kotlin.Unit r12 = kotlin.Unit.f60915a
            return r12
        L71:
            r1.unlock(r4)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.incrementCollector(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006b A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readAndInitOrPropagateAndThrowFailure(rs.c<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 r0 = (androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 r0 = new androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L44
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            int r1 = r0.I$0
            java.lang.Object r0 = r0.L$0
            androidx.datastore.core.DataStoreImpl r0 = (androidx.datastore.core.DataStoreImpl) r0
            kotlin.f.b(r6)     // Catch: java.lang.Throwable -> L32
            goto L6c
        L32:
            r6 = move-exception
            goto L73
        L34:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3c:
            java.lang.Object r2 = r0.L$0
            androidx.datastore.core.DataStoreImpl r2 = (androidx.datastore.core.DataStoreImpl) r2
            kotlin.f.b(r6)
            goto L57
        L44:
            kotlin.f.b(r6)
            androidx.datastore.core.InterProcessCoordinator r6 = r5.getCoordinator()
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = r6.getVersion(r0)
            if (r6 != r1) goto L56
            return r1
        L56:
            r2 = r5
        L57:
            java.lang.Number r6 = (java.lang.Number) r6
            int r6 = r6.intValue()
            androidx.datastore.core.DataStoreImpl<T>$InitDataStore r4 = r2.readAndInit     // Catch: java.lang.Throwable -> L6f
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L6f
            r0.I$0 = r6     // Catch: java.lang.Throwable -> L6f
            r0.label = r3     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r6 = r4.runIfNeeded(r0)     // Catch: java.lang.Throwable -> L6f
            if (r6 != r1) goto L6c
            return r1
        L6c:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        L6f:
            r0 = move-exception
            r1 = r6
            r6 = r0
            r0 = r2
        L73:
            androidx.datastore.core.DataStoreInMemoryCache<T> r0 = r0.inMemoryCache
            androidx.datastore.core.ReadException r2 = new androidx.datastore.core.ReadException
            r2.<init>(r6, r1)
            r0.tryUpdate(r2)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.readAndInitOrPropagateAndThrowFailure(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readDataAndUpdateCache(boolean r10, rs.c<? super androidx.datastore.core.State<T>> r11) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.readDataAndUpdateCache(boolean, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readDataFromFileOrDefault(c<? super T> cVar) {
        return StorageConnectionKt.readData(getStorageConnection$datastore_core_release(), cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(2:3|(4:5|6|7|8))|85|6|7|8|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0067, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0068, code lost:
        r7 = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x010b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x012a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x014b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readDataOrHandleCorruption(boolean r11, rs.c<? super androidx.datastore.core.Data<T>> r12) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.readDataOrHandleCorruption(boolean, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readState(boolean z10, c<? super State<T>> cVar) {
        return e.g(this.scope.getCoroutineContext(), new DataStoreImpl$readState$2(this, z10, null), cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object transformAndWrite(Function2<? super T, ? super c<? super T>, ? extends Object> function2, CoroutineContext coroutineContext, c<? super T> cVar) {
        return getCoordinator().lock(new DataStoreImpl$transformAndWrite$2(this, coroutineContext, function2, null), cVar);
    }

    @Override // androidx.datastore.core.DataStore
    @NotNull
    public b<T> getData() {
        return this.data;
    }

    @NotNull
    public final StorageConnection<T> getStorageConnection$datastore_core_release() {
        return this.storageConnectionDelegate.getValue();
    }

    @Override // androidx.datastore.core.DataStore
    @Nullable
    public Object updateData(@NotNull Function2<? super T, ? super c<? super T>, ? extends Object> function2, @NotNull c<? super T> cVar) {
        UpdatingDataContextElement updatingDataContextElement = (UpdatingDataContextElement) cVar.getContext().get(UpdatingDataContextElement.Companion.Key.INSTANCE);
        if (updatingDataContextElement != null) {
            updatingDataContextElement.checkNotUpdating(this);
        }
        return e.g(new UpdatingDataContextElement(updatingDataContextElement, this), new DataStoreImpl$updateData$2(this, function2, null), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeData$datastore_core_release(T r12, boolean r13, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Integer> r14) {
        /*
            r11 = this;
            boolean r0 = r14 instanceof androidx.datastore.core.DataStoreImpl$writeData$1
            if (r0 == 0) goto L13
            r0 = r14
            androidx.datastore.core.DataStoreImpl$writeData$1 r0 = (androidx.datastore.core.DataStoreImpl$writeData$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.DataStoreImpl$writeData$1 r0 = new androidx.datastore.core.DataStoreImpl$writeData$1
            r0.<init>(r11, r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r12 = r0.L$0
            kotlin.jvm.internal.Ref$IntRef r12 = (kotlin.jvm.internal.Ref.IntRef) r12
            kotlin.f.b(r14)
            goto L58
        L2d:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L35:
            kotlin.f.b(r14)
            kotlin.jvm.internal.Ref$IntRef r14 = new kotlin.jvm.internal.Ref$IntRef
            r14.<init>()
            androidx.datastore.core.StorageConnection r2 = r11.getStorageConnection$datastore_core_release()
            androidx.datastore.core.DataStoreImpl$writeData$2 r10 = new androidx.datastore.core.DataStoreImpl$writeData$2
            r9 = 0
            r4 = r10
            r5 = r14
            r6 = r11
            r7 = r12
            r8 = r13
            r4.<init>(r5, r6, r7, r8, r9)
            r0.L$0 = r14
            r0.label = r3
            java.lang.Object r12 = r2.writeScope(r10, r0)
            if (r12 != r1) goto L57
            return r1
        L57:
            r12 = r14
        L58:
            int r12 = r12.element
            java.lang.Integer r12 = kotlin.coroutines.jvm.internal.a.d(r12)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.writeData$datastore_core_release(java.lang.Object, boolean, rs.c):java.lang.Object");
    }

    public /* synthetic */ DataStoreImpl(Storage storage, List list, CorruptionHandler corruptionHandler, g0 g0Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(storage, (i10 & 2) != 0 ? CollectionsKt.n() : list, (i10 & 4) != 0 ? new NoOpCorruptionHandler() : corruptionHandler, (i10 & 8) != 0 ? kotlinx.coroutines.i.a(Actual_jvmKt.ioDispatcher().plus(r1.b(null, 1, null))) : g0Var);
    }
}
