.class public final Lcom/startshorts/androidplayer/bean/notification/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/notification/NotificationData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/notification/NotificationData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TARGET_UI_BONUS_WILL_EXPIRED:I = 0xa

.field public static final TARGET_UI_CHECK_IN:I = 0x2

.field public static final TARGET_UI_CUR_PLAY_SHORTS:I = 0xb

.field public static final TARGET_UI_CUSTOM:I = 0x6

.field public static final TARGET_UI_DISCOVER:I = 0x1

.field public static final TARGET_UI_MISS_CHECK_IN:I = 0x9

.field public static final TARGET_UI_NEW_SHORTS:I = 0x3

.field public static final TARGET_UI_PERMANENT_SHORTS:I = 0x5

.field public static final TARGET_UI_RECOMMEND_SHORTS:I = 0x4

.field public static final TARGET_UI_REWARDS:I = 0xc

.field public static final TARGET_UI_START_RECHARGING:I = 0x8

.field public static final TARGET_UI_SUBS_BONUS:I = 0x7


# instance fields
.field private final extras:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final targetUI:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/notification/NotificationData$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/notification/NotificationData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->Companion:Lcom/startshorts/androidplayer/bean/notification/NotificationData$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->targetUI:I

    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->extras:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/notification/NotificationData;ILjava/lang/String;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/notification/NotificationData;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->targetUI:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->extras:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->copy(ILjava/lang/String;)Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->targetUI:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->extras:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILjava/lang/String;)Lcom/startshorts/androidplayer/bean/notification/NotificationData;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;-><init>(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->targetUI:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->targetUI:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->extras:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->extras:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final getExtras()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->extras:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTargetUI()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->targetUI:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->targetUI:I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->extras:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "NotificationData(targetUI="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->targetUI:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", extras="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->extras:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
