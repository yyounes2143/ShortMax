package yr;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Text.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f71145a;

    /* renamed from: b  reason: collision with root package name */
    private final int f71146b;

    public f(@NotNull String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        this.f71145a = content;
        String lowerCase = content.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        this.f71146b = lowerCase.hashCode();
    }

    @NotNull
    public final String a() {
        return this.f71145a;
    }

    public boolean equals(@Nullable Object obj) {
        f fVar;
        String str;
        if (obj instanceof f) {
            fVar = (f) obj;
        } else {
            fVar = null;
        }
        if (fVar == null || (str = fVar.f71145a) == null || !StringsKt.G(str, this.f71145a, true)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.f71146b;
    }

    @NotNull
    public String toString() {
        return this.f71145a;
    }
}
