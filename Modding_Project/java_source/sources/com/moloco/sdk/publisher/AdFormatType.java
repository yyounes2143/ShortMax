package com.moloco.sdk.publisher;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata
/* loaded from: classes6.dex */
public final class AdFormatType {
    private static final /* synthetic */ ss.a $ENTRIES;
    private static final /* synthetic */ AdFormatType[] $VALUES;
    public static final AdFormatType BANNER = new AdFormatType("BANNER", 0);
    public static final AdFormatType INTERSTITIAL = new AdFormatType("INTERSTITIAL", 1);
    public static final AdFormatType REWARDED = new AdFormatType("REWARDED", 2);
    public static final AdFormatType MREC = new AdFormatType("MREC", 3);
    public static final AdFormatType NATIVE = new AdFormatType("NATIVE", 4);

    private static final /* synthetic */ AdFormatType[] $values() {
        return new AdFormatType[]{BANNER, INTERSTITIAL, REWARDED, MREC, NATIVE};
    }

    static {
        AdFormatType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private AdFormatType(String str, int i10) {
    }

    @NotNull
    public static ss.a<AdFormatType> getEntries() {
        return $ENTRIES;
    }

    public static AdFormatType valueOf(String str) {
        return (AdFormatType) Enum.valueOf(AdFormatType.class, str);
    }

    public static AdFormatType[] values() {
        return (AdFormatType[]) $VALUES.clone();
    }

    @NotNull
    public final String toLowercase() {
        String lowerCase = toString().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @NotNull
    public final String toTitlecase() {
        String valueOf;
        String lowercase = toLowercase();
        if (lowercase.length() > 0) {
            StringBuilder sb2 = new StringBuilder();
            char charAt = lowercase.charAt(0);
            if (Character.isLowerCase(charAt)) {
                valueOf = CharsKt.i(charAt);
            } else {
                valueOf = String.valueOf(charAt);
            }
            sb2.append((Object) valueOf);
            String substring = lowercase.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            sb2.append(substring);
            return sb2.toString();
        }
        return lowercase;
    }
}
