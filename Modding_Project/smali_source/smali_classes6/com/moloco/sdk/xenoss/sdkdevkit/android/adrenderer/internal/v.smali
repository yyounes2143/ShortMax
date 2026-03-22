.class public final synthetic Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

.field public final synthetic b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;


# direct methods
.method public synthetic constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/v;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/v;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/v;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/v;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    .line 4
    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/b;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/b;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
