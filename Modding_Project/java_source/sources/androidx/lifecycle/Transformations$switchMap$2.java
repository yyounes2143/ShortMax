package androidx.lifecycle;

import androidx.arch.core.util.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Transformations.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Transformations$switchMap$2 implements Observer {
    final /* synthetic */ MediatorLiveData $result;
    final /* synthetic */ Function $switchMapFunction;
    private LiveData liveData;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Transformations$switchMap$2(Function function, MediatorLiveData mediatorLiveData) {
        this.$switchMapFunction = function;
        this.$result = mediatorLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onChanged$lambda$0(MediatorLiveData mediatorLiveData, Object obj) {
        mediatorLiveData.setValue(obj);
        return Unit.f60915a;
    }

    public final LiveData getLiveData() {
        return this.liveData;
    }

    @Override // androidx.lifecycle.Observer
    public void onChanged(Object obj) {
        LiveData liveData = (LiveData) this.$switchMapFunction.apply(obj);
        LiveData liveData2 = this.liveData;
        if (liveData2 == liveData) {
            return;
        }
        if (liveData2 != null) {
            MediatorLiveData mediatorLiveData = this.$result;
            Intrinsics.checkNotNull(liveData2);
            mediatorLiveData.removeSource(liveData2);
        }
        this.liveData = liveData;
        if (liveData != null) {
            MediatorLiveData mediatorLiveData2 = this.$result;
            Intrinsics.checkNotNull(liveData);
            final MediatorLiveData mediatorLiveData3 = this.$result;
            mediatorLiveData2.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: androidx.lifecycle.s
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit onChanged$lambda$0;
                    onChanged$lambda$0 = Transformations$switchMap$2.onChanged$lambda$0(MediatorLiveData.this, obj2);
                    return onChanged$lambda$0;
                }
            }));
        }
    }

    public final void setLiveData(LiveData liveData) {
        this.liveData = liveData;
    }
}
