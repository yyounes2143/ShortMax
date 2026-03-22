package ai.turbolink.sdk.campaign.properties;

import ai.turbolink.sdk.deeplink.LinkDataProperties;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListenerRewardsProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class ListenerRewardsProperties {
    private int createdAt;
    @NotNull
    private String hashId = "";
    @NotNull
    private List<LinkDataProperties> kvData = new ArrayList();

    public final int getCreateAt() {
        return this.createdAt;
    }

    @NotNull
    public final String getHashId() {
        return this.hashId;
    }

    @NotNull
    public final List<LinkDataProperties> getKVData() {
        return this.kvData;
    }

    @NotNull
    public final ListenerRewardsProperties setCreateAt(int i10) {
        this.createdAt = i10;
        return this;
    }

    @NotNull
    public final ListenerRewardsProperties setHashId(@NotNull String hashId) {
        Intrinsics.checkNotNullParameter(hashId, "hashId");
        this.hashId = hashId;
        return this;
    }

    @NotNull
    public final ListenerRewardsProperties setKVData(@NotNull List<LinkDataProperties> kvData) {
        Intrinsics.checkNotNullParameter(kvData, "kvData");
        this.kvData = kvData;
        return this;
    }
}
