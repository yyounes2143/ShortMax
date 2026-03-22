package rq;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class d0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f66027a;

    public d0(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = name.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        this.f66027a = lowerCase;
    }

    @NotNull
    public final String a() {
        return this.f66027a;
    }
}
