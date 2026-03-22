package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: DataStoreImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDataStoreImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,538:1\n120#2,10:539\n*S KotlinDebug\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1\n*L\n441#1:539,10\n*E\n"})
/* loaded from: classes2.dex */
public final class DataStoreImpl$InitDataStore$doRun$initData$1$api$1<T> implements InitializerApi<T> {
    final /* synthetic */ Ref.ObjectRef<T> $currentData;
    final /* synthetic */ Ref.BooleanRef $initializationComplete;
    final /* synthetic */ qt.a $updateLock;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataStoreImpl$InitDataStore$doRun$initData$1$api$1(qt.a aVar, Ref.BooleanRef booleanRef, Ref.ObjectRef<T> objectRef, DataStoreImpl<T> dataStoreImpl) {
        this.$updateLock = aVar;
        this.$initializationComplete = booleanRef;
        this.$currentData = objectRef;
        this.this$0 = dataStoreImpl;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009a A[Catch: all -> 0x00d8, TRY_LEAVE, TryCatch #1 {all -> 0x00d8, blocks: (B:30:0x0096, B:32:0x009a, B:49:0x00db, B:50:0x00e2), top: B:55:0x0096 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ba A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #0 {all -> 0x0056, blocks: (B:21:0x0052, B:36:0x00b2, B:38:0x00ba), top: B:53:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00db A[Catch: all -> 0x00d8, TRY_ENTER, TryCatch #1 {all -> 0x00d8, blocks: (B:30:0x0096, B:32:0x009a, B:49:0x00db, B:50:0x00e2), top: B:55:0x0096 }] */
    @Override // androidx.datastore.core.InitializerApi
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object updateData(@org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super T, ? super rs.c<? super T>, ? extends java.lang.Object> r11, @org.jetbrains.annotations.NotNull rs.c<? super T> r12) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1$api$1.updateData(kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }
}
