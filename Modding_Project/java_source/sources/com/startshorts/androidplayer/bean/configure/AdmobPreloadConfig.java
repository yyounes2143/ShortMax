package com.startshorts.androidplayer.bean.configure;

import com.startshorts.androidplayer.bean.ad.AdNewConfig;
import com.startshorts.androidplayer.bean.ad.AdScene;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.a;
/* compiled from: AdmobPreloadConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AdmobPreloadConfig {
    @NotNull
    public static final String APP_OPEN = "splash";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String INTERSTITIAL = "interupt";
    @NotNull
    public static final String REWARD = "reward";
    @Nullable
    private final List<String> adType;
    @Nullable
    private final Integer preloadNum;
    @Nullable

    /* renamed from: switch  reason: not valid java name */
    private final Integer f32switch;

    /* compiled from: AdmobPreloadConfig.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAdmobPreloadConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdmobPreloadConfig.kt\ncom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n1863#2,2:61\n*S KotlinDebug\n*F\n+ 1 AdmobPreloadConfig.kt\ncom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion\n*L\n34#1:61,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<AdScene> getAdScene(@Nullable List<String> list) {
            AdScene adScene;
            ArrayList arrayList = new ArrayList();
            if (list != null) {
                for (String str : list) {
                    int hashCode = str.hashCode();
                    if (hashCode != -934326481) {
                        if (hashCode != -895866265) {
                            if (hashCode == 570417885 && str.equals(AdmobPreloadConfig.INTERSTITIAL)) {
                                adScene = AdScene.INTERSTITIAL;
                            }
                            adScene = AdScene.NATIVE;
                        } else {
                            if (str.equals(AdmobPreloadConfig.APP_OPEN)) {
                                adScene = AdScene.APP_OPEN;
                            }
                            adScene = AdScene.NATIVE;
                        }
                    } else {
                        if (str.equals(AdmobPreloadConfig.REWARD)) {
                            adScene = AdScene.REWARD;
                        }
                        adScene = AdScene.NATIVE;
                    }
                    arrayList.add(adScene);
                }
            }
            return arrayList;
        }

        @Nullable
        public final AdmobPreloadConfig getValue() {
            AdNewConfig a10 = a.f68411a.a();
            if (a10 != null) {
                return a10.getAdmobPreloadConfig();
            }
            return null;
        }

        public final boolean isTypeAvailable(@NotNull String adScene, @Nullable List<String> list) {
            Intrinsics.checkNotNullParameter(adScene, "adScene");
            if (!Intrinsics.areEqual(adScene, AdScene.REWARD.getValue()) || list == null) {
                return false;
            }
            return list.contains(AdmobPreloadConfig.REWARD);
        }

        private Companion() {
        }
    }

    public AdmobPreloadConfig(@Nullable Integer num, @Nullable List<String> list, @Nullable Integer num2) {
        this.f32switch = num;
        this.adType = list;
        this.preloadNum = num2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AdmobPreloadConfig copy$default(AdmobPreloadConfig admobPreloadConfig, Integer num, List list, Integer num2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = admobPreloadConfig.f32switch;
        }
        if ((i10 & 2) != 0) {
            list = admobPreloadConfig.adType;
        }
        if ((i10 & 4) != 0) {
            num2 = admobPreloadConfig.preloadNum;
        }
        return admobPreloadConfig.copy(num, list, num2);
    }

    @Nullable
    public final Integer component1() {
        return this.f32switch;
    }

    @Nullable
    public final List<String> component2() {
        return this.adType;
    }

    @Nullable
    public final Integer component3() {
        return this.preloadNum;
    }

    @NotNull
    public final AdmobPreloadConfig copy(@Nullable Integer num, @Nullable List<String> list, @Nullable Integer num2) {
        return new AdmobPreloadConfig(num, list, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdmobPreloadConfig)) {
            return false;
        }
        AdmobPreloadConfig admobPreloadConfig = (AdmobPreloadConfig) obj;
        if (Intrinsics.areEqual(this.f32switch, admobPreloadConfig.f32switch) && Intrinsics.areEqual(this.adType, admobPreloadConfig.adType) && Intrinsics.areEqual(this.preloadNum, admobPreloadConfig.preloadNum)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<String> getAdType() {
        return this.adType;
    }

    @Nullable
    public final Integer getPreloadNum() {
        return this.preloadNum;
    }

    @Nullable
    public final Integer getSwitch() {
        return this.f32switch;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Integer num = this.f32switch;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        List<String> list = this.adType;
        if (list == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = list.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Integer num2 = this.preloadNum;
        if (num2 != null) {
            i10 = num2.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "AdmobPreloadConfig(switch=" + this.f32switch + ", adType=" + this.adType + ", preloadNum=" + this.preloadNum + ')';
    }

    public /* synthetic */ AdmobPreloadConfig(Integer num, List list, Integer num2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : num, list, (i10 & 4) != 0 ? 2 : num2);
    }
}
