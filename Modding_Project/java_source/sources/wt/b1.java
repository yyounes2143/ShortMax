package wt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.internal.WriteMode;
import org.jetbrains.annotations.NotNull;
import ut.l;
import ut.m;
/* compiled from: WriteMode.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWriteMode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WriteMode.kt\nkotlinx/serialization/json/internal/WriteModeKt\n*L\n1#1,53:1\n36#1,9:54\n*S KotlinDebug\n*F\n+ 1 WriteMode.kt\nkotlinx/serialization/json/internal/WriteModeKt\n*L\n26#1:54,9\n*E\n"})
/* loaded from: classes8.dex */
public final class b1 {
    @NotNull
    public static final SerialDescriptor a(@NotNull SerialDescriptor serialDescriptor, @NotNull xt.a module) {
        SerialDescriptor a10;
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(module, "module");
        if (Intrinsics.areEqual(serialDescriptor.getKind(), l.a.f68626a)) {
            SerialDescriptor b10 = ut.b.b(module, serialDescriptor);
            if (b10 != null && (a10 = a(b10, module)) != null) {
                return a10;
            }
            return serialDescriptor;
        } else if (serialDescriptor.isInline()) {
            return a(serialDescriptor.d(0), module);
        } else {
            return serialDescriptor;
        }
    }

    @NotNull
    public static final WriteMode b(@NotNull kotlinx.serialization.json.a aVar, @NotNull SerialDescriptor desc) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(desc, "desc");
        ut.l kind = desc.getKind();
        if (kind instanceof ut.d) {
            return WriteMode.POLY_OBJ;
        }
        if (Intrinsics.areEqual(kind, m.b.f68629a)) {
            return WriteMode.LIST;
        }
        if (Intrinsics.areEqual(kind, m.c.f68630a)) {
            SerialDescriptor a10 = a(desc.d(0), aVar.getSerializersModule());
            ut.l kind2 = a10.getKind();
            if (!(kind2 instanceof ut.e) && !Intrinsics.areEqual(kind2, l.b.f68627a)) {
                if (aVar.d().c()) {
                    return WriteMode.LIST;
                }
                throw b0.d(a10);
            }
            return WriteMode.MAP;
        }
        return WriteMode.OBJ;
    }
}
