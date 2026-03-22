package androidx.lifecycle;

import androidx.annotation.CheckResult;
import androidx.annotation.MainThread;
import androidx.arch.core.util.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
/* compiled from: Transformations.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Transformations {
    @CheckResult
    @MainThread
    @NotNull
    public static final <X> LiveData<X> distinctUntilChanged(@NotNull LiveData<X> liveData) {
        final MediatorLiveData mediatorLiveData;
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        if (liveData.isInitialized()) {
            booleanRef.element = false;
            mediatorLiveData = new MediatorLiveData(liveData.getValue());
        } else {
            mediatorLiveData = new MediatorLiveData();
        }
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: androidx.lifecycle.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit distinctUntilChanged$lambda$4;
                distinctUntilChanged$lambda$4 = Transformations.distinctUntilChanged$lambda$4(MediatorLiveData.this, booleanRef, obj);
                return distinctUntilChanged$lambda$4;
            }
        }));
        return mediatorLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit distinctUntilChanged$lambda$4(MediatorLiveData mediatorLiveData, Ref.BooleanRef booleanRef, Object obj) {
        T value = mediatorLiveData.getValue();
        if (booleanRef.element || ((value == 0 && obj != null) || (value != 0 && !Intrinsics.areEqual(value, obj)))) {
            booleanRef.element = false;
            mediatorLiveData.setValue(obj);
        }
        return Unit.f60915a;
    }

    @CheckResult
    @MainThread
    @NotNull
    public static final <X, Y> LiveData<Y> map(@NotNull LiveData<X> liveData, @NotNull final Function1<X, Y> transform) {
        final MediatorLiveData mediatorLiveData;
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        if (liveData.isInitialized()) {
            mediatorLiveData = new MediatorLiveData(transform.invoke(liveData.getValue()));
        } else {
            mediatorLiveData = new MediatorLiveData();
        }
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: androidx.lifecycle.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit map$lambda$0;
                map$lambda$0 = Transformations.map$lambda$0(MediatorLiveData.this, transform, obj);
                return map$lambda$0;
            }
        }));
        return mediatorLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit map$lambda$0(MediatorLiveData mediatorLiveData, Function1 function1, Object obj) {
        mediatorLiveData.setValue(function1.invoke(obj));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit map$lambda$1(MediatorLiveData mediatorLiveData, Function function, Object obj) {
        mediatorLiveData.setValue(function.apply(obj));
        return Unit.f60915a;
    }

    @CheckResult
    @MainThread
    @NotNull
    public static final <X, Y> LiveData<Y> switchMap(@NotNull LiveData<X> liveData, @NotNull final Function1<X, LiveData<Y>> transform) {
        final MediatorLiveData mediatorLiveData;
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (liveData.isInitialized()) {
            LiveData<Y> invoke = transform.invoke(liveData.getValue());
            if (invoke != null && invoke.isInitialized()) {
                mediatorLiveData = new MediatorLiveData(invoke.getValue());
            } else {
                mediatorLiveData = new MediatorLiveData();
            }
        } else {
            mediatorLiveData = new MediatorLiveData();
        }
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: androidx.lifecycle.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit switchMap$lambda$3;
                switchMap$lambda$3 = Transformations.switchMap$lambda$3(Function1.this, objectRef, mediatorLiveData, obj);
                return switchMap$lambda$3;
            }
        }));
        return mediatorLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.LiveData, T, java.lang.Object] */
    public static final Unit switchMap$lambda$3(Function1 function1, Ref.ObjectRef objectRef, final MediatorLiveData mediatorLiveData, Object obj) {
        ?? r02 = (LiveData) function1.invoke(obj);
        T t10 = objectRef.element;
        if (t10 != r02) {
            if (t10 != 0) {
                Intrinsics.checkNotNull(t10);
                mediatorLiveData.removeSource((LiveData) t10);
            }
            objectRef.element = r02;
            if (r02 != 0) {
                Intrinsics.checkNotNull(r02);
                mediatorLiveData.addSource(r02, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: androidx.lifecycle.r
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit switchMap$lambda$3$lambda$2;
                        switchMap$lambda$3$lambda$2 = Transformations.switchMap$lambda$3$lambda$2(MediatorLiveData.this, obj2);
                        return switchMap$lambda$3$lambda$2;
                    }
                }));
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit switchMap$lambda$3$lambda$2(MediatorLiveData mediatorLiveData, Object obj) {
        mediatorLiveData.setValue(obj);
        return Unit.f60915a;
    }

    @ms.c
    @CheckResult
    @MainThread
    public static final /* synthetic */ LiveData map(LiveData liveData, final Function mapFunction) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        Intrinsics.checkNotNullParameter(mapFunction, "mapFunction");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: androidx.lifecycle.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit map$lambda$1;
                map$lambda$1 = Transformations.map$lambda$1(MediatorLiveData.this, mapFunction, obj);
                return map$lambda$1;
            }
        }));
        return mediatorLiveData;
    }

    @ms.c
    @CheckResult
    @MainThread
    public static final /* synthetic */ LiveData switchMap(LiveData liveData, Function switchMapFunction) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        Intrinsics.checkNotNullParameter(switchMapFunction, "switchMapFunction");
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Transformations$switchMap$2(switchMapFunction, mediatorLiveData));
        return mediatorLiveData;
    }
}
