package io.bidmachine;

import io.bidmachine.rendering.model.PrivacySheetParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PrivacySheetData.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PrivacySheetData {
    @NotNull
    private final LabelData labelData;
    @NotNull
    private final PrivacySheetParams privacySheetParams;

    public PrivacySheetData(@NotNull LabelData labelData, @NotNull PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(labelData, "labelData");
        Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
        this.labelData = labelData;
        this.privacySheetParams = privacySheetParams;
    }

    public static /* synthetic */ PrivacySheetData copy$default(PrivacySheetData privacySheetData, LabelData labelData, PrivacySheetParams privacySheetParams, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            labelData = privacySheetData.labelData;
        }
        if ((i10 & 2) != 0) {
            privacySheetParams = privacySheetData.privacySheetParams;
        }
        return privacySheetData.copy(labelData, privacySheetParams);
    }

    @NotNull
    public final LabelData component1() {
        return this.labelData;
    }

    @NotNull
    public final PrivacySheetParams component2() {
        return this.privacySheetParams;
    }

    @NotNull
    public final PrivacySheetData copy(@NotNull LabelData labelData, @NotNull PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(labelData, "labelData");
        Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
        return new PrivacySheetData(labelData, privacySheetParams);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrivacySheetData)) {
            return false;
        }
        PrivacySheetData privacySheetData = (PrivacySheetData) obj;
        if (Intrinsics.areEqual(this.labelData, privacySheetData.labelData) && Intrinsics.areEqual(this.privacySheetParams, privacySheetData.privacySheetParams)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final LabelData getLabelData() {
        return this.labelData;
    }

    @NotNull
    public final PrivacySheetParams getPrivacySheetParams() {
        return this.privacySheetParams;
    }

    public int hashCode() {
        return (this.labelData.hashCode() * 31) + this.privacySheetParams.hashCode();
    }

    @NotNull
    public String toString() {
        return "PrivacySheetData(labelData=" + this.labelData + ", privacySheetParams=" + this.privacySheetParams + ')';
    }
}
