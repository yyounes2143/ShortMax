package androidx.datastore.core;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1", f = "DataStoreImpl.kt", l = {437, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_PARAM_SEND_OUTLET_TIME, 546, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RATE}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDataStoreImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,538:1\n1855#2,2:539\n120#3,10:541\n*S KotlinDebug\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1\n*L\n458#1:539,2\n461#1:541,10\n*E\n"})
/* loaded from: classes2.dex */
public final class DataStoreImpl$InitDataStore$doRun$initData$1<T> extends SuspendLambda implements Function1<c<? super Data<T>>, Object> {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;
    final /* synthetic */ DataStoreImpl<T>.InitDataStore this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$InitDataStore$doRun$initData$1(DataStoreImpl<T> dataStoreImpl, DataStoreImpl<T>.InitDataStore initDataStore, c<? super DataStoreImpl$InitDataStore$doRun$initData$1> cVar) {
        super(1, cVar);
        this.this$0 = dataStoreImpl;
        this.this$1 = initDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@NotNull c<?> cVar) {
        return new DataStoreImpl$InitDataStore$doRun$initData$1(this.this$0, this.this$1, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke((c) ((c) obj));
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x010d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x010e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Nullable
    public final Object invoke(@Nullable c<? super Data<T>> cVar) {
        return ((DataStoreImpl$InitDataStore$doRun$initData$1) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
