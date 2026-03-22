package rq;

import io.bidmachine.rendering.model.MediaSource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class o0 extends MediaSource {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f66084c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final MediaSource.DeliveryType f66085d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(@NotNull String url, @NotNull MediaSource.DeliveryType deliveryType) {
        super(deliveryType, null);
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(deliveryType, "deliveryType");
        this.f66084c = url;
        this.f66085d = deliveryType;
    }

    @Override // io.bidmachine.rendering.model.MediaSource
    @NotNull
    public MediaSource.DeliveryType a() {
        return this.f66085d;
    }

    @NotNull
    public final String b() {
        return this.f66084c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o0)) {
            return false;
        }
        o0 o0Var = (o0) obj;
        if (Intrinsics.areEqual(this.f66084c, o0Var.f66084c) && a() == o0Var.a()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f66084c.hashCode() * 31) + a().hashCode();
    }

    @NotNull
    public String toString() {
        return "UrlMediaSource(url=" + this.f66084c + ", deliveryType=" + a() + ')';
    }
}
