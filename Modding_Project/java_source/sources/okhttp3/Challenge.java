package okhttp3;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Challenge.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Challenge {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f63318a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f63319b;

    public Challenge(@NotNull String scheme, @NotNull Map<String, String> authParams) {
        String str;
        Intrinsics.checkNotNullParameter(scheme, "scheme");
        Intrinsics.checkNotNullParameter(authParams, "authParams");
        this.f63318a = scheme;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : authParams.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key != null) {
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                str = key.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String).toLowerCase(locale)");
            } else {
                str = null;
            }
            linkedHashMap.put(str, value);
        }
        Map<String, String> unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "unmodifiableMap<String?, String>(newAuthParams)");
        this.f63319b = unmodifiableMap;
    }

    @NotNull
    public final Charset a() {
        String str = this.f63319b.get("charset");
        if (str != null) {
            try {
                Charset forName = Charset.forName(str);
                Intrinsics.checkNotNullExpressionValue(forName, "forName(charset)");
                return forName;
            } catch (Exception unused) {
            }
        }
        Charset ISO_8859_1 = StandardCharsets.ISO_8859_1;
        Intrinsics.checkNotNullExpressionValue(ISO_8859_1, "ISO_8859_1");
        return ISO_8859_1;
    }

    @Nullable
    public final String b() {
        return this.f63319b.get("realm");
    }

    @NotNull
    public final String c() {
        return this.f63318a;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Challenge) {
            Challenge challenge = (Challenge) obj;
            if (Intrinsics.areEqual(challenge.f63318a, this.f63318a) && Intrinsics.areEqual(challenge.f63319b, this.f63319b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((899 + this.f63318a.hashCode()) * 31) + this.f63319b.hashCode();
    }

    @NotNull
    public String toString() {
        return this.f63318a + " authParams=" + this.f63319b;
    }
}
