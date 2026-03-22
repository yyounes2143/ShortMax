.class public final enum Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

.field public static final enum c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

.field public static final synthetic d:[Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

.field public static final synthetic e:Lss/a;


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "inline"

    .line 5
    .line 6
    const-string v3, "Inline"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 12
    .line 13
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "interstitial"

    .line 17
    .line 18
    const-string v3, "Interstitial"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 24
    .line 25
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;->a()[Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;->d:[Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;->e:Lss/a;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic a()[Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;
    .locals 2

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static b()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;->e:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;->d:[Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
