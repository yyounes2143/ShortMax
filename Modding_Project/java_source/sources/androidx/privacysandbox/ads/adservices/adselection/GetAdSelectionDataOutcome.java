package androidx.privacysandbox.ads.adservices.adselection;

import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetAdSelectionDataOutcome.kt */
@ExperimentalFeatures.Ext10OptIn
@Metadata
/* loaded from: classes2.dex */
public final class GetAdSelectionDataOutcome {
    @Nullable
    private final byte[] adSelectionData;
    private final long adSelectionId;

    public GetAdSelectionDataOutcome(long j10) {
        this(j10, null, 2, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetAdSelectionDataOutcome)) {
            return false;
        }
        GetAdSelectionDataOutcome getAdSelectionDataOutcome = (GetAdSelectionDataOutcome) obj;
        if (this.adSelectionId == getAdSelectionDataOutcome.adSelectionId && Arrays.equals(this.adSelectionData, getAdSelectionDataOutcome.adSelectionData)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final byte[] getAdSelectionData() {
        return this.adSelectionData;
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public int hashCode() {
        int i10;
        int hashCode = Long.hashCode(this.adSelectionId) * 31;
        byte[] bArr = this.adSelectionData;
        if (bArr != null) {
            i10 = bArr.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @NotNull
    public String toString() {
        return "GetAdSelectionDataOutcome: adSelectionId=" + this.adSelectionId + ", adSelectionData=" + this.adSelectionData;
    }

    public GetAdSelectionDataOutcome(long j10, @Nullable byte[] bArr) {
        this.adSelectionId = j10;
        this.adSelectionData = bArr;
    }

    public /* synthetic */ GetAdSelectionDataOutcome(long j10, byte[] bArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, (i10 & 2) != 0 ? null : bArr);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @androidx.annotation.RequiresExtension.Container({@androidx.annotation.RequiresExtension(extension = com.ss.ttvideoengine.TTVideoEngineInterface.PLAYER_TIME_BASE, version = 10), @androidx.annotation.RequiresExtension(extension = 31, version = 10)})
    @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GetAdSelectionDataOutcome(@org.jetbrains.annotations.NotNull android.adservices.adselection.GetAdSelectionDataOutcome r3) {
        /*
            r2 = this;
            java.lang.String r0 = "response"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            long r0 = androidx.privacysandbox.ads.adservices.adselection.d0.a(r3)
            byte[] r3 = androidx.privacysandbox.ads.adservices.adselection.e0.a(r3)
            r2.<init>(r0, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataOutcome.<init>(android.adservices.adselection.GetAdSelectionDataOutcome):void");
    }
}
