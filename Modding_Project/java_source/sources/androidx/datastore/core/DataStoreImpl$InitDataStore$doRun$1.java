package androidx.datastore.core;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl$InitDataStore", f = "DataStoreImpl.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_SET_VOICE, 434}, m = "doRun")
/* loaded from: classes2.dex */
public final class DataStoreImpl$InitDataStore$doRun$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DataStoreImpl<T>.InitDataStore this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$InitDataStore$doRun$1(DataStoreImpl<T>.InitDataStore initDataStore, c<? super DataStoreImpl$InitDataStore$doRun$1> cVar) {
        super(cVar);
        this.this$0 = initDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.doRun(this);
    }
}
