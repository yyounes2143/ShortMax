package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileStorage.kt */
@Metadata
@d(c = "androidx.datastore.core.FileStorageConnection", f = "FileStorage.kt", l = {101}, m = "readScope")
/* loaded from: classes2.dex */
public final class FileStorageConnection$readScope$1<R> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FileStorageConnection<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileStorageConnection$readScope$1(FileStorageConnection<T> fileStorageConnection, c<? super FileStorageConnection$readScope$1> cVar) {
        super(cVar);
        this.this$0 = fileStorageConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.readScope(null, this);
    }
}
