package androidx.datastore.core;

import androidx.datastore.core.SharedCounter;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import gt.e;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kt.b;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.d;
/* compiled from: MultiProcessCoordinator.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMultiProcessCoordinator.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiProcessCoordinator.android.kt\nandroidx/datastore/core/MultiProcessCoordinator\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 MutexUtils.kt\nandroidx/datastore/core/MutexUtilsKt\n*L\n1#1,205:1\n159#1,8:226\n159#1,8:234\n120#2,10:206\n32#3,10:216\n*S KotlinDebug\n*F\n+ 1 MultiProcessCoordinator.android.kt\nandroidx/datastore/core/MultiProcessCoordinator\n*L\n99#1:226,8\n106#1:234,8\n43#1:206,10\n60#1:216,10\n*E\n"})
/* loaded from: classes2.dex */
public final class MultiProcessCoordinator implements InterProcessCoordinator {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String DEADLOCK_ERROR_MESSAGE = "Resource deadlock would occur";
    private static final long INITIAL_WAIT_MILLIS = 10;
    private static final long MAX_WAIT_MILLIS = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
    @NotNull
    private final String LOCK_ERROR_MESSAGE;
    @NotNull
    private final String LOCK_SUFFIX;
    @NotNull
    private final String VERSION_SUFFIX;
    @NotNull
    private final CoroutineContext context;
    @NotNull
    private final File file;
    @NotNull
    private final qt.a inMemoryMutex;
    @NotNull
    private final i<SharedCounter> lazySharedCounter;
    @NotNull
    private final i lockFile$delegate;
    @NotNull
    private final b<Unit> updateNotifications;

