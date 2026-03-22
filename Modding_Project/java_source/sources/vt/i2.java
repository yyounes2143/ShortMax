package vt;

import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: PluginGeneratedSerialDescriptor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPluginGeneratedSerialDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt\n+ 2 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n160#2:135\n160#2:139\n1797#3,3:136\n1797#3,3:140\n*S KotlinDebug\n*F\n+ 1 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt\n*L\n128#1:135\n129#1:139\n128#1:136,3\n129#1:140,3\n*E\n"})
/* loaded from: classes8.dex */
public final class i2 {
    public static final int a(@NotNull SerialDescriptor serialDescriptor, @NotNull SerialDescriptor[] typeParams) {
        int i10;
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(typeParams, "typeParams");
        int hashCode = (serialDescriptor.h().hashCode() * 31) + Arrays.hashCode(typeParams);
        Iterable<SerialDescriptor> a10 = ut.h.a(serialDescriptor);
        Iterator<SerialDescriptor> it = a10.iterator();
        int i11 = 1;
        int i12 = 1;
        while (true) {
            int i13 = 0;
            if (!it.hasNext()) {
                break;
            }
            int i14 = i12 * 31;
            String h10 = it.next().h();
            if (h10 != null) {
                i13 = h10.hashCode();
            }
            i12 = i14 + i13;
        }
        for (SerialDescriptor serialDescriptor2 : a10) {
            int i15 = i11 * 31;
            ut.l kind = serialDescriptor2.getKind();
            if (kind != null) {
                i10 = kind.hashCode();
            } else {
                i10 = 0;
            }
            i11 = i15 + i10;
        }
        return (((hashCode * 31) + i12) * 31) + i11;
    }
}
