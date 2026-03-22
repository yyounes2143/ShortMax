package wt;

import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: StreamingJsonEncoder.kt */
@Metadata
/* loaded from: classes8.dex */
public final class t0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final Set<SerialDescriptor> f70351a = kotlin.collections.y0.j(tt.a.H(ms.n.f62638b).getDescriptor(), tt.a.I(ms.p.f62643b).getDescriptor(), tt.a.G(ms.l.f62633b).getDescriptor(), tt.a.J(ms.s.f62649b).getDescriptor());

    public static final boolean a(@NotNull SerialDescriptor serialDescriptor) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        if (serialDescriptor.isInline() && Intrinsics.areEqual(serialDescriptor, kotlinx.serialization.json.h.l())) {
            return true;
        }
        return false;
    }

    public static final boolean b(@NotNull SerialDescriptor serialDescriptor) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        if (serialDescriptor.isInline() && f70351a.contains(serialDescriptor)) {
            return true;
        }
        return false;
    }
}
