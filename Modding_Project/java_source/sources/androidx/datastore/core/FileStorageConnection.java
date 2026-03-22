package androidx.datastore.core;

import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import qt.d;
/* compiled from: FileStorage.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFileStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileStorage.kt\nandroidx/datastore/core/FileStorageConnection\n+ 2 Closeable.kt\nandroidx/datastore/core/CloseableKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,208:1\n38#2,23:209\n38#2,23:240\n120#3,8:232\n129#3:263\n1#4:264\n*S KotlinDebug\n*F\n+ 1 FileStorage.kt\nandroidx/datastore/core/FileStorageConnection\n*L\n100#1:209,23\n117#1:240,23\n114#1:232,8\n114#1:263\n*E\n"})
/* loaded from: classes2.dex */
public final class FileStorageConnection<T> implements StorageConnection<T> {
    @NotNull
    private final java.util.concurrent.atomic.AtomicBoolean closed;
    @NotNull
    private final InterProcessCoordinator coordinator;
    @NotNull
    private final File file;
    @NotNull
    private final Function0<Unit> onClose;
    @NotNull
    private final Serializer<T> serializer;
    @NotNull
    private final qt.a transactionMutex;

    public FileStorageConnection(@NotNull File file, @NotNull Serializer<T> serializer, @NotNull InterProcessCoordinator coordinator, @NotNull Function0<Unit> onClose) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(coordinator, "coordinator");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        this.file = file;
        this.serializer = serializer;
        this.coordinator = coordinator;
        this.onClose = onClose;
        this.closed = new java.util.concurrent.atomic.AtomicBoolean(false);
        this.transactionMutex = d.b(false, 1, null);
    }

    private final void checkNotClosed() {
        if (!this.closed.get()) {
            return;
        }
        throw new IllegalStateException("StorageConnection has already been disposed.");
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

    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:3|(8:5|6|7|(1:(3:10|11|12)(2:28|29))(6:30|31|32|34|35|(1:37)(1:38))|13|14|15|(2:(1:18)|19)(1:21)))|7|(0)(0)|13|14|15|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0070, code lost:
        r1 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007b A[Catch: all -> 0x007c, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x007c, blocks: (B:31:0x007b, B:40:0x008c, B:36:0x0084), top: B:50:0x0022 }] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.datastore.core.FileStorageConnection$readScope$1] */
    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.datastore.core.FileStorageConnection$readScope$1] */
    @Override // androidx.datastore.core.StorageConnection
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <R> java.lang.Object readScope(@org.jetbrains.annotations.NotNull at.n<? super androidx.datastore.core.ReadScope<T>, ? super java.lang.Boolean, ? super rs.c<? super R>, ? extends java.lang.Object> r9, @org.jetbrains.annotations.NotNull rs.c<? super R> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof androidx.datastore.core.FileStorageConnection$readScope$1
            if (r0 == 0) goto L13
            r0 = r10
            androidx.datastore.core.FileStorageConnection$readScope$1 r0 = (androidx.datastore.core.FileStorageConnection$readScope$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.FileStorageConnection$readScope$1 r0 = new androidx.datastore.core.FileStorageConnection$readScope$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            boolean r9 = r0.Z$0
            java.lang.Object r1 = r0.L$1
            androidx.datastore.core.Closeable r1 = (androidx.datastore.core.Closeable) r1
            java.lang.Object r0 = r0.L$0
            androidx.datastore.core.FileStorageConnection r0 = (androidx.datastore.core.FileStorageConnection) r0
            kotlin.f.b(r10)     // Catch: java.lang.Throwable -> L34
            goto L6b
        L34:
            r10 = move-exception
            goto L84
        L36:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3e:
            kotlin.f.b(r10)
            r8.checkNotClosed()
            qt.a r10 = r8.transactionMutex
            boolean r10 = qt.a.C0910a.b(r10, r4, r3, r4)
            androidx.datastore.core.FileReadScope r2 = new androidx.datastore.core.FileReadScope     // Catch: java.lang.Throwable -> L8d
            java.io.File r5 = r8.file     // Catch: java.lang.Throwable -> L8d
            androidx.datastore.core.Serializer<T> r6 = r8.serializer     // Catch: java.lang.Throwable -> L8d
            r2.<init>(r5, r6)     // Catch: java.lang.Throwable -> L8d
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r10)     // Catch: java.lang.Throwable -> L7e
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L7e
            r0.L$1 = r2     // Catch: java.lang.Throwable -> L7e
            r0.Z$0 = r10     // Catch: java.lang.Throwable -> L7e
            r0.label = r3     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r9 = r9.invoke(r2, r5, r0)     // Catch: java.lang.Throwable -> L7e
            if (r9 != r1) goto L66
            return r1
        L66:
            r0 = r8
            r1 = r2
            r7 = r10
            r10 = r9
            r9 = r7
        L6b:
            r1.close()     // Catch: java.lang.Throwable -> L70
            r1 = r4
            goto L71
        L70:
            r1 = move-exception
        L71:
            if (r1 != 0) goto L7b
            if (r9 == 0) goto L7a
            qt.a r9 = r0.transactionMutex
            qt.a.C0910a.c(r9, r4, r3, r4)
        L7a:
            return r10
        L7b:
            throw r1     // Catch: java.lang.Throwable -> L7c
        L7c:
            r10 = move-exception
            goto L92
        L7e:
            r9 = move-exception
            r0 = r8
            r1 = r2
            r7 = r10
            r10 = r9
            r9 = r7
        L84:
            r1.close()     // Catch: java.lang.Throwable -> L88
            goto L8c
        L88:
            r1 = move-exception
            ms.d.a(r10, r1)     // Catch: java.lang.Throwable -> L7c
        L8c:
            throw r10     // Catch: java.lang.Throwable -> L7c
        L8d:
            r9 = move-exception
            r0 = r8
            r7 = r10
            r10 = r9
            r9 = r7
        L92:
            if (r9 == 0) goto L99
            qt.a r9 = r0.transactionMutex
            qt.a.C0910a.c(r9, r4, r3, r4)
        L99:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.FileStorageConnection.readScope(at.n, rs.c):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:1|(6:(2:3|(10:5|6|7|(1:(1:(8:11|12|13|14|15|16|17|(5:19|(2:24|25)|27|28|29)(1:30))(2:41|42))(1:43))(2:61|(1:63)(1:64))|44|45|46|47|48|(1:50)(6:51|14|15|16|17|(0)(0))))|45|46|47|48|(0)(0))|70|6|7|(0)(0)|44|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f2, code lost:
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f3, code lost:
        r11 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ad A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bb A[Catch: all -> 0x00f0, IOException -> 0x00f2, TRY_ENTER, TryCatch #0 {all -> 0x00f0, blocks: (B:35:0x00bb, B:37:0x00c1, B:40:0x00ca, B:41:0x00ef, B:46:0x00f5, B:49:0x00fd, B:58:0x010c, B:60:0x0112, B:61:0x0115, B:55:0x0107, B:56:0x010a, B:24:0x007a, B:25:0x0096), top: B:64:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fd A[Catch: all -> 0x00f0, IOException -> 0x00f2, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00f0, blocks: (B:35:0x00bb, B:37:0x00c1, B:40:0x00ca, B:41:0x00ef, B:46:0x00f5, B:49:0x00fd, B:58:0x010c, B:60:0x0112, B:61:0x0115, B:55:0x0107, B:56:0x010a, B:24:0x007a, B:25:0x0096), top: B:64:0x0023 }] */
    /* JADX WARN: Type inference failed for: r10v10, types: [androidx.datastore.core.Closeable] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13, types: [androidx.datastore.core.Closeable] */
    /* JADX WARN: Type inference failed for: r10v28, types: [androidx.datastore.core.Closeable] */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v0, types: [qt.a, int] */
    @Override // androidx.datastore.core.StorageConnection
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object writeScope(@org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.datastore.core.WriteScope<T>, ? super rs.c<? super kotlin.Unit>, ? extends java.lang.Object> r10, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r11) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.FileStorageConnection.writeScope(kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }
}
