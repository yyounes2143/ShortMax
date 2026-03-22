.class public final Lai/turbolink/sdk/helpers/UserHelper;
.super Ljava/lang/Object;
.source "UserHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inviteCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private levelTag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nickName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "userId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    iput-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->userId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->nickName:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->avatar:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lai/turbolink/sdk/helpers/UserHelper;->levelTag:Ljava/util/List;

    .line 23
    .line 24
    iput-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->inviteCode:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, Lai/turbolink/sdk/helpers/UserHelper;->userId:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final cleanParams()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->userId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->nickName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->avatar:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lai/turbolink/sdk/helpers/UserHelper;->levelTag:Ljava/util/List;

    .line 15
    .line 16
    iput-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->inviteCode:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->avatar:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInviteCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->inviteCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLevelTag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->levelTag:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNickName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->nickName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/helpers/UserHelper;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/helpers/UserHelper;->avatar:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setInviteCode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/helpers/UserHelper;->inviteCode:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setLevelTag(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/helpers/UserHelper;->levelTag:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setNickName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/helpers/UserHelper;->nickName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/helpers/UserHelper;->userId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
