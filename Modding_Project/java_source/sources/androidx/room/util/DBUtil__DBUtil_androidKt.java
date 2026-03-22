package androidx.room.util;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.annotation.RestrictTo;
import androidx.room.RoomDatabase;
import androidx.room.TransactionElement;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.driver.SupportSQLiteConnection;
import gt.e;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import ws.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DBUtil.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDBUtil.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt\n+ 2 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt\n*L\n1#1,259:1\n115#1,2:260\n118#1:264\n115#1,2:265\n118#1:269\n48#2:262\n67#2:263\n48#2:267\n67#2:268\n*S KotlinDebug\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt\n*L\n53#1:260,2\n53#1:264\n101#1:265,2\n101#1:269\n54#1:262\n54#1:263\n102#1:267\n102#1:268\n*E\n"})
/* loaded from: classes2.dex */
public final /* synthetic */ class DBUtil__DBUtil_androidKt {
    private static final <R> Object compatCoroutineExecute$DBUtil__DBUtil_androidKt(RoomDatabase roomDatabase, boolean z10, Function1<? super c<? super R>, ? extends Object> function1, c<? super R> cVar) {
        if (roomDatabase.inCompatibilityMode() && roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) {
            return function1.invoke(cVar);
        }
        InlineMarker.mark(0);
        Object coroutineContext = DBUtil.getCoroutineContext(roomDatabase, z10, cVar);
        InlineMarker.mark(1);
        DBUtil__DBUtil_androidKt$compatCoroutineExecute$2 dBUtil__DBUtil_androidKt$compatCoroutineExecute$2 = new DBUtil__DBUtil_androidKt$compatCoroutineExecute$2(function1, null);
        InlineMarker.mark(0);
        Object g10 = e.g((CoroutineContext) coroutineContext, dBUtil__DBUtil_androidKt$compatCoroutineExecute$2, cVar);
        InlineMarker.mark(1);
        return g10;
    }

    @ms.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public static final CancellationSignal createCancellationSignal() {
        return new CancellationSignal();
    }

    @ms.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final void dropFtsSyncTriggers(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        DBUtil.dropFtsSyncTriggers(new SupportSQLiteConnection(db2));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final void foreignKeyCheck(@NotNull SupportSQLiteDatabase db2, @NotNull String tableName) {
        Intrinsics.checkNotNullParameter(db2, "db");
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        DBUtil.foreignKeyCheck(new SupportSQLiteConnection(db2), tableName);
    }

    @Nullable
    public static final Object getCoroutineContext(@NotNull RoomDatabase roomDatabase, boolean z10, @NotNull c<? super CoroutineContext> cVar) {
        CoroutineContext coroutineContext;
        TransactionElement transactionElement = (TransactionElement) cVar.getContext().get(TransactionElement.Key);
        if (transactionElement != null) {
            coroutineContext = transactionElement.getTransactionDispatcher$room_runtime();
        } else {
            coroutineContext = null;
        }
        if (roomDatabase.inCompatibilityMode()) {
            if (coroutineContext != null) {
                return roomDatabase.getQueryContext().plus(coroutineContext);
            }
            if (z10) {
                return roomDatabase.getTransactionContext$room_runtime();
            }
            return roomDatabase.getQueryContext();
        }
        CoroutineContext queryContext = roomDatabase.getQueryContext();
        if (coroutineContext == null) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        return queryContext.plus(coroutineContext);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final <R> R performBlocking(@NotNull RoomDatabase db2, boolean z10, boolean z11, @NotNull Function1<? super SQLiteConnection, ? extends R> block) {
        Intrinsics.checkNotNullParameter(db2, "db");
        Intrinsics.checkNotNullParameter(block, "block");
        db2.assertNotMainThread();
        db2.assertNotSuspendingTransaction();
        CoroutineContext coroutineContext = db2.getSuspendingTransactionContext().get();
        if (coroutineContext == null) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        return (R) RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new DBUtil__DBUtil_androidKt$performBlocking$1(coroutineContext, db2, z11, z10, block, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00af A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b0 A[PHI: r0 
      PHI: (r0v12 java.lang.Object) = (r0v8 java.lang.Object), (r0v15 java.lang.Object), (r0v0 java.lang.Object) binds: [B:34:0x008a, B:41:0x00ad, B:19:0x0046] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <R> java.lang.Object performInTransactionSuspending(@org.jetbrains.annotations.NotNull androidx.room.RoomDatabase r10, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super rs.c<? super R>, ? extends java.lang.Object> r11, @org.jetbrains.annotations.NotNull rs.c<? super R> r12) {
        /*
            boolean r1 = r12 instanceof androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1
            if (r1 == 0) goto L14
            r1 = r12
            androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1 r1 = (androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L14
            int r2 = r2 - r3
            r1.label = r2
        L12:
            r6 = r1
            goto L1a
        L14:
            androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1 r1 = new androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1
            r1.<init>(r12)
            goto L12
        L1a:
            java.lang.Object r0 = r6.result
            java.lang.Object r7 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.label
            r2 = 4
            r3 = 3
            r8 = 2
            r4 = 1
            r9 = 0
            if (r1 == 0) goto L4e
            if (r1 == r4) goto L4a
            if (r1 == r8) goto L46
            if (r1 == r3) goto L3a
            if (r1 != r2) goto L32
            goto L46
        L32:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3a:
            java.lang.Object r1 = r6.L$1
            kotlin.jvm.functions.Function1 r1 = (kotlin.jvm.functions.Function1) r1
            java.lang.Object r3 = r6.L$0
            androidx.room.RoomDatabase r3 = (androidx.room.RoomDatabase) r3
            kotlin.f.b(r0)
            goto L9c
        L46:
            kotlin.f.b(r0)
            goto Lb0
        L4a:
            kotlin.f.b(r0)
            goto L65
        L4e:
            kotlin.f.b(r0)
            boolean r0 = r10.inCompatibilityMode()
            if (r0 == 0) goto L66
            androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2 r0 = new androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2
            r0.<init>(r10, r11, r9)
            r6.label = r4
            java.lang.Object r0 = androidx.room.RoomDatabaseKt.withTransactionContext(r10, r0, r6)
            if (r0 != r7) goto L65
            return r7
        L65:
            return r0
        L66:
            boolean r0 = r10.inCompatibilityMode()
            if (r0 == 0) goto L8d
            boolean r0 = r10.isOpenInternal$room_runtime()
            if (r0 == 0) goto L8d
            boolean r0 = r10.inTransaction()
            if (r0 == 0) goto L8d
            androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1 r9 = new androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1
            r2 = 0
            r4 = 0
            r1 = 1
            r0 = r9
            r3 = r10
            r5 = r11
            r0.<init>(r1, r2, r3, r4, r5)
            r6.label = r8
            r0 = 0
            java.lang.Object r0 = r10.useConnection(r0, r9, r6)
            if (r0 != r7) goto Lb0
            return r7
        L8d:
            r6.L$0 = r10
            r6.L$1 = r11
            r6.label = r3
            java.lang.Object r0 = androidx.room.util.DBUtil.getCoroutineContext(r10, r4, r6)
            if (r0 != r7) goto L9a
            return r7
        L9a:
            r3 = r10
            r1 = r11
        L9c:
            kotlin.coroutines.CoroutineContext r0 = (kotlin.coroutines.CoroutineContext) r0
            androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 r4 = new androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1
            r4.<init>(r9, r3, r1)
            r6.L$0 = r9
            r6.L$1 = r9
            r6.label = r2
            java.lang.Object r0 = gt.e.g(r0, r4, r6)
            if (r0 != r7) goto Lb0
            return r7
        Lb0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil__DBUtil_androidKt.performInTransactionSuspending(androidx.room.RoomDatabase, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b2 A[PHI: r0 
      PHI: (r0v9 java.lang.Object) = (r0v8 java.lang.Object), (r0v12 java.lang.Object), (r0v1 java.lang.Object) binds: [B:26:0x0080, B:33:0x00af, B:18:0x0052] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <R> java.lang.Object performSuspending(@org.jetbrains.annotations.NotNull androidx.room.RoomDatabase r16, boolean r17, boolean r18, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super androidx.sqlite.SQLiteConnection, ? extends R> r19, @org.jetbrains.annotations.NotNull rs.c<? super R> r20) {
        /*
            r6 = r16
            r7 = r17
            r1 = r18
            r0 = r20
            boolean r2 = r0 instanceof androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1
            if (r2 == 0) goto L1c
            r2 = r0
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1 r2 = (androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L1c
            int r3 = r3 - r4
            r2.label = r3
        L1a:
            r8 = r2
            goto L22
        L1c:
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1 r2 = new androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1
            r2.<init>(r0)
            goto L1a
        L22:
            java.lang.Object r0 = r8.result
            java.lang.Object r9 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r8.label
            r3 = 3
            r4 = 2
            r10 = 1
            if (r2 == 0) goto L56
            if (r2 == r10) goto L52
            if (r2 == r4) goto L3e
            if (r2 != r3) goto L36
            goto L52
        L36:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3e:
            boolean r1 = r8.Z$1
            boolean r2 = r8.Z$0
            java.lang.Object r4 = r8.L$1
            kotlin.jvm.functions.Function1 r4 = (kotlin.jvm.functions.Function1) r4
            java.lang.Object r5 = r8.L$0
            androidx.room.RoomDatabase r5 = (androidx.room.RoomDatabase) r5
            kotlin.f.b(r0)
            r14 = r1
            r13 = r2
            r15 = r4
            r12 = r5
            goto L9b
        L52:
            kotlin.f.b(r0)
            goto Lb2
        L56:
            kotlin.f.b(r0)
            boolean r0 = r16.inCompatibilityMode()
            if (r0 == 0) goto L83
            boolean r0 = r16.isOpenInternal$room_runtime()
            if (r0 == 0) goto L83
            boolean r0 = r16.inTransaction()
            if (r0 == 0) goto L83
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 r11 = new androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1
            r4 = 0
            r0 = r11
            r1 = r18
            r2 = r17
            r3 = r16
            r5 = r19
            r0.<init>(r1, r2, r3, r4, r5)
            r8.label = r10
            java.lang.Object r0 = r6.useConnection(r7, r11, r8)
            if (r0 != r9) goto Lb2
            return r9
        L83:
            r8.L$0 = r6
            r0 = r19
            r8.L$1 = r0
            r8.Z$0 = r7
            r8.Z$1 = r1
            r8.label = r4
            java.lang.Object r2 = androidx.room.util.DBUtil.getCoroutineContext(r6, r1, r8)
            if (r2 != r9) goto L96
            return r9
        L96:
            r15 = r0
            r14 = r1
            r0 = r2
            r12 = r6
            r13 = r7
        L9b:
            kotlin.coroutines.CoroutineContext r0 = (kotlin.coroutines.CoroutineContext) r0
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 r1 = new androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1
            r11 = 0
            r10 = r1
            r10.<init>(r11, r12, r13, r14, r15)
            r2 = 0
            r8.L$0 = r2
            r8.L$1 = r2
            r8.label = r3
            java.lang.Object r0 = gt.e.g(r0, r1, r8)
            if (r0 != r9) goto Lb2
            return r9
        Lb2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil__DBUtil_androidKt.performSuspending(androidx.room.RoomDatabase, boolean, boolean, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }

    @ms.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public static final Cursor query(@NotNull RoomDatabase db2, @NotNull SupportSQLiteQuery sqLiteQuery, boolean z10) {
        Intrinsics.checkNotNullParameter(db2, "db");
        Intrinsics.checkNotNullParameter(sqLiteQuery, "sqLiteQuery");
        return DBUtil.query(db2, sqLiteQuery, z10, null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int readVersion(@NotNull File databaseFile) throws IOException {
        Intrinsics.checkNotNullParameter(databaseFile, "databaseFile");
        FileChannel channel = new FileInputStream(databaseFile).getChannel();
        try {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(allocate) == 4) {
                allocate.rewind();
                int i10 = allocate.getInt();
                b.a(channel, null);
                return i10;
            }
            throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                b.a(channel, th2);
                throw th3;
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public static final SQLiteConnection toSQLiteConnection(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        return new SupportSQLiteConnection(db2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public static final Cursor query(@NotNull RoomDatabase db2, @NotNull SupportSQLiteQuery sqLiteQuery, boolean z10, @Nullable CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(db2, "db");
        Intrinsics.checkNotNullParameter(sqLiteQuery, "sqLiteQuery");
        Cursor query = db2.query(sqLiteQuery, cancellationSignal);
        if (z10 && (query instanceof AbstractWindowedCursor)) {
            AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) query;
            int count = abstractWindowedCursor.getCount();
            return (abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count) < count ? CursorUtil.copyAndClose(query) : query;
        }
        return query;
    }
}
