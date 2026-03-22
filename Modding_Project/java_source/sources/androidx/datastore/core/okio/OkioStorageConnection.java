package androidx.datastore.core.okio;

import androidx.datastore.core.InterProcessCoordinator;
import androidx.datastore.core.StorageConnection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import qt.a;
import qt.d;
/* compiled from: OkioStorage.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOkioStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioStorageConnection\n+ 2 Closeable.kt\nandroidx/datastore/core/CloseableKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n38#2,23:231\n38#2,23:262\n120#3,8:254\n129#3:285\n1#4:286\n*S KotlinDebug\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioStorageConnection\n*L\n112#1:231,23\n136#1:262,23\n129#1:254,8\n129#1:285\n*E\n"})
/* loaded from: classes2.dex */
public final class OkioStorageConnection<T> implements StorageConnection<T> {
    @NotNull
    private final AtomicBoolean closed;
    @NotNull
    private final InterProcessCoordinator coordinator;
    @NotNull
    private final FileSystem fileSystem;
    @NotNull
    private final Function0<Unit> onClose;
    @NotNull
    private final Path path;
    @NotNull
    private final OkioSerializer<T> serializer;
    @NotNull
    private final a transactionMutex;

    public OkioStorageConnection(@NotNull FileSystem fileSystem, @NotNull Path path, @NotNull OkioSerializer<T> serializer, @NotNull InterProcessCoordinator coordinator, @NotNull Function0<Unit> onClose) {
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(coordinator, "coordinator");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        this.fileSystem = fileSystem;
        this.path = path;
        this.serializer = serializer;
        this.coordinator = coordinator;
        this.onClose = onClose;
        this.closed = new AtomicBoolean(false);
        this.transactionMutex = d.b(false, 1, null);
    }

    private final void checkNotClosed() {
        if (!this.closed.get()) {
            return;
        }
        throw new IllegalStateException("StorageConnection has already been disposed.");
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
        this.onClose.invoke();
    }