    /* compiled from: MultiProcessCoordinator.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007a -> B:27:0x007d). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object getExclusiveFileLockWithRetryIfDeadlock(java.io.FileOutputStream r14, rs.c<? super java.nio.channels.FileLock> r15) {
            /*
                r13 = this;
                boolean r0 = r15 instanceof androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1
                if (r0 == 0) goto L13
                r0 = r15
                androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 r0 = (androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 r0 = new androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1
                r0.<init>(r13, r15)
            L18:
                java.lang.Object r15 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.label
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L38
                if (r2 != r4) goto L30
                long r5 = r0.J$0
                java.lang.Object r14 = r0.L$0
                java.io.FileOutputStream r14 = (java.io.FileOutputStream) r14
                kotlin.f.b(r15)
                goto L7d
            L30:
                java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
                java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
                r14.<init>(r15)
                throw r14
            L38:
                kotlin.f.b(r15)
                long r5 = androidx.datastore.core.MultiProcessCoordinator.access$getINITIAL_WAIT_MILLIS$cp()
            L3f:
                long r7 = androidx.datastore.core.MultiProcessCoordinator.access$getMAX_WAIT_MILLIS$cp()
                int r15 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            */
            //  java.lang.String r2 = "lockFileStream.getChanne…LUE, /* shared= */ false)"
            /*
                if (r15 > 0) goto L81
                java.nio.channels.FileChannel r7 = r14.getChannel()     // Catch: java.io.IOException -> L5d
                r10 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r12 = 0
                r8 = 0
                java.nio.channels.FileLock r15 = r7.lock(r8, r10, r12)     // Catch: java.io.IOException -> L5d
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r15, r2)     // Catch: java.io.IOException -> L5d
                return r15
            L5d:
                r15 = move-exception
                java.lang.String r2 = r15.getMessage()
                if (r2 == 0) goto L80
                java.lang.String r7 = androidx.datastore.core.MultiProcessCoordinator.access$getDEADLOCK_ERROR_MESSAGE$cp()
                r8 = 0
                r9 = 0
                boolean r2 = kotlin.text.StringsKt.b0(r2, r7, r8, r3, r9)
                if (r2 != r4) goto L80
                r0.L$0 = r14
                r0.J$0 = r5
                r0.label = r4
                java.lang.Object r15 = kotlinx.coroutines.DelayKt.b(r5, r0)
                if (r15 != r1) goto L7d
                return r1
            L7d:
                long r7 = (long) r3
                long r5 = r5 * r7
                goto L3f
            L80:
                throw r15
            L81:
                java.nio.channels.FileChannel r7 = r14.getChannel()
                r10 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r12 = 0
                r8 = 0
                java.nio.channels.FileLock r14 = r7.lock(r8, r10, r12)
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r14, r2)
                return r14
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.MultiProcessCoordinator.Companion.getExclusiveFileLockWithRetryIfDeadlock(java.io.FileOutputStream, rs.c):java.lang.Object");
        }

        private Companion() {
        }
    }

    public MultiProcessCoordinator(@NotNull CoroutineContext context, @NotNull File file) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(file, "file");
        this.context = context;
        this.file = file;
        this.updateNotifications = MulticastFileObserver.Companion.observe(file);
        this.LOCK_SUFFIX = ".lock";
        this.VERSION_SUFFIX = ".version";
        this.LOCK_ERROR_MESSAGE = "fcntl failed: EAGAIN";
        this.inMemoryMutex = d.b(false, 1, null);
        this.lockFile$delegate = c.b(new Function0<File>() { // from class: androidx.datastore.core.MultiProcessCoordinator$lockFile$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                String str;
                File fileWithSuffix;
                MultiProcessCoordinator multiProcessCoordinator = MultiProcessCoordinator.this;
                str = multiProcessCoordinator.LOCK_SUFFIX;
                fileWithSuffix = multiProcessCoordinator.fileWithSuffix(str);
                MultiProcessCoordinator.this.createIfNotExists(fileWithSuffix);
                return fileWithSuffix;
            }
        });
        this.lazySharedCounter = c.b(new Function0<SharedCounter>() { // from class: androidx.datastore.core.MultiProcessCoordinator$lazySharedCounter$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SharedCounter invoke() {
                SharedCounter.Factory factory = SharedCounter.Factory;
                factory.loadLib();
                final MultiProcessCoordinator multiProcessCoordinator = MultiProcessCoordinator.this;
                return factory.create$datastore_core_release(new Function0<File>() { // from class: androidx.datastore.core.MultiProcessCoordinator$lazySharedCounter$1.1
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final File invoke() {
                        String str;
                        File fileWithSuffix;
                        MultiProcessCoordinator multiProcessCoordinator2 = MultiProcessCoordinator.this;
                        str = multiProcessCoordinator2.VERSION_SUFFIX;
                        fileWithSuffix = multiProcessCoordinator2.fileWithSuffix(str);
                        MultiProcessCoordinator.this.createIfNotExists(fileWithSuffix);
                        return fileWithSuffix;
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createIfNotExists(File file) {
        createParentDirectories(file);
        if (!file.exists()) {
            file.createNewFile();
        }
    }

    private final void createParentDirectories(File file) {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                throw new IOException("Unable to create parent directories of " + file);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File fileWithSuffix(String str) {
        return new File(this.file.getAbsolutePath() + str);
    }

    private final File getLockFile() {
        return (File) this.lockFile$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedCounter getSharedCounter() {
        return this.lazySharedCounter.getValue();
    }

    private final <T> Object withLazyCounter(Function2<? super SharedCounter, ? super rs.c<? super T>, ? extends Object> function2, rs.c<? super T> cVar) {
        if (this.lazySharedCounter.isInitialized()) {
            return function2.invoke(getSharedCounter(), cVar);
        }
        CoroutineContext coroutineContext = this.context;
        MultiProcessCoordinator$withLazyCounter$2 multiProcessCoordinator$withLazyCounter$2 = new MultiProcessCoordinator$withLazyCounter$2(function2, this, null);
        InlineMarker.mark(0);
        Object g10 = e.g(coroutineContext, multiProcessCoordinator$withLazyCounter$2, cVar);
        InlineMarker.mark(1);
        return g10;
    }

    @NotNull
    protected final File getFile() {
        return this.file;
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    @NotNull
    public b<Unit> getUpdateNotifications() {
        return this.updateNotifications;
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    @Nullable
    public Object getVersion(@NotNull rs.c<? super Integer> cVar) {
        if (this.lazySharedCounter.isInitialized()) {
            return kotlin.coroutines.jvm.internal.a.d(getSharedCounter().getValue());
        }
        return e.g(this.context, new MultiProcessCoordinator$getVersion$$inlined$withLazyCounter$1(this, null), cVar);
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    @Nullable
    public Object incrementAndGetVersion(@NotNull rs.c<? super Integer> cVar) {
        if (this.lazySharedCounter.isInitialized()) {
            return kotlin.coroutines.jvm.internal.a.d(getSharedCounter().incrementAndGetValue());
        }
        return e.g(this.context, new MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1(this, null), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bb A[Catch: all -> 0x00bf, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x00e3, blocks: (B:31:0x0085, B:42:0x00bb, B:56:0x00d9, B:57:0x00dc), top: B:75:0x0085 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d9 A[Catch: all -> 0x00bf, TRY_ENTER, TryCatch #7 {all -> 0x00e3, blocks: (B:31:0x0085, B:42:0x00bb, B:56:0x00d9, B:57:0x00dc), top: B:75:0x0085 }] */
    @Override // androidx.datastore.core.InterProcessCoordinator
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> java.lang.Object lock(@org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super rs.c<? super T>, ? extends java.lang.Object> r9, @org.jetbrains.annotations.NotNull rs.c<? super T> r10) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.MultiProcessCoordinator.lock(kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e5 A[Catch: all -> 0x00e9, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x0057, blocks: (B:63:0x00ec, B:20:0x0053, B:59:0x00e5, B:71:0x00fe, B:72:0x0101), top: B:85:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00fe A[Catch: all -> 0x00e9, TRY_ENTER, TryCatch #5 {all -> 0x0057, blocks: (B:63:0x00ec, B:20:0x0053, B:59:0x00e5, B:71:0x00fe, B:72:0x0101), top: B:85:0x0029 }] */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.datastore.core.MultiProcessCoordinator$tryLock$1] */
    /* JADX WARN: Type inference failed for: r3v16, types: [androidx.datastore.core.MultiProcessCoordinator$tryLock$1] */
    @Override // androidx.datastore.core.InterProcessCoordinator
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> java.lang.Object tryLock(@org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super java.lang.Boolean, ? super rs.c<? super T>, ? extends java.lang.Object> r19, @org.jetbrains.annotations.NotNull rs.c<? super T> r20) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.MultiProcessCoordinator.tryLock(kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }
}
