package wr;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpHeaderValueParser.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f70134a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f70135b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f70136c;

    public d(@NotNull String name, @NotNull String value, boolean z10) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f70134a = name;
        this.f70135b = value;
        this.f70136c = z10;
    }

    @NotNull
    public final String a() {
        return this.f70134a;
    }

    @NotNull
    public final String b() {
        return this.f70135b;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (StringsKt.G(dVar.f70134a, this.f70134a, true) && StringsKt.G(dVar.f70135b, this.f70135b, true)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f70134a;
        Locale locale = Locale.ROOT;
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        int hashCode = lowerCase.hashCode();
        String lowerCase2 = this.f70135b.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return hashCode + (hashCode * 31) + lowerCase2.hashCode();
    }

    @NotNull
    public String toString() {
        return "HeaderValueParam(name=" + this.f70134a + ", value=" + this.f70135b + ", escapeValue=" + this.f70136c + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(@NotNull String name, @NotNull String value) {
        this(name, value, false);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
    }
}
