package com.startshorts.androidplayer.manager.act;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: ActRouteManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SkipType {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ SkipType[] $VALUES;
    private final int type;
    public static final SkipType SHORTS = new SkipType("SHORTS", 0, 0);
    public static final SkipType H5 = new SkipType("H5", 1, 1);
    public static final SkipType NATIVE = new SkipType("NATIVE", 2, 2);
    public static final SkipType H5_BROWSER_OFFICIAL = new SkipType("H5_BROWSER_OFFICIAL", 3, 3);
    public static final SkipType H5_BROWSER_THIRD = new SkipType("H5_BROWSER_THIRD", 4, 4);
    public static final SkipType MARKETING_CAMPAIGN = new SkipType("MARKETING_CAMPAIGN", 5, 5);
    public static final SkipType BRAND_AD = new SkipType("BRAND_AD", 6, 6);
    public static final SkipType PROGRAMMATIC_AD = new SkipType("PROGRAMMATIC_AD", 7, 7);
    public static final SkipType COMBINATION_ACT = new SkipType("COMBINATION_ACT", 8, 8);

    private static final /* synthetic */ SkipType[] $values() {
        return new SkipType[]{SHORTS, H5, NATIVE, H5_BROWSER_OFFICIAL, H5_BROWSER_THIRD, MARKETING_CAMPAIGN, BRAND_AD, PROGRAMMATIC_AD, COMBINATION_ACT};
    }

    static {
        SkipType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private SkipType(String str, int i10, int i11) {
        this.type = i11;
    }

    @NotNull
    public static a<SkipType> getEntries() {
        return $ENTRIES;
    }

    public static SkipType valueOf(String str) {
        return (SkipType) Enum.valueOf(SkipType.class, str);
    }

    public static SkipType[] values() {
        return (SkipType[]) $VALUES.clone();
    }

    public final int getType() {
        return this.type;
    }
}
