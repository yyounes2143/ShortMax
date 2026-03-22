package com.startshorts.androidplayer.bean.discover;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ModuleInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ModuleInfo {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final String moduleId;
    @NotNull
    private final String moduleName;
    @Nullable
    private final Integer moduleStyle;
    @NotNull
    private final String moduleType;
    private int positionId;
    @Nullable
    private final DiscoverRanking ranking;
    @Nullable
    private final Integer recommendId;
    @Nullable
    private String shortPlayCode;
    @Nullable
    private Integer sort;
    @Nullable
    private Integer status;
    @Nullable
    private final DiscoverTab tab;

    /* compiled from: ModuleInfo.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ModuleInfo create$default(Companion companion, String str, String str2, String str3, int i10, DiscoverRanking discoverRanking, DiscoverTab discoverTab, String str4, Integer num, Integer num2, int i11, Object obj) {
            String str5;
            String str6;
            String str7;
            int i12;
            DiscoverTab discoverTab2;
            String str8;
            Integer num3;
            Integer num4;
            if ((i11 & 1) != 0) {
                str5 = null;
            } else {
                str5 = str;
            }
            if ((i11 & 2) != 0) {
                str6 = null;
            } else {
                str6 = str2;
            }
            if ((i11 & 4) != 0) {
                str7 = null;
            } else {
                str7 = str3;
            }
            if ((i11 & 8) != 0) {
                i12 = -1;
            } else {
                i12 = i10;
            }
            if ((i11 & 32) != 0) {
                discoverTab2 = null;
            } else {
                discoverTab2 = discoverTab;
            }
            if ((i11 & 64) != 0) {
                str8 = null;
            } else {
                str8 = str4;
            }
            if ((i11 & 128) != 0) {
                num3 = null;
            } else {
                num3 = num;
            }
            if ((i11 & 256) != 0) {
                num4 = null;
            } else {
                num4 = num2;
            }
            return companion.create(str5, str6, str7, i12, discoverRanking, discoverTab2, str8, num3, num4);
        }

        @NotNull
        public final ModuleInfo create(@Nullable String str, @Nullable String str2, @Nullable String str3, int i10, @Nullable DiscoverRanking discoverRanking, @Nullable DiscoverTab discoverTab, @Nullable String str4, @Nullable Integer num, @Nullable Integer num2) {
            return new ModuleInfo(str2, str == null ? "" : str, str3 == null ? "" : str3, i10, null, str4, null, discoverTab, discoverRanking, num2, num);
        }

        private Companion() {
        }

        @NotNull
        public final ModuleInfo create(@Nullable PlayListDiscoverRanking playListDiscoverRanking, @Nullable String str) {
            return new ModuleInfo(playListDiscoverRanking != null ? playListDiscoverRanking.getBannerId() : null, playListDiscoverRanking == null ? "" : "ranking_list_tag", "", -1, null, str, null, null, new DiscoverRanking(playListDiscoverRanking != null ? playListDiscoverRanking.getRankingId() : null, playListDiscoverRanking != null ? playListDiscoverRanking.getRankingName() : null), null, null, 1536, null);
        }
    }

    public ModuleInfo(@Nullable String str, @NotNull String moduleType, @NotNull String moduleName, int i10, @Nullable Integer num, @Nullable String str2, @Nullable Integer num2, @Nullable DiscoverTab discoverTab, @Nullable DiscoverRanking discoverRanking, @Nullable Integer num3, @Nullable Integer num4) {
        Intrinsics.checkNotNullParameter(moduleType, "moduleType");
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        this.moduleId = str;
        this.moduleType = moduleType;
        this.moduleName = moduleName;
        this.positionId = i10;
        this.moduleStyle = num;
        this.shortPlayCode = str2;
        this.recommendId = num2;
        this.tab = discoverTab;
        this.ranking = discoverRanking;
        this.status = num3;
        this.sort = num4;
    }

    public static /* synthetic */ ModuleInfo copy$default(ModuleInfo moduleInfo, String str, String str2, String str3, int i10, Integer num, String str4, Integer num2, DiscoverTab discoverTab, DiscoverRanking discoverRanking, Integer num3, Integer num4, int i11, Object obj) {
        String str5;
        String str6;
        String str7;
        int i12;
        Integer num5;
        String str8;
        Integer num6;
        DiscoverTab discoverTab2;
        DiscoverRanking discoverRanking2;
        Integer num7;
        Integer num8;
        if ((i11 & 1) != 0) {
            str5 = moduleInfo.moduleId;
        } else {
            str5 = str;
        }
        if ((i11 & 2) != 0) {
            str6 = moduleInfo.moduleType;
        } else {
            str6 = str2;
        }
        if ((i11 & 4) != 0) {
            str7 = moduleInfo.moduleName;
        } else {
            str7 = str3;
        }
        if ((i11 & 8) != 0) {
            i12 = moduleInfo.positionId;
        } else {
            i12 = i10;
        }
        if ((i11 & 16) != 0) {
            num5 = moduleInfo.moduleStyle;
        } else {
            num5 = num;
        }
        if ((i11 & 32) != 0) {
            str8 = moduleInfo.shortPlayCode;
        } else {
            str8 = str4;
        }
        if ((i11 & 64) != 0) {
            num6 = moduleInfo.recommendId;
        } else {
            num6 = num2;
        }
        if ((i11 & 128) != 0) {
            discoverTab2 = moduleInfo.tab;
        } else {
            discoverTab2 = discoverTab;
        }
        if ((i11 & 256) != 0) {
            discoverRanking2 = moduleInfo.ranking;
        } else {
            discoverRanking2 = discoverRanking;
        }
        if ((i11 & 512) != 0) {
            num7 = moduleInfo.status;
        } else {
            num7 = num3;
        }
        if ((i11 & 1024) != 0) {
            num8 = moduleInfo.sort;
        } else {
            num8 = num4;
        }
        return moduleInfo.copy(str5, str6, str7, i12, num5, str8, num6, discoverTab2, discoverRanking2, num7, num8);
    }

    @Nullable
    public final String component1() {
        return this.moduleId;
    }

    @Nullable
    public final Integer component10() {
        return this.status;
    }

    @Nullable
    public final Integer component11() {
        return this.sort;
    }

    @NotNull
    public final String component2() {
        return this.moduleType;
    }

    @NotNull
    public final String component3() {
        return this.moduleName;
    }

    public final int component4() {
        return this.positionId;
    }

    @Nullable
    public final Integer component5() {
        return this.moduleStyle;
    }

    @Nullable
    public final String component6() {
        return this.shortPlayCode;
    }

    @Nullable
    public final Integer component7() {
        return this.recommendId;
    }

    @Nullable
    public final DiscoverTab component8() {
        return this.tab;
    }

    @Nullable
    public final DiscoverRanking component9() {
        return this.ranking;
    }

    @NotNull
    public final ModuleInfo copy(@Nullable String str, @NotNull String moduleType, @NotNull String moduleName, int i10, @Nullable Integer num, @Nullable String str2, @Nullable Integer num2, @Nullable DiscoverTab discoverTab, @Nullable DiscoverRanking discoverRanking, @Nullable Integer num3, @Nullable Integer num4) {
        Intrinsics.checkNotNullParameter(moduleType, "moduleType");
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        return new ModuleInfo(str, moduleType, moduleName, i10, num, str2, num2, discoverTab, discoverRanking, num3, num4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ModuleInfo)) {
            return false;
        }
        ModuleInfo moduleInfo = (ModuleInfo) obj;
        if (Intrinsics.areEqual(this.moduleId, moduleInfo.moduleId) && Intrinsics.areEqual(this.moduleType, moduleInfo.moduleType) && Intrinsics.areEqual(this.moduleName, moduleInfo.moduleName) && this.positionId == moduleInfo.positionId && Intrinsics.areEqual(this.moduleStyle, moduleInfo.moduleStyle) && Intrinsics.areEqual(this.shortPlayCode, moduleInfo.shortPlayCode) && Intrinsics.areEqual(this.recommendId, moduleInfo.recommendId) && Intrinsics.areEqual(this.tab, moduleInfo.tab) && Intrinsics.areEqual(this.ranking, moduleInfo.ranking) && Intrinsics.areEqual(this.status, moduleInfo.status) && Intrinsics.areEqual(this.sort, moduleInfo.sort)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getModuleId() {
        return this.moduleId;
    }

    @NotNull
    public final String getModuleName() {
        return this.moduleName;
    }

    @Nullable
    public final Integer getModuleStyle() {
        return this.moduleStyle;
    }

    @NotNull
    public final String getModuleType() {
        return this.moduleType;
    }

    public final int getPositionId() {
        return this.positionId;
    }

    @Nullable
    public final DiscoverRanking getRanking() {
        return this.ranking;
    }

    @Nullable
    public final Integer getRecommendId() {
        return this.recommendId;
    }

    @Nullable
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    @Nullable
    public final Integer getSort() {
        return this.sort;
    }

    @Nullable
    public final Integer getStatus() {
        return this.status;
    }

    @Nullable
    public final DiscoverTab getTab() {
        return this.tab;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        String str = this.moduleId;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode8 = ((((((hashCode * 31) + this.moduleType.hashCode()) * 31) + this.moduleName.hashCode()) * 31) + Integer.hashCode(this.positionId)) * 31;
        Integer num = this.moduleStyle;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i11 = (hashCode8 + hashCode2) * 31;
        String str2 = this.shortPlayCode;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i12 = (i11 + hashCode3) * 31;
        Integer num2 = this.recommendId;
        if (num2 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = num2.hashCode();
        }
        int i13 = (i12 + hashCode4) * 31;
        DiscoverTab discoverTab = this.tab;
        if (discoverTab == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = discoverTab.hashCode();
        }
        int i14 = (i13 + hashCode5) * 31;
        DiscoverRanking discoverRanking = this.ranking;
        if (discoverRanking == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = discoverRanking.hashCode();
        }
        int i15 = (i14 + hashCode6) * 31;
        Integer num3 = this.status;
        if (num3 == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = num3.hashCode();
        }
        int i16 = (i15 + hashCode7) * 31;
        Integer num4 = this.sort;
        if (num4 != null) {
            i10 = num4.hashCode();
        }
        return i16 + i10;
    }

    public final void setPositionId(int i10) {
        this.positionId = i10;
    }

    public final void setShortPlayCode(@Nullable String str) {
        this.shortPlayCode = str;
    }

    public final void setSort(@Nullable Integer num) {
        this.sort = num;
    }

    public final void setStatus(@Nullable Integer num) {
        this.status = num;
    }

    @NotNull
    public String toString() {
        return "ModuleInfo(moduleId=" + this.moduleId + ", moduleType=" + this.moduleType + ", moduleName=" + this.moduleName + ", positionId=" + this.positionId + ", moduleStyle=" + this.moduleStyle + ", shortPlayCode=" + this.shortPlayCode + ", recommendId=" + this.recommendId + ", tab=" + this.tab + ", ranking=" + this.ranking + ", status=" + this.status + ", sort=" + this.sort + ')';
    }

    public /* synthetic */ ModuleInfo(String str, String str2, String str3, int i10, Integer num, String str4, Integer num2, DiscoverTab discoverTab, DiscoverRanking discoverRanking, Integer num3, Integer num4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, i10, (i11 & 16) != 0 ? null : num, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : num2, (i11 & 128) != 0 ? null : discoverTab, (i11 & 256) != 0 ? null : discoverRanking, (i11 & 512) != 0 ? null : num3, (i11 & 1024) != 0 ? null : num4);
    }
}
