package androidx.lifecycle.serialization;

import androidx.lifecycle.SavedStateHandle;
import androidx.savedstate.serialization.SavedStateConfiguration;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import kotlin.properties.d;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
/* compiled from: SavedStateHandleDelegate.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SavedStateHandleDelegateKt {
    public static final /* synthetic */ <T> d<Object, T> saved(SavedStateHandle savedStateHandle, String str, SavedStateConfiguration configuration, Function0<? extends T> init) {
        Intrinsics.checkNotNullParameter(savedStateHandle, "<this>");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(init, "init");
        xt.a serializersModule = configuration.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "T");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return saved(savedStateHandle, t.c(serializersModule, null), str, configuration, init);
    }

    public static /* synthetic */ d saved$default(SavedStateHandle savedStateHandle, String str, SavedStateConfiguration configuration, Function0 init, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            configuration = SavedStateConfiguration.DEFAULT;
        }
        Intrinsics.checkNotNullParameter(savedStateHandle, "<this>");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(init, "init");
        xt.a serializersModule = configuration.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "T");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return saved(savedStateHandle, t.c(serializersModule, null), str, configuration, init);
    }

    @NotNull
    public static final <T> d<Object, T> saved(@NotNull SavedStateHandle savedStateHandle, @NotNull KSerializer<T> serializer, @Nullable String str, @NotNull SavedStateConfiguration configuration, @NotNull Function0<? extends T> init) {
        Intrinsics.checkNotNullParameter(savedStateHandle, "<this>");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(init, "init");
        return new SavedStateHandleDelegate(savedStateHandle, serializer, str, configuration, init);
    }

    public static /* synthetic */ d saved$default(SavedStateHandle savedStateHandle, KSerializer kSerializer, String str, SavedStateConfiguration savedStateConfiguration, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        if ((i10 & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return saved(savedStateHandle, kSerializer, str, savedStateConfiguration, function0);
    }
}
