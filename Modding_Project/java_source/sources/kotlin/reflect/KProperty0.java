package kotlin.reflect;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KProperty.kt */
@Metadata
/* loaded from: classes8.dex */
public interface KProperty0<V> extends KProperty<V>, Function0<V> {

    /* compiled from: KProperty.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface Getter<V> extends KProperty.Getter<V>, Function0<V> {
        @Override // kotlin.jvm.functions.Function0
        /* synthetic */ Object invoke();
    }

    V get();

    @Nullable
    Object getDelegate();

    @Override // kotlin.reflect.KProperty
    @NotNull
    Getter<V> getGetter();

    /* synthetic */ Object invoke();

    /* compiled from: KProperty.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void getGetter$annotations() {
        }
    }
}