    @Override // androidx.datastore.core.StorageConnection
    @NotNull
    public InterProcessCoordinator getCoordinator() {
        return this.coordinator;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:3|(8:5|6|7|(1:(3:10|11|12)(2:28|29))(6:30|31|32|33|34|(1:36)(1:37))|13|14|15|(2:(1:18)|19)(1:21)))|7|(0)(0)|13|14|15|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0072, code lost:
        r1 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d A[Catch: all -> 0x007e, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x007e, blocks: (B:31:0x007d, B:40:0x008e, B:36:0x0086), top: B:52:0x0022 }] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.datastore.core.okio.OkioStorageConnection$readScope$1] */
    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.datastore.core.okio.OkioStorageConnection$readScope$1] */
    @Override // androidx.datastore.core.StorageConnection
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <R> java.lang.Object readScope(@org.jetbrains.annotations.NotNull at.n<? super androidx.datastore.core.ReadScope<T>, ? super java.lang.Boolean, ? super rs.c<? super R>, ? extends java.lang.Object> r10, @org.jetbrains.annotations.NotNull rs.c<? super R> r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof androidx.datastore.core.okio.OkioStorageConnection$readScope$1
            if (r0 == 0) goto L13
            r0 = r11
            androidx.datastore.core.okio.OkioStorageConnection$readScope$1 r0 = (androidx.datastore.core.okio.OkioStorageConnection$readScope$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.okio.OkioStorageConnection$readScope$1 r0 = new androidx.datastore.core.okio.OkioStorageConnection$readScope$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            boolean r10 = r0.Z$0
            java.lang.Object r1 = r0.L$1
            androidx.datastore.core.Closeable r1 = (androidx.datastore.core.Closeable) r1
            java.lang.Object r0 = r0.L$0
            androidx.datastore.core.okio.OkioStorageConnection r0 = (androidx.datastore.core.okio.OkioStorageConnection) r0
            kotlin.f.b(r11)     // Catch: java.lang.Throwable -> L34
            goto L6d
        L34:
            r11 = move-exception
            goto L86
        L36:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L3e:
            kotlin.f.b(r11)
            r9.checkNotClosed()
            qt.a r11 = r9.transactionMutex
            boolean r11 = qt.a.C0910a.b(r11, r4, r3, r4)
            androidx.datastore.core.okio.OkioReadScope r2 = new androidx.datastore.core.okio.OkioReadScope     // Catch: java.lang.Throwable -> L8f
            okio.FileSystem r5 = r9.fileSystem     // Catch: java.lang.Throwable -> L8f
            okio.Path r6 = r9.path     // Catch: java.lang.Throwable -> L8f
            androidx.datastore.core.okio.OkioSerializer<T> r7 = r9.serializer     // Catch: java.lang.Throwable -> L8f
            r2.<init>(r5, r6, r7)     // Catch: java.lang.Throwable -> L8f
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r11)     // Catch: java.lang.Throwable -> L80
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L80
            r0.L$1 = r2     // Catch: java.lang.Throwable -> L80
            r0.Z$0 = r11     // Catch: java.lang.Throwable -> L80
            r0.label = r3     // Catch: java.lang.Throwable -> L80
            java.lang.Object r10 = r10.invoke(r2, r5, r0)     // Catch: java.lang.Throwable -> L80
            if (r10 != r1) goto L68
            return r1
        L68:
            r0 = r9
            r1 = r2
            r8 = r11
            r11 = r10
            r10 = r8
        L6d:
            r1.close()     // Catch: java.lang.Throwable -> L72
            r1 = r4
            goto L73
        L72:
            r1 = move-exception
        L73:
            if (r1 != 0) goto L7d
            if (r10 == 0) goto L7c
            qt.a r10 = r0.transactionMutex
            qt.a.C0910a.c(r10, r4, r3, r4)
        L7c:
            return r11
        L7d:
            throw r1     // Catch: java.lang.Throwable -> L7e
        L7e:
            r11 = move-exception
            goto L94
        L80:
            r10 = move-exception
            r0 = r9
            r1 = r2
            r8 = r11
            r11 = r10
            r10 = r8
        L86:
            r1.close()     // Catch: java.lang.Throwable -> L8a
            goto L8e
        L8a:
            r1 = move-exception
            ms.d.a(r11, r1)     // Catch: java.lang.Throwable -> L7e
        L8e:
            throw r11     // Catch: java.lang.Throwable -> L7e
        L8f:
            r10 = move-exception
            r0 = r9
            r8 = r11
            r11 = r10
            r10 = r8
        L94:
            if (r10 == 0) goto L9b
            qt.a r10 = r0.transactionMutex
            qt.a.C0910a.c(r10, r4, r3, r4)
        L9b:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.okio.OkioStorageConnection.readScope(at.n, rs.c):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cf A[Catch: all -> 0x00df, IOException -> 0x00e2, TRY_ENTER, TryCatch #2 {IOException -> 0x00e2, blocks: (B:37:0x00cf, B:39:0x00d7, B:48:0x00ef, B:54:0x00fb, B:55:0x00fe), top: B:72:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ef A[Catch: all -> 0x00df, IOException -> 0x00e2, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IOException -> 0x00e2, blocks: (B:37:0x00cf, B:39:0x00d7, B:48:0x00ef, B:54:0x00fb, B:55:0x00fe), top: B:72:0x0024 }] */
    /* JADX WARN: Type inference failed for: r0v3, types: [okio.FileSystem] */
    /* JADX WARN: Type inference failed for: r0v5, types: [okio.FileSystem] */
    /* JADX WARN: Type inference failed for: r10v13, types: [androidx.datastore.core.Closeable] */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16, types: [androidx.datastore.core.Closeable] */
    /* JADX WARN: Type inference failed for: r10v30, types: [androidx.datastore.core.Closeable] */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [okio.Path] */
    @Override // androidx.datastore.core.StorageConnection
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object writeScope(@org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.datastore.core.WriteScope<T>, ? super rs.c<? super kotlin.Unit>, ? extends java.lang.Object> r10, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r11) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.okio.OkioStorageConnection.writeScope(kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }
}
