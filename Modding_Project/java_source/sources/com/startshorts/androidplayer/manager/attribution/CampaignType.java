package com.startshorts.androidplayer.manager.attribution;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: CampaignType.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CampaignType {
    private static final /* synthetic */ ss.a $ENTRIES;
    private static final /* synthetic */ CampaignType[] $VALUES;
    @NotNull
    private final String value;
    public static final CampaignType UPLOAD_CAMPAIGN_INFO_RESULT = new CampaignType("UPLOAD_CAMPAIGN_INFO_RESULT", 0, "upload_campaign_info_result");
    public static final CampaignType CLIPBOARD = new CampaignType("CLIPBOARD", 1, "clipboard");
    public static final CampaignType GP_INSTALL_REFERRER = new CampaignType("GP_INSTALL_REFERRER", 2, "gp_install_referrer");
    public static final CampaignType FB_INSTALL_REFERRER = new CampaignType("FB_INSTALL_REFERRER", 3, "fb_install_referrer");
    public static final CampaignType META_INSTALL_REFERRER = new CampaignType("META_INSTALL_REFERRER", 4, "meta_install_referrer");
    public static final CampaignType AF_CONVERSION_DATA = new CampaignType("AF_CONVERSION_DATA", 5, "af_conversion_data");
    public static final CampaignType AJ_CONVERSION_DATA = new CampaignType("AJ_CONVERSION_DATA", 6, "aj_conversion_data");
    public static final CampaignType FB_DEEPLINK = new CampaignType("FB_DEEPLINK", 7, "fb_deeplink");
    public static final CampaignType GA_DEEPLINK = new CampaignType("GA_DEEPLINK", 8, "ga_deeplink");
    public static final CampaignType PRE_INSTALL = new CampaignType("PRE_INSTALL", 9, "pre_install");

    private static final /* synthetic */ CampaignType[] $values() {
        return new CampaignType[]{UPLOAD_CAMPAIGN_INFO_RESULT, CLIPBOARD, GP_INSTALL_REFERRER, FB_INSTALL_REFERRER, META_INSTALL_REFERRER, AF_CONVERSION_DATA, AJ_CONVERSION_DATA, FB_DEEPLINK, GA_DEEPLINK, PRE_INSTALL};
    }

    static {
        CampaignType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private CampaignType(String str, int i10, String str2) {
        this.value = str2;
    }

    @NotNull
    public static ss.a<CampaignType> getEntries() {
        return $ENTRIES;
    }

    public static CampaignType valueOf(String str) {
        return (CampaignType) Enum.valueOf(CampaignType.class, str);
    }

    public static CampaignType[] values() {
        return (CampaignType[]) $VALUES.clone();
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
