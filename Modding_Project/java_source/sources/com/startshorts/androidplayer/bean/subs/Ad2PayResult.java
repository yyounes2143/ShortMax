package com.startshorts.androidplayer.bean.subs;

import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Ad2PayResult.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAd2PayResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ad2PayResult.kt\ncom/startshorts/androidplayer/bean/subs/Ad2PayResult\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,36:1\n1755#2,3:37\n*S KotlinDebug\n*F\n+ 1 Ad2PayResult.kt\ncom/startshorts/androidplayer/bean/subs/Ad2PayResult\n*L\n12#1:37,3\n*E\n"})
/* loaded from: classes6.dex */
public final class Ad2PayResult {
    @Nullable
    private final List<Ad2PayPopupConfig> popupConfig;

    public Ad2PayResult(@Nullable List<Ad2PayPopupConfig> list) {
        this.popupConfig = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Ad2PayResult copy$default(Ad2PayResult ad2PayResult, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = ad2PayResult.popupConfig;
        }
        return ad2PayResult.copy(list);
    }

    @Nullable
    public final List<Ad2PayPopupConfig> component1() {
        return this.popupConfig;
    }

    @NotNull
    public final Ad2PayResult copy(@Nullable List<Ad2PayPopupConfig> list) {
        return new Ad2PayResult(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Ad2PayResult) && Intrinsics.areEqual(this.popupConfig, ((Ad2PayResult) obj).popupConfig)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<Ad2PayPopupConfig> getPopupConfig() {
        return this.popupConfig;
    }

    public int hashCode() {
        List<Ad2PayPopupConfig> list = this.popupConfig;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public final boolean isUseful() {
        List<Ad2PayPopupConfig> list = this.popupConfig;
        if (list == null) {
            return false;
        }
        List<Ad2PayPopupConfig> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        for (Ad2PayPopupConfig ad2PayPopupConfig : list2) {
            if (Intrinsics.areEqual(ad2PayPopupConfig.getScene(), "watchDrama") || Intrinsics.areEqual(ad2PayPopupConfig.getScene(), "watchDramaGroupB") || Intrinsics.areEqual(ad2PayPopupConfig.getScene(), "taskCenter")) {
                List<Ad2PayConfig> config = ad2PayPopupConfig.getConfig();
                if (config != null && !config.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    @NotNull
    public String toString() {
        return "Ad2PayResult(popupConfig=" + this.popupConfig + ')';
    }
}
