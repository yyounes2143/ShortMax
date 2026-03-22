package rq;

import io.bidmachine.rendering.model.EventType;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class u {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final EventType f66126a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<v> f66127b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f66128c;

    public u(@NotNull EventType eventType, @NotNull String source, @NotNull List<v> eventTaskParamsList) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(eventTaskParamsList, "eventTaskParamsList");
        this.f66126a = eventType;
        this.f66127b = eventTaskParamsList;
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = source.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        this.f66128c = lowerCase;
    }

    @NotNull
    public final List<v> a() {
        return this.f66127b;
    }

    @NotNull
    public final EventType b() {
        return this.f66126a;
    }

    @NotNull
    public final String c() {
        return this.f66128c;
    }
}
