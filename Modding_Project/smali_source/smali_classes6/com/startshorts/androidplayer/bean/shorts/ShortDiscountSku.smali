.class public final Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;
.super Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
.source "ShortDiscountSku.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private coverUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortPlayCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortPlayId:I

.field private shortPlayName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private validEndTime:J

.field private validStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getCoverUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->coverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlayCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlayId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->shortPlayId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShortPlayName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->shortPlayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValidEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->validEndTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getValidStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->validStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setCoverUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->coverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->shortPlayId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->shortPlayName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setValidEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->validEndTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setValidStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->validStartTime:J

    .line 2
    .line 3
    return-void
.end method
