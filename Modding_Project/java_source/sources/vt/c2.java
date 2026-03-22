package vt;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: PluginExceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c2 {
    public static final void a(int i10, int i11, @NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        ArrayList arrayList = new ArrayList();
        int i12 = (~i10) & i11;
        for (int i13 = 0; i13 < 32; i13++) {
            if ((i12 & 1) != 0) {
                arrayList.add(descriptor.f(i13));
            }
            i12 >>>= 1;
        }
        throw new MissingFieldException(arrayList, descriptor.h());
    }
}
