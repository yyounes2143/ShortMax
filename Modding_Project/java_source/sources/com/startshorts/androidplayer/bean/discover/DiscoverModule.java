package com.startshorts.androidplayer.bean.discover;

import fk.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverModule.kt */
@Metadata
/* loaded from: classes6.dex */
public class DiscoverModule {
    public static final int PROPAGANDA_PATTERN_1 = 1;
    public static final int PROPAGANDA_PATTERN_2 = 2;
    public static final int PROPAGANDA_PATTERN_3 = 3;
    public static final int PROPAGANDA_PATTERN_4 = 4;
    public static final int STATUS_CLOSE = 2;
    public static final int STATUS_OPEN = 1;
    public static final int STYLE_ACT_BANNER = 13;
    public static final int STYLE_BANNER = 4;
    public static final int STYLE_BANNER_MIDDLE = -33;
    public static final int STYLE_BANNER_RECT = -31;
    public static final int STYLE_BANNER_SMALL = -30;
    public static final int STYLE_CATEGORY_FILTER = 11;
    public static final int STYLE_CIRCLE_PICTURE = 3;
    public static final int STYLE_COLUMN_2_WATERFALL = 8;
    public static final int STYLE_COLUMN_2_WATERFALL_RANK = -8;
    public static final int STYLE_COLUMN_2_WATERFALL_RELATED_SHORTS = -9;
    public static final int STYLE_COLUMN_2_WATERFALL_TAG_LIST = -10;
    public static final int STYLE_COLUMN_3_WATERFALL = 9;
    public static final int STYLE_COMING_SOON = 7;
    public static final int STYLE_EMPTY_SPACE = -100;
    public static final int STYLE_HORIZONTAL_IMAGE_ICON = 5;
    public static final int STYLE_HORIZONTAL_IMAGE_VIDEO_PREVIEW = 14;
    public static final int STYLE_HORIZONTAL_IMAGE_VIDEO_PREVIEW_ITEM = -32;
    public static final int STYLE_LIMITED_TIME_DISCOUNT = 12;
    public static final int STYLE_LOW_SKU_TEMPLATE_NOTIFICATION = -22;
    public static final int STYLE_MAIN_1_ROW_2_COLUMN_X = 10;
    public static final int STYLE_MAIN_1_ROW_2_COLUMN_X_MAIN_PART = -23;
    public static final int STYLE_MAIN_1_ROW_2_COLUMN_X_ROW_PART = -24;
    public static final int STYLE_PICTURE_TEXT = 2;
    public static final int STYLE_PICTURE_TEXT_ITEM = -20;
    public static final int STYLE_RANKING_LIST_HORIZONTAL_IMAGE = 6;
    public static final int STYLE_RANKING_MUL_TAG = 15;
    public static final int STYLE_RECTANGLE_PICTURE = 1;
    public static final int STYLE_TIME_COUNT_TITLE_MORE = -13;
    public static final int STYLE_TITLE_MORE = -11;
    public static final int STYLE_TITLE_MORE_WITH_ICON = -12;
    @Nullable
    private String bannerId;
    private int bottomMargin;
    @Nullable
    private List<PlayListDiscoverCategory> categoryConfigItemVOList;
    @Nullable
    private HashMap<String, Integer> categoryTabPosMap;
    private int categoryTabSelectedPos;
    @Nullable
    private List<DiscoverCategory> categoryVOList;
    @Nullable
    private final List<DiscoverResource> contentResponseList;
    @Nullable
    private Boolean disableBannerTitle;
    private boolean isShowMore;
    @Nullable
    private List<TagListInfo> labelRankingList;
    @Nullable
    private List<TagRelatedShorts> labelRelatedShortPlayRankingList;
    private int moduleEndPosition;
    private int moduleStartPosition;
    private int position;
    private int propagandaPattern;
    @Nullable
    private List<DiscoverRanking> rankingNameList;
    @Nullable
    private List<PlayListDiscoverRanking> rankingResponseList;
    @Nullable
    private Integer recommendId;
    private int ruleCode;
    @Nullable
    private List<DiscoverShorts> shortPlayResponseList;
    @Nullable
    private DiscoverShorts shorts;
    private int showNum;
    @Nullable
    private Integer sort;
    @Nullable
    private Integer status;
    private int style;
    private int subTagId;
    @NotNull
    private String title;
    private int topMargin;
    @Nullable
    private String upack;
    @Nullable
    private Long validEndTime;
    @Nullable
    private Long validStartTime;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final List<Integer> STYLE_BANNER_GROUP = CollectionsKt.q(-31, -30, 4, -33);

