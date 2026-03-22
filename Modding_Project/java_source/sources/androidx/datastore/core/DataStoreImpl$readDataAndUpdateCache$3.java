package androidx.datastore.core;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3", f = "DataStoreImpl.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX, 300}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DataStoreImpl$readDataAndUpdateCache$3<T> extends SuspendLambda implements Function1<c<? super Pair<? extends State<T>, ? extends Boolean>>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataAndUpdateCache$3(DataStoreImpl<T> dataStoreImpl, c<? super DataStoreImpl$readDataAndUpdateCache$3> cVar) {
        super(1, cVar);
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@NotNull c<?> cVar) {
        return new DataStoreImpl$readDataAndUpdateCache$3(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke((c) ((c) obj));
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Throwable th2;
        State state;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        try {
        } catch (Throwable th3) {
            InterProcessCoordinator coordinator = this.this$0.getCoordinator();
            this.L$0 = th3;
            this.label = 2;
            Object version = coordinator.getVersion(this);
            if (version == f10) {
                return f10;
            }
            th2 = th3;
            obj = version;
        }
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    th2 = (Throwable) this.L$0;
                    f.b(obj);
                    state = new ReadException(th2, ((Number) obj).intValue());
                    return k.a(state, kotlin.coroutines.jvm.internal.a.a(true));
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            DataStoreImpl<T> dataStoreImpl = this.this$0;
            this.label = 1;
            obj = dataStoreImpl.readDataOrHandleCorruption(true, this);
            if (obj == f10) {
                return f10;
            }
        }
        state = (State) obj;
        return k.a(state, kotlin.coroutines.jvm.internal.a.a(true));
    }

    @Nullable
    public final Object invoke(@Nullable c<? super Pair<? extends State<T>, Boolean>> cVar) {
        return ((DataStoreImpl$readDataAndUpdateCache$3) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
