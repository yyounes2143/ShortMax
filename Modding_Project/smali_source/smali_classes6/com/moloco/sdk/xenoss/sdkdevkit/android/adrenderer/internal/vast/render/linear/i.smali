.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/linear/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->c(J)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/linear/i;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 14
    .line 15
    return-void
.end method

.method public static final a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/linear/i;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 2
    .line 3
    return-object v0
.end method
