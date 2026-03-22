package rq;

import io.bidmachine.rendering.model.SideType;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class n0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final SideType f66081a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f66082b;

    public n0(@NotNull SideType targetSideType, @NotNull String targetName) {
        Intrinsics.checkNotNullParameter(targetSideType, "targetSideType");
        Intrinsics.checkNotNullParameter(targetName, "targetName");
        this.f66081a = targetSideType;
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = targetName.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        this.f66082b = lowerCase;
    }

    @NotNull
    public final String a() {
        return this.f66082b;
    }

    @NotNull
    public final SideType b() {
        return this.f66081a;
    }
}
