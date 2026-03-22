package ai.turbolink.sdk.campaign.properties;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UserProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class UserProperties {
    @NotNull
    private String userId = "";
    @NotNull
    private String inviteCode = "";

    @NotNull
    public final String getInviteCode() {
        return this.inviteCode;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    @NotNull
    public final UserProperties setInviteCode(@NotNull String inviteCode) {
        Intrinsics.checkNotNullParameter(inviteCode, "inviteCode");
        this.inviteCode = inviteCode;
        return this;
    }

    @NotNull
    public final UserProperties setUserId(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
        return this;
    }
}
