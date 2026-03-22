package kotlin.reflect;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KProperty.kt */
@Metadata
/* loaded from: classes8.dex */
public interface KProperty2<D, E, V> extends KProperty<V>, Function2<D, E, V> {

    /* compiled from: KProperty.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface Getter<D, E, V> extends KProperty.Getter<V>, Function2<D, E, V> {
        @Override // kotlin.jvm.functions.Function2
        /* synthetic */ Object invoke(Object obj, Object obj2);
    }

    V get(D d10, E e10);

    @Nullable
    Object getDelegate(D d10, E e10);

    @Override // kotlin.reflect.KProperty
    @NotNull
    Getter<D, E, V> getGetter();

    /* synthetic */ Object invoke(Object obj, Object obj2);

    /* compiled from: KProperty.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void getGetter$annotations() {
        }
    }
}
