.class public final Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;
.super Ljava/lang/Object;
.source "ColorUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/renderer/util/ColorUtils;
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
    invoke-direct {p0}, Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final multiplyColorAlpha(II)I
    .locals 2

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const/16 v1, 0xff

    .line 7
    .line 8
    if-eq p2, v1, :cond_1

    .line 9
    .line 10
    shr-int/lit8 v1, p2, 0x7

    .line 11
    .line 12
    add-int/2addr p2, v1

    .line 13
    ushr-int/lit8 v1, p1, 0x18

    .line 14
    .line 15
    mul-int/2addr v1, p2

    .line 16
    shr-int/lit8 p2, v1, 0x8

    .line 17
    .line 18
    shl-int/lit8 p2, p2, 0x18

    .line 19
    .line 20
    and-int/2addr p1, v0

    .line 21
    or-int/2addr p1, p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    and-int/2addr p1, v0

    .line 24
    :cond_1
    :goto_0
    return p1
.end method
