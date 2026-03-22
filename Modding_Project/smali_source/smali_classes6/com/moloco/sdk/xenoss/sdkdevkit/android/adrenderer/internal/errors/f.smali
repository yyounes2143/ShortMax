.class public final enum Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;",
        ">;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

.field public static final enum b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

.field public static final enum c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

.field public static final enum d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

.field public static final enum e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

.field public static final synthetic f:[Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

.field public static final synthetic g:Lss/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 2
    .line 3
    const-string v1, "NATIVE_AD_ORTB_RESPONSE_NULL_ERROR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 12
    .line 13
    const-string v1, "NATIVE_AD_IMAGE_ASSET_MEDIA_FETCH_ERROR"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 20
    .line 21
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 22
    .line 23
    const-string v1, "NATIVE_AD_IMAGE_PREPARE_ASSET_UNKNOWN_ERROR"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 30
    .line 31
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 32
    .line 33
    const-string v1, "NATIVE_AD_VIDEO_ASSET_MEDIA_NOT_ENOUGH_ERROR"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 40
    .line 41
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 42
    .line 43
    const-string v1, "NATIVE_AD_VIDEO_ASSET_MEDIA_FETCH_ERROR"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 50
    .line 51
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->b()[Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->f:[Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->g:Lss/a;

    .line 62
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static final synthetic b()[Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;
    .locals 5

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 6
    .line 7
    sget-object v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 8
    .line 9
    sget-object v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static c()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->g:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->f:[Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
