package kotlin.reflect;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.reflect.KMutableProperty;
import org.jetbrains.annotations.NotNull;
/* compiled from: KProperty.kt */
@Metadata
/* loaded from: classes8.dex */
public interface KMutableProperty2<D, E, V> extends KProperty2<D, E, V>, KMutableProperty<V> {

    /* compiled from: KProperty.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface Setter<D, E, V> extends KMutableProperty.Setter<V>, n<D, E, V, Unit> {
        @Override // at.n
        /* synthetic */ Unit invoke(Object obj, Object obj2, Object obj3);
    }

    @Override // kotlin.reflect.KMutableProperty
    @NotNull
    Setter<D, E, V> getSetter();

    @Override // kotlin.reflect.KProperty2, kotlin.jvm.functions.Function2
    /* synthetic */ Object invoke(Object obj, Object obj2);

    void set(D d10, E e10, V v10);

    /* compiled from: KProperty.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void getSetter$annotations() {
        }
    }
}
