.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 2
    .line 3
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 4
    .line 5
    const/high16 v5, 0xc800000

    .line 6
    .line 7
    const v1, 0x7d000

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;-><init>(IZDI)V

    .line 13
    .line 14
    .line 15
    sput-object v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/q;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 16
    .line 17
    return-void
.end method

.method public static final a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/q;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 2
    .line 3
    return-object v0
.end method
