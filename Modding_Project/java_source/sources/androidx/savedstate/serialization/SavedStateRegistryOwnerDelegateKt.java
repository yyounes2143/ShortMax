package androidx.savedstate.serialization;

import androidx.savedstate.SavedStateRegistryOwner;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import kotlin.properties.d;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
/* compiled from: SavedStateRegistryOwnerDelegate.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SavedStateRegistryOwnerDelegateKt {
    public static final /* synthetic */ <T> d<Object, T> saved(SavedStateRegistryOwner savedStateRegistryOwner, String str, SavedStateConfiguration configuration, Function0<? extends T> init) {
        Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "<this>");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(init, "init");
        xt.a serializersModule = configuration.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "T");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return saved(savedStateRegistryOwner, t.c(serializersModule, null), str, configuration, init);
    }

    public static /* synthetic */ d saved$default(SavedStateRegistryOwner savedStateRegistryOwner, String str, SavedStateConfiguration configuration, Function0 init, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            configuration = SavedStateConfiguration.DEFAULT;
        }
        Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "<this>");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(init, "init");
        xt.a serializersModule = configuration.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "T");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return saved(savedStateRegistryOwner, t.c(serializersModule, null), str, configuration, init);
    }

    @NotNull
    public static final <T> d<Object, T> saved(@NotNull SavedStateRegistryOwner savedStateRegistryOwner, @NotNull KSerializer<T> serializer, @Nullable String str, @NotNull SavedStateConfiguration configuration, @NotNull Function0<? extends T> init) {
        Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "<this>");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(init, "init");
        return new SavedStateRegistryOwnerDelegate(savedStateRegistryOwner.getSavedStateRegistry(), serializer, str, configuration, init);
    }

    public static /* synthetic */ d saved$default(SavedStateRegistryOwner savedStateRegistryOwner, KSerializer kSerializer, String str, SavedStateConfiguration savedStateConfiguration, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        if ((i10 & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return saved(savedStateRegistryOwner, kSerializer, str, savedStateConfiguration, function0);
    }
}
