package com.startshorts.androidplayer.bean.turbolink;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TurboLinkReportBean.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TurboLinkReportBean {
    @NotNull
    private final List<KeyValueParam> customData;
    @NotNull
    private final String event;

    public TurboLinkReportBean(@NotNull String event, @NotNull List<KeyValueParam> customData) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(customData, "customData");
        this.event = event;
        this.customData = customData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TurboLinkReportBean copy$default(TurboLinkReportBean turboLinkReportBean, String str, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = turboLinkReportBean.event;
        }
        if ((i10 & 2) != 0) {
            list = turboLinkReportBean.customData;
        }
        return turboLinkReportBean.copy(str, list);
    }

    @NotNull
    public final String component1() {
        return this.event;
    }

    @NotNull
    public final List<KeyValueParam> component2() {
        return this.customData;
    }

    @NotNull
    public final TurboLinkReportBean copy(@NotNull String event, @NotNull List<KeyValueParam> customData) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(customData, "customData");
        return new TurboLinkReportBean(event, customData);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TurboLinkReportBean)) {
            return false;
        }
        TurboLinkReportBean turboLinkReportBean = (TurboLinkReportBean) obj;
        if (Intrinsics.areEqual(this.event, turboLinkReportBean.event) && Intrinsics.areEqual(this.customData, turboLinkReportBean.customData)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<KeyValueParam> getCustomData() {
        return this.customData;
    }

    @NotNull
    public final String getEvent() {
        return this.event;
    }

    public int hashCode() {
        return (this.event.hashCode() * 31) + this.customData.hashCode();
    }

    @NotNull
    public String toString() {
        return "TurboLinkReportBean(event=" + this.event + ", customData=" + this.customData + ')';
    }
}
