package d0;

import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DecodeResult.kt */
@Metadata
/* loaded from: classes2.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f49737a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f49738b;

    public e(@NotNull Drawable drawable, boolean z10) {
        this.f49737a = drawable;
        this.f49738b = z10;
    }

    @NotNull
    public final Drawable a() {
        return this.f49737a;
    }

    public final boolean b() {
        return this.f49738b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (Intrinsics.areEqual(this.f49737a, eVar.f49737a) && this.f49738b == eVar.f49738b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.f49737a.hashCode() * 31) + Boolean.hashCode(this.f49738b);
    }
}
