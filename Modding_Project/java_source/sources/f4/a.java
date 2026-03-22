package f4;

import android.os.Trace;
import f4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultFrescoSystrace.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a implements b.c {
    @Override // f4.b.c
    public void a(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (isTracing()) {
            Trace.beginSection(name);
        }
    }

    @Override // f4.b.c
    public void b() {
        if (isTracing()) {
            Trace.endSection();
        }
    }

    @Override // f4.b.c
    public boolean isTracing() {
        return false;
    }
}