    /* compiled from: DiscoverModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<Integer> getSTYLE_BANNER_GROUP() {
            return DiscoverModule.STYLE_BANNER_GROUP;
        }

        private Companion() {
        }
    }

    public DiscoverModule(int i10, @NotNull String title, @Nullable String str, @Nullable List<DiscoverShorts> list, boolean z10, int i11, @Nullable List<DiscoverCategory> list2, @Nullable List<PlayListDiscoverCategory> list3, @Nullable List<DiscoverRanking> list4, @Nullable List<PlayListDiscoverRanking> list5, @Nullable List<TagListInfo> list6, @Nullable List<TagRelatedShorts> list7, int i12, @Nullable Long l10, @Nullable Long l11, int i13, @Nullable Integer num, @Nullable List<DiscoverResource> list8, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, int i14, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.style = i10;
        this.title = title;
        this.bannerId = str;
        this.shortPlayResponseList = list;
        this.isShowMore = z10;
        this.ruleCode = i11;
        this.categoryVOList = list2;
        this.categoryConfigItemVOList = list3;
        this.rankingNameList = list4;
        this.rankingResponseList = list5;
        this.labelRankingList = list6;
        this.labelRelatedShortPlayRankingList = list7;
        this.propagandaPattern = i12;
        this.validStartTime = l10;
        this.validEndTime = l11;
        this.showNum = i13;
        this.recommendId = num;
        this.contentResponseList = list8;
        this.status = num2;
        this.sort = num3;
        this.upack = str2;
        this.subTagId = i14;
        this.disableBannerTitle = bool;
        this.position = -1;
        this.moduleStartPosition = -1;
        this.moduleEndPosition = -1;
        this.bottomMargin = z.f51786a.b();
    }

    @NotNull
    public final String formatTitleForEvent() {
        return "discover_" + getBannerId() + '_' + getTitle();
    }

    @Nullable
    public String getBannerId() {
        return this.bannerId;
    }

    public final int getBottomMargin() {
        return this.bottomMargin;
    }

    @Nullable
    public final List<PlayListDiscoverCategory> getCategoryConfigItemVOList() {
        return this.categoryConfigItemVOList;
    }

    @Nullable
    public final HashMap<String, Integer> getCategoryTabPosMap() {
        return this.categoryTabPosMap;
    }

    public final int getCategoryTabSelectedPos() {
        return this.categoryTabSelectedPos;
    }

    @Nullable
    public final List<DiscoverCategory> getCategoryVOList() {
        return this.categoryVOList;
    }

    @Nullable
    public final List<DiscoverResource> getContentResponseList() {
        return this.contentResponseList;
    }

    @Nullable
    public final Boolean getDisableBannerTitle() {
        return this.disableBannerTitle;
    }

    @Nullable
    public final List<TagListInfo> getLabelRankingList() {
        return this.labelRankingList;
    }

    @Nullable
    public final List<TagRelatedShorts> getLabelRelatedShortPlayRankingList() {
        return this.labelRelatedShortPlayRankingList;
    }

    public final int getModuleEndPosition() {
        return this.moduleEndPosition;
    }

    public final int getModuleStartPosition() {
        return this.moduleStartPosition;
    }

    public final int getPosition() {
        return this.position;
    }

    public final int getPropagandaPattern() {
        return this.propagandaPattern;
    }

    @Nullable
    public final List<DiscoverRanking> getRankingNameList() {
        return this.rankingNameList;
    }

    @Nullable
    public final List<PlayListDiscoverRanking> getRankingResponseList() {
        return this.rankingResponseList;
    }

    @Nullable
    public final Integer getRecommendId() {
        return this.recommendId;
    }

    public final int getRuleCode() {
        return this.ruleCode;
    }

    @Nullable
    public final List<DiscoverShorts> getShortPlayResponseList() {
        return this.shortPlayResponseList;
    }

    @Nullable
    public final DiscoverShorts getShorts() {
        return this.shorts;
    }

    public final int getShowNum() {
        return this.showNum;
    }

    @Nullable
    public final Integer getSort() {
        return this.sort;
    }

    @Nullable
    public final Integer getStatus() {
        return this.status;
    }

    public final int getStyle() {
        return this.style;
    }

    public final int getSubTagId() {
        return this.subTagId;
    }

    @NotNull
    public String getTitle() {
        return this.title;
    }

    public final int getTopMargin() {
        return this.topMargin;
    }

    @Nullable
    public final String getUpack() {
        return this.upack;
    }

    @Nullable
    public final Long getValidEndTime() {
        return this.validEndTime;
    }

    @Nullable
    public final Long getValidStartTime() {
        return this.validStartTime;
    }

    public boolean isShowMore() {
        return this.isShowMore;
    }

    public void setBannerId(@Nullable String str) {
        this.bannerId = str;
    }

    public final void setBottomMargin(int i10) {
        this.bottomMargin = i10;
    }

    public final void setCategoryConfigItemVOList(@Nullable List<PlayListDiscoverCategory> list) {
        this.categoryConfigItemVOList = list;
    }

    public final void setCategoryTabPosMap(@Nullable HashMap<String, Integer> hashMap) {
        this.categoryTabPosMap = hashMap;
    }

    public final void setCategoryTabSelectedPos(int i10) {
        this.categoryTabSelectedPos = i10;
    }

    public final void setCategoryVOList(@Nullable List<DiscoverCategory> list) {
        this.categoryVOList = list;
    }

    public final void setDisableBannerTitle(@Nullable Boolean bool) {
        this.disableBannerTitle = bool;
    }

    public final void setLabelRankingList(@Nullable List<TagListInfo> list) {
        this.labelRankingList = list;
    }

    public final void setLabelRelatedShortPlayRankingList(@Nullable List<TagRelatedShorts> list) {
        this.labelRelatedShortPlayRankingList = list;
    }

    public final void setModuleEndPosition(int i10) {
        this.moduleEndPosition = i10;
    }

    public final void setModuleStartPosition(int i10) {
        this.moduleStartPosition = i10;
    }

    public final void setPosition(int i10) {
        this.position = i10;
    }

    public final void setPropagandaPattern(int i10) {
        this.propagandaPattern = i10;
    }

    public final void setRankingNameList(@Nullable List<DiscoverRanking> list) {
        this.rankingNameList = list;
    }

    public final void setRankingResponseList(@Nullable List<PlayListDiscoverRanking> list) {
        this.rankingResponseList = list;
    }

    public final void setRecommendId(@Nullable Integer num) {
        this.recommendId = num;
    }

    public final void setRuleCode(int i10) {
        this.ruleCode = i10;
    }

    public final void setShortPlayResponseList(@Nullable List<DiscoverShorts> list) {
        this.shortPlayResponseList = list;
    }

    public final void setShorts(@Nullable DiscoverShorts discoverShorts) {
        this.shorts = discoverShorts;
    }

    public void setShowMore(boolean z10) {
        this.isShowMore = z10;
    }

    public final void setShowNum(int i10) {
        this.showNum = i10;
    }

    public final void setSort(@Nullable Integer num) {
        this.sort = num;
    }

    public final void setStatus(@Nullable Integer num) {
        this.status = num;
    }

    public final void setStyle(int i10) {
        this.style = i10;
    }

    public final void setSubTagId(int i10) {
        this.subTagId = i10;
    }

    public void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setTopMargin(int i10) {
        this.topMargin = i10;
    }

    public final void setUpack(@Nullable String str) {
        this.upack = str;
    }

    public final void setValidEndTime(@Nullable Long l10) {
        this.validEndTime = l10;
    }

    public final void setValidStartTime(@Nullable Long l10) {
        this.validStartTime = l10;
    }

    @NotNull
    public String toString() {
        return "DiscoverModule(style=" + this.style + ", title='" + getTitle() + "', bannerId=" + getBannerId() + ", shortPlayResponseList=" + this.shortPlayResponseList + ", isShowMore=" + isShowMore() + ", ruleCode=" + this.ruleCode + ", categoryVOList=" + this.categoryVOList + ", categoryConfigItemVOList=" + this.categoryConfigItemVOList + ", validStartTime=" + this.validStartTime + ", validEndTime=" + this.validEndTime + ", propagandaPattern=" + this.propagandaPattern + ", showNum=" + this.showNum + ", recommendId=" + this.recommendId + ", contentResponseList=" + this.contentResponseList + ", position=" + this.position + ", moduleStartPosition=" + this.moduleStartPosition + ", moduleEndPosition=" + this.moduleEndPosition + ", shorts=" + this.shorts + ", topMargin=" + this.topMargin + ", bottomMargin=" + this.bottomMargin + ", categoryTabSelectedPos=" + this.categoryTabSelectedPos + ')';
    }

    public final void update(@NotNull DiscoverModule module) {
        List<DiscoverShorts> arrayList;
        Intrinsics.checkNotNullParameter(module, "module");
        this.style = module.style;
        setTitle(module.getTitle());
        setBannerId(module.getBannerId());
        List<DiscoverShorts> list = this.shortPlayResponseList;
        if (list != null) {
            list.clear();
            List<DiscoverShorts> list2 = module.shortPlayResponseList;
            if (list2 != null) {
                arrayList = list2;
            } else {
                arrayList = new ArrayList<>();
            }
            list.addAll(arrayList);
        }
        setShowMore(module.isShowMore());
        this.ruleCode = module.ruleCode;
        this.categoryVOList = module.categoryVOList;
        this.categoryConfigItemVOList = module.categoryConfigItemVOList;
        this.validStartTime = module.validStartTime;
        this.validEndTime = module.validEndTime;
        this.propagandaPattern = module.propagandaPattern;
        this.showNum = module.showNum;
        this.recommendId = module.recommendId;
        this.upack = module.upack;
        this.disableBannerTitle = module.disableBannerTitle;
    }

    public /* synthetic */ DiscoverModule(int i10, String str, String str2, List list, boolean z10, int i11, List list2, List list3, List list4, List list5, List list6, List list7, int i12, Long l10, Long l11, int i13, Integer num, List list8, Integer num2, Integer num3, String str3, int i14, Boolean bool, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, (i15 & 4) != 0 ? null : str2, (i15 & 8) != 0 ? null : list, (i15 & 16) != 0 ? false : z10, (i15 & 32) != 0 ? -1 : i11, (i15 & 64) != 0 ? null : list2, (i15 & 128) != 0 ? null : list3, (i15 & 256) != 0 ? null : list4, (i15 & 512) != 0 ? null : list5, (i15 & 1024) != 0 ? null : list6, (i15 & 2048) != 0 ? null : list7, (i15 & 4096) != 0 ? 1 : i12, (i15 & 8192) != 0 ? null : l10, (i15 & 16384) != 0 ? null : l11, (32768 & i15) != 0 ? 0 : i13, (65536 & i15) != 0 ? null : num, (131072 & i15) != 0 ? null : list8, (262144 & i15) != 0 ? null : num2, (524288 & i15) != 0 ? null : num3, (1048576 & i15) != 0 ? null : str3, (2097152 & i15) != 0 ? -1 : i14, (i15 & 4194304) != 0 ? null : bool);
    }
}
