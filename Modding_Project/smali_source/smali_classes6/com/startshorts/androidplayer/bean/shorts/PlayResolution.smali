.class public final Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
.super Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
.source "PlayResolution.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PLAY_RESOLUTION_1080P:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PLAY_RESOLUTION_480P:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PLAY_RESOLUTION_720P:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PLAY_RESOLUTION_AUTO:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESOLUTION_1080:I = 0x438

.field public static final RESOLUTION_480:I = 0x1e0

.field public static final RESOLUTION_720:I = 0x2d0

.field public static final RESOLUTION_AUTO:I


# instance fields
.field private final resolution:Lcom/ss/ttvideoengine/Resolution;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resolutionValue:I

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 10
    .line 11
    sget-object v4, Lcom/ss/ttvideoengine/Resolution;->High:Lcom/ss/ttvideoengine/Resolution;

    .line 12
    .line 13
    const/4 v6, 0x4

    .line 14
    const/4 v7, 0x0

    .line 15
    const/16 v3, 0x1e0

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v2, v0

    .line 19
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;-><init>(ILcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->PLAY_RESOLUTION_480P:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 23
    .line 24
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 25
    .line 26
    sget-object v10, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 27
    .line 28
    const/4 v12, 0x4

    .line 29
    const/4 v13, 0x0

    .line 30
    const/16 v9, 0x2d0

    .line 31
    .line 32
    const/4 v11, 0x0

    .line 33
    move-object v8, v0

    .line 34
    invoke-direct/range {v8 .. v13}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;-><init>(ILcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->PLAY_RESOLUTION_720P:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 38
    .line 39
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 40
    .line 41
    sget-object v3, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, 0x0

    .line 45
    const/16 v2, 0x438

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    move-object v1, v0

    .line 49
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;-><init>(ILcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->PLAY_RESOLUTION_1080P:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 53
    .line 54
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 55
    .line 56
    sget-object v9, Lcom/ss/ttvideoengine/Resolution;->Auto:Lcom/ss/ttvideoengine/Resolution;

    .line 57
    .line 58
    const/4 v11, 0x4

    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v10, 0x0

    .line 62
    move-object v7, v0

    .line 63
    invoke-direct/range {v7 .. v12}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;-><init>(ILcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->PLAY_RESOLUTION_AUTO:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 67
    .line 68
    return-void
.end method

.method public constructor <init>(ILcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)V
    .locals 1
    .param p2    # Lcom/ss/ttvideoengine/Resolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resolution"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;-><init>()V

    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolutionValue:I

    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolution:Lcom/ss/ttvideoengine/Resolution;

    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 2
    const-string p3, ""

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;-><init>(ILcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getPLAY_RESOLUTION_1080P$cp()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->PLAY_RESOLUTION_1080P:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPLAY_RESOLUTION_480P$cp()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->PLAY_RESOLUTION_480P:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPLAY_RESOLUTION_720P$cp()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->PLAY_RESOLUTION_720P:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPLAY_RESOLUTION_AUTO$cp()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->PLAY_RESOLUTION_AUTO:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;ILcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolutionValue:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->url:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->copy(ILcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolutionValue:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Lcom/ss/ttvideoengine/Resolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1
    .param p2    # Lcom/ss/ttvideoengine/Resolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "resolution"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "url"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;-><init>(ILcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolutionValue:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolutionValue:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->url:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->url:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    return v0
.end method

.method public final getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/startshorts/androidplayer/R$string;->immersion_activity_resolution_auto:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "getString(...)"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolutionValue:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v0, 0x70

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    return-object p1
.end method

.method public final getResolution()Lcom/ss/ttvideoengine/Resolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResolutionValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolutionValue:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSelectedColor(ZLandroid/content/Context;)I
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "context"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget p1, Lcom/startshorts/androidplayer/R$color;->colorPrimary:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const p1, 0x106000b

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolutionValue:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->url:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public final iconDrawable()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_subscribe_vip_no:I

    .line 2
    .line 3
    return v0
.end method

.method public final isAuto()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolutionValue:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final setUrl(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->url:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->url:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "auto"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolutionValue:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x70

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "auto,"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->url:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->resolutionValue:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, "p,"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->url:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_0
    return-object v0
.end method
