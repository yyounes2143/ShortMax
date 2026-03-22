package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import vt.e0;
/* compiled from: JsonElementMarker.kt */
@Metadata
/* loaded from: classes8.dex */
public final class JsonElementMarker {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final e0 f61989a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f61990b;

    public JsonElementMarker(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        this.f61989a = new e0(descriptor, new JsonElementMarker$origin$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean e(SerialDescriptor serialDescriptor, int i10) {
        boolean z10;
        if (!serialDescriptor.i(i10) && serialDescriptor.d(i10).b()) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f61990b = z10;
        return z10;
    }

    public final boolean b() {
        return this.f61990b;
    }

    public final void c(int i10) {
        this.f61989a.a(i10);
    }

    public final int d() {
        return this.f61989a.d();
    }
}
