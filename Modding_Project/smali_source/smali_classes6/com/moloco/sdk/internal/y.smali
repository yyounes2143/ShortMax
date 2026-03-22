.class public final Lcom/moloco/sdk/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/s;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/moloco/sdk/internal/y;->a:Lms/i;

    .line 11
    .line 12
    new-instance v0, Lcom/moloco/sdk/internal/t;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/moloco/sdk/internal/t;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/moloco/sdk/internal/y;->b:Lms/i;

    .line 22
    .line 23
    return-void
.end method

.method public static final a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;
    .locals 7

    .line 1
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;

    .line 2
    .line 3
    new-instance v1, Lcom/moloco/sdk/internal/x;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/moloco/sdk/internal/x;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x6

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public static final b(Z)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/internal/y;->h()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    return-object p0
.end method

.method public static final c()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;

    .line 2
    .line 3
    new-instance v1, Lcom/moloco/sdk/internal/u;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/moloco/sdk/internal/u;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/moloco/sdk/internal/v;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/moloco/sdk/internal/v;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lcom/moloco/sdk/internal/w;

    .line 14
    .line 15
    invoke-direct {v3}, Lcom/moloco/sdk/internal/w;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static final e()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final f()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final g()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final h()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/y;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;

    .line 8
    .line 9
    return-object v0
.end method
