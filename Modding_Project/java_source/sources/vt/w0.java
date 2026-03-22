package vt;

import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: JsonInternalDependencies.kt */
@Metadata
/* loaded from: classes8.dex */
public final class w0 {
    @NotNull
    public static final Set<String> a(@NotNull SerialDescriptor serialDescriptor) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        return b2.a(serialDescriptor);
    }
}
