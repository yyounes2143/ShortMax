package ai.turbolink.sdk.campaign.properties;

import ai.turbolink.sdk.deeplink.LinkDataProperties;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ListenerRedirectProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class RewardInfoProperties {
    @Nullable
    private List<LinkDataProperties> kvData;
    @NotNull
    private String title = "";

    @NotNull
    public final String geTitle() {
        return this.title;
    }

    @Nullable
    public final List<LinkDataProperties> getKvData() {
        return this.kvData;
    }

    @NotNull
    public final RewardInfoProperties setKvData(@NotNull List<LinkDataProperties> kvData) {
        Intrinsics.checkNotNullParameter(kvData, "kvData");
        this.kvData = kvData;
        return this;
    }

    @NotNull
    public final RewardInfoProperties setTitle(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        return this;
    }
}
