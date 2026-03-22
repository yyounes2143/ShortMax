.class public final enum Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;
.super Ljava/lang/Enum;
.source "PlaylistLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

.field public static final enum Cancel:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

.field public static final enum Completed:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

.field public static final enum Error:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

.field public static final enum Start:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

.field public static final enum Unknown:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 2
    .line 3
    const-string v1, "Unknown"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Unknown:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 10
    .line 11
    new-instance v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 12
    .line 13
    const-string v2, "Start"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Start:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 20
    .line 21
    new-instance v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 22
    .line 23
    const-string v3, "Cancel"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Cancel:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 30
    .line 31
    new-instance v3, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 32
    .line 33
    const-string v4, "Completed"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Completed:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 40
    .line 41
    new-instance v4, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 42
    .line 43
    const-string v5, "Error"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Error:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 50
    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->$VALUES:[Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 56
    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static covertCode(I)Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Start:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Cancel:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne p0, v1, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Completed:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne p0, v1, :cond_2

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Error:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne p0, v1, :cond_3

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_3
    sget-object p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Unknown:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 38
    .line 39
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->$VALUES:[Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 8
    .line 9
    return-object v0
.end method
