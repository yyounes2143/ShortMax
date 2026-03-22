.class public final Lcom/startshorts/androidplayer/bean/act/ActResource$Companion;
.super Ljava/lang/Object;
.source "ActResource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/bean/act/ActResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/act/ActResource$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/startshorts/androidplayer/bean/act/ActResource$Companion;IILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/act/ActResource$Companion;->create(IILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;)Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final create(IILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;)Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 23
    .param p3    # Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move/from16 v1, p1

    .line 2
    .line 3
    move/from16 v13, p2

    .line 4
    .line 5
    move-object/from16 v12, p3

    .line 6
    .line 7
    new-instance v22, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 8
    .line 9
    move-object/from16 v0, v22

    .line 10
    .line 11
    const v20, 0x1f802

    .line 12
    .line 13
    .line 14
    const/16 v21, 0x0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, -0x1

    .line 19
    const-wide/16 v5, -0x1

    .line 20
    .line 21
    const-wide/16 v7, -0x1

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, -0x1

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x0

    .line 28
    const/16 v16, 0x0

    .line 29
    .line 30
    const/16 v17, 0x0

    .line 31
    .line 32
    const/16 v18, 0x0

    .line 33
    .line 34
    const/16 v19, 0x0

    .line 35
    .line 36
    invoke-direct/range {v0 .. v21}, Lcom/startshorts/androidplayer/bean/act/ActResource;-><init>(IILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    return-object v22
.end method
