package vt;

import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: PluginHelperInterfaces.kt */
@Metadata
/* loaded from: classes8.dex */
public interface m0<T> extends KSerializer<T> {

    /* compiled from: PluginHelperInterfaces.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull
        public static <T> KSerializer<?>[] a(@NotNull m0<T> m0Var) {
            return j2.f69458a;
        }
    }

    @NotNull
    KSerializer<?>[] childSerializers();

    @NotNull
    KSerializer<?>[] typeParametersSerializers();
}
