package androidx.room;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RoomDatabase.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.RoomDatabaseKt__RoomDatabaseKt", f = "RoomDatabase.kt", l = {471, 471}, m = "useReaderConnection")
/* loaded from: classes2.dex */
public final class RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1<R> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1(rs.c<? super RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return RoomDatabaseKt.useReaderConnection(null, null, this);
    }
}
