package b3;

import android.graphics.drawable.Animatable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageLoadingTimeControllerListener.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a extends z2.a<Object> {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final b f2173b;

    /* renamed from: c  reason: collision with root package name */
    private long f2174c = -1;

    /* renamed from: d  reason: collision with root package name */
    private long f2175d = -1;

    public a(@Nullable b bVar) {
        this.f2173b = bVar;
    }

    @Override // z2.a, z2.b
    public void b(@NotNull String id2, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(id2, "id");
        this.f2174c = System.currentTimeMillis();
    }

    @Override // z2.a, z2.b
    public void d(@NotNull String id2, @Nullable Object obj, @Nullable Animatable animatable) {
        Intrinsics.checkNotNullParameter(id2, "id");
        long currentTimeMillis = System.currentTimeMillis();
        this.f2175d = currentTimeMillis;
        b bVar = this.f2173b;
        if (bVar != null) {
            bVar.a(currentTimeMillis - this.f2174c);
        }
    }
}
