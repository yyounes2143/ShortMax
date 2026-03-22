package rq;

import io.bidmachine.rendering.model.AnimationDirectionType;
import io.bidmachine.rendering.model.AnimationEventType;
import io.bidmachine.rendering.model.AnimationFunctionType;
import io.bidmachine.rendering.model.AnimationStyleType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final AnimationEventType f66022a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final AnimationStyleType f66023b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final AnimationFunctionType f66024c;

    /* renamed from: d  reason: collision with root package name */
    private final long f66025d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final AnimationDirectionType f66026e;

    public d(@NotNull AnimationEventType event, @NotNull AnimationStyleType style, @Nullable AnimationFunctionType animationFunctionType, long j10, @Nullable AnimationDirectionType animationDirectionType) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(style, "style");
        this.f66022a = event;
        this.f66023b = style;
        this.f66024c = animationFunctionType;
        this.f66025d = j10;
        this.f66026e = animationDirectionType;
    }

    @NotNull
    public final AnimationDirectionType a() {
        AnimationDirectionType animationDirectionType = this.f66026e;
        if (animationDirectionType == null) {
            return AnimationDirectionType.Left;
        }
        return animationDirectionType;
    }

    public final long b() {
        return this.f66025d;
    }

    @Nullable
    public final AnimationFunctionType c() {
        return this.f66024c;
    }

    @NotNull
    public final AnimationStyleType d() {
        return this.f66023b;
    }
}
