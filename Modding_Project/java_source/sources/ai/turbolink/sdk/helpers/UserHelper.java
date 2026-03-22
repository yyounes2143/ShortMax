package ai.turbolink.sdk.helpers;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UserHelper.kt */
@Metadata
/* loaded from: classes.dex */
public final class UserHelper {
    @NotNull
    private String avatar;
    @NotNull
    private String inviteCode;
    @NotNull
    private List<String> levelTag;
    @NotNull
    private String nickName;
    @NotNull
    private String userId;

    public UserHelper(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = "";
        this.nickName = "";
        this.avatar = "";
        this.levelTag = new ArrayList();
        this.inviteCode = "";
        this.userId = userId;
    }

    public final void cleanParams() {
        this.userId = "";
        this.nickName = "";
        this.avatar = "";
        this.levelTag = new ArrayList();
        this.inviteCode = "";
    }

    @NotNull
    public final String getAvatar() {
        return this.avatar;
    }

    @NotNull
    public final String getInviteCode() {
        return this.inviteCode;
    }

    @NotNull
    public final List<String> getLevelTag() {
        return this.levelTag;
    }

    @NotNull
    public final String getNickName() {
        return this.nickName;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public final void setAvatar(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.avatar = str;
    }

    public final void setInviteCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.inviteCode = str;
    }

    public final void setLevelTag(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.levelTag = list;
    }

    public final void setNickName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.nickName = str;
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }
}
