.class public final Lcom/startshorts/androidplayer/bean/reward/RewardsModule;
.super Ljava/lang/Object;
.source "RewardsModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/reward/RewardsModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/reward/RewardsModule$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NEW_USER_TASK_TITLE:I = 0x8

.field public static final STYLE_ACT_BANNER:I = 0x7

.field public static final STYLE_CHECK_IN_AND_YOUR_BONUS:I = 0x1

.field public static final STYLE_DAILY_BONUS:I = 0x6

.field public static final STYLE_DES:I = 0x4

.field public static final STYLE_NEWBIE_BONUS:I = 0x5

.field public static final STYLE_TASK:I = 0x2

.field public static final STYLE_UNKNOWN:I = -0x1

.field public static final STYLE_WATCH_AD_BONUSES:I = 0x3


# instance fields
.field private bottomMargin:I

.field private final moduleType:I

.field private payloads:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private topMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->Companion:Lcom/startshorts/androidplayer/bean/reward/RewardsModule$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->moduleType:I

    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->state:Ljava/lang/Object;

    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->payloads:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getBottomMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->bottomMargin:I

    .line 2
    .line 3
    return v0
.end method

.method public final getModuleType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->moduleType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPayloads()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->payloads:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getState()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->state:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTopMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->topMargin:I

    .line 2
    .line 3
    return v0
.end method

.method public final setBottomMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->bottomMargin:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPayloads(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->payloads:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setState(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->state:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setTopMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->topMargin:I

    .line 2
    .line 3
    return-void
.end method
