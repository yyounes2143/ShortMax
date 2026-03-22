package rq;

import io.bidmachine.rendering.model.MediaSource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class h extends MediaSource {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f66057c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(@NotNull String base64) {
        super(MediaSource.DeliveryType.PRELOAD, null);
        Intrinsics.checkNotNullParameter(base64, "base64");
        this.f66057c = base64;
    }

    @NotNull
    public final String b() {
        return this.f66057c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof h) && Intrinsics.areEqual(this.f66057c, ((h) obj).f66057c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f66057c.hashCode();
    }

    @NotNull
    public String toString() {
        return "Base64MediaSource(base64=" + this.f66057c + ')';
    }
}
