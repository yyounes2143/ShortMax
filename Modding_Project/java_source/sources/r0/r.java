package r0;

import android.content.Context;
import e0.a;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Utils.kt */
@Metadata
/* loaded from: classes2.dex */
public final class r {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final r f65466a = new r();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static e0.a f65467b;

    private r() {
    }

    @NotNull
    public final synchronized e0.a a(@NotNull Context context) {
        e0.a aVar;
        aVar = f65467b;
        if (aVar == null) {
            aVar = new a.C0710a().b(ws.f.z(i.m(context), "image_cache")).a();
            f65467b = aVar;
        }
        return aVar;
    }
}
