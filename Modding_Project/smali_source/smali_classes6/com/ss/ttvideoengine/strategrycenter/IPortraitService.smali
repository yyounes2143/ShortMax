.class public interface abstract Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;
.super Ljava/lang/Object;
.source "IPortraitService.java"


# static fields
.field public static final FROM:Ljava/lang/String; = "from"

.field public static final FROM_SMART:Ljava/lang/String; = "smart"

.field public static final FROM_VIDEO:Ljava/lang/String; = "video"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_GROUP_PORTRAITS:Ljava/lang/String; = "group"

.field public static final TYPE_ONE_PORTRAIT:Ljava/lang/String; = "one"

.field public static final VIDEO_ID:Ljava/lang/String; = "video_id"


# virtual methods
.method public addGroupConfig(Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public getPortraits(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
