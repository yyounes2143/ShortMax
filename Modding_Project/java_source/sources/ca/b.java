package ca;

import com.hades.aar.admanager.core.AdEventState;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public String f3349a;

    /* renamed from: b  reason: collision with root package name */
    public AdEventState f3350b;

    @NotNull
    public final String a() {
        String str = this.f3349a;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID);
        return null;
    }

    @NotNull
    public final AdEventState b() {
        AdEventState adEventState = this.f3350b;
        if (adEventState != null) {
            return adEventState;
        }
        Intrinsics.throwUninitializedPropertyAccessException("state");
        return null;
    }

    public final void c(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f3349a = str;
    }

    public final void d(@NotNull AdEventState adEventState) {
        Intrinsics.checkNotNullParameter(adEventState, "<set-?>");
        this.f3350b = adEventState;
    }
}
