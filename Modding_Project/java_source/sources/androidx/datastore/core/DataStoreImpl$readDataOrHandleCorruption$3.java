package androidx.datastore.core;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3", f = "DataStoreImpl.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_POST_STALL_500, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_CRYPTO_RETRANSMISSION_TIME_MS}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DataStoreImpl$readDataOrHandleCorruption$3 extends SuspendLambda implements Function1<c<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<T> $newData;
    final /* synthetic */ Ref.IntRef $version;
    Object L$0;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataOrHandleCorruption$3(Ref.ObjectRef<T> objectRef, DataStoreImpl<T> dataStoreImpl, Ref.IntRef intRef, c<? super DataStoreImpl$readDataOrHandleCorruption$3> cVar) {
        super(1, cVar);
        this.$newData = objectRef;
        this.this$0 = dataStoreImpl;
        this.$version = intRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@NotNull c<?> cVar) {
        return new DataStoreImpl$readDataOrHandleCorruption$3(this.$newData, this.this$0, this.$version, cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Ref.IntRef intRef;
        Object obj2;
        Ref.ObjectRef objectRef;
        Object readDataFromFileOrDefault;
        T t10;
        Ref.IntRef intRef2;
        Object obj3;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        try {
        } catch (CorruptionException unused) {
            Ref.IntRef intRef3 = this.$version;
            DataStoreImpl<T> dataStoreImpl = this.this$0;
            T t11 = this.$newData.element;
            this.L$0 = intRef3;
            this.label = 3;
            Object writeData$datastore_core_release = dataStoreImpl.writeData$datastore_core_release(t11, true, this);
            if (writeData$datastore_core_release == f10) {
                return f10;
            }
            intRef = intRef3;
            obj2 = writeData$datastore_core_release;
        }
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        intRef = (Ref.IntRef) this.L$0;
                        f.b(obj);
                        obj2 = obj;
                        intRef.element = ((Number) obj2).intValue();
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                intRef2 = (Ref.IntRef) this.L$0;
                f.b(obj);
                obj3 = obj;
                intRef2.element = ((Number) obj3).intValue();
                return Unit.f60915a;
            }
            objectRef = (Ref.ObjectRef) this.L$0;
            f.b(obj);
            t10 = obj;
        } else {
            f.b(obj);
            objectRef = this.$newData;
            DataStoreImpl<T> dataStoreImpl2 = this.this$0;
            this.L$0 = objectRef;
            this.label = 1;
            readDataFromFileOrDefault = dataStoreImpl2.readDataFromFileOrDefault(this);
            t10 = readDataFromFileOrDefault;
            if (readDataFromFileOrDefault == f10) {
                return f10;
            }
        }
        objectRef.element = t10;
        intRef2 = this.$version;
        InterProcessCoordinator coordinator = this.this$0.getCoordinator();
        this.L$0 = intRef2;
        this.label = 2;
        Object version = coordinator.getVersion(this);
        obj3 = version;
        if (version == f10) {
            return f10;
        }
        intRef2.element = ((Number) obj3).intValue();
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function1
    @Nullable
    public final Object invoke(@Nullable c<? super Unit> cVar) {
        return ((DataStoreImpl$readDataOrHandleCorruption$3) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
