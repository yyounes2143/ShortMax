package com.startshorts.androidplayer.manager.attribution.parser;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: CampaignParserPriority.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CampaignParserPriority {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ CampaignParserPriority[] $VALUES;
    private final int value;
    public static final CampaignParserPriority UPLOAD_CAMPAIGN_INFO_RESULT = new CampaignParserPriority("UPLOAD_CAMPAIGN_INFO_RESULT", 0, 1);
    public static final CampaignParserPriority CLIPBOARD = new CampaignParserPriority("CLIPBOARD", 1, 2);
    public static final CampaignParserPriority META_INSTALL_REFERRER = new CampaignParserPriority("META_INSTALL_REFERRER", 2, 3);
    public static final CampaignParserPriority GA_DEEPLINK = new CampaignParserPriority("GA_DEEPLINK", 3, 4);
    public static final CampaignParserPriority FB_DEEPLINK = new CampaignParserPriority("FB_DEEPLINK", 4, 5);
    public static final CampaignParserPriority FB_INSTALL_REFERRER = new CampaignParserPriority("FB_INSTALL_REFERRER", 5, 6);
    public static final CampaignParserPriority GP_INSTALL_REFERRER = new CampaignParserPriority("GP_INSTALL_REFERRER", 6, 7);
    public static final CampaignParserPriority AF_CONVERSION_DATA = new CampaignParserPriority("AF_CONVERSION_DATA", 7, 8);
    public static final CampaignParserPriority AJ_CONVERSION_DATA = new CampaignParserPriority("AJ_CONVERSION_DATA", 8, 9);

    private static final /* synthetic */ CampaignParserPriority[] $values() {
        return new CampaignParserPriority[]{UPLOAD_CAMPAIGN_INFO_RESULT, CLIPBOARD, META_INSTALL_REFERRER, GA_DEEPLINK, FB_DEEPLINK, FB_INSTALL_REFERRER, GP_INSTALL_REFERRER, AF_CONVERSION_DATA, AJ_CONVERSION_DATA};
    }

    static {
        CampaignParserPriority[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private CampaignParserPriority(String str, int i10, int i11) {
        this.value = i11;
    }

    @NotNull
    public static a<CampaignParserPriority> getEntries() {
        return $ENTRIES;
    }

    public static CampaignParserPriority valueOf(String str) {
        return (CampaignParserPriority) Enum.valueOf(CampaignParserPriority.class, str);
    }

    public static CampaignParserPriority[] values() {
        return (CampaignParserPriority[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }
}
