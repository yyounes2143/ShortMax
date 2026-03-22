.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p6, :cond_3

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p6, :cond_0

    .line 7
    .line 8
    move-object p2, v0

    .line 9
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 10
    .line 11
    if-eqz p6, :cond_1

    .line 12
    .line 13
    move-object p3, v0

    .line 14
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 15
    .line 16
    if-eqz p5, :cond_2

    .line 17
    .line 18
    move-object p4, v0

    .line 19
    :cond_2
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;->a(Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 24
    .line 25
    const-string p1, "Super calls with default arguments not supported in this target, function: track"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static synthetic b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;ILjava/lang/Object;)V
    .locals 10

    .line 1
    if-nez p9, :cond_3

    .line 2
    .line 3
    and-int/lit8 v0, p8, 0x2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v4, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v4, p2

    .line 11
    :goto_0
    and-int/lit8 v0, p8, 0x4

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move-object v5, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v5, p3

    .line 18
    :goto_1
    and-int/lit8 v0, p8, 0x8

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    move-object v6, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move-object v6, p4

    .line 25
    :goto_2
    move-object v2, p0

    .line 26
    move-object v3, p1

    .line 27
    move-object v7, p5

    .line 28
    move-object/from16 v8, p6

    .line 29
    .line 30
    move-object/from16 v9, p7

    .line 31
    .line 32
    invoke-interface/range {v2 .. v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;->b(Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/x;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 37
    .line 38
    const-string v1, "Super calls with default arguments not supported in this target, function: trackClick"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method
