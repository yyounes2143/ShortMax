.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;
.super Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C<",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final g:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/s;Lgt/g0;)V
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    move-object/from16 v14, p6

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adm"

    move-object/from16 v5, p2

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "externalLinkHandler"

    move-object/from16 v9, p3

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "watermark"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "webViewWrapper"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "scope"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, v2, v14}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;-><init>(Landroid/content/Context;Lgt/g0;)V

    .line 4
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->g:Landroid/content/Context;

    .line 5
    iput-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 6
    iput-object v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/s;

    .line 7
    const-string v1, "MolocoMraidBannerView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;

    iput-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;

    .line 9
    new-instance v15, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/m;

    .line 10
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t$b;

    invoke-direct {v4, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t$b;-><init>(Ljava/lang/Object;)V

    .line 11
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t$c;

    invoke-direct {v6, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t$c;-><init>(Ljava/lang/Object;)V

    .line 12
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/r0;

    invoke-direct {v7, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/r0;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;)V

    .line 13
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s0;

    invoke-direct {v8, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s0;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;)V

    const/4 v1, 0x0

    .line 14
    invoke-static {v2, v14, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/o;->a(Landroid/content/Context;Lgt/g0;Z)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;

    move-result-object v10

    const/16 v12, 0x200

    const/4 v13, 0x0

    const/4 v11, 0x1

    const/16 v16, 0x0

    move-object v1, v15

    move-object/from16 v3, p2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v11

    move-object/from16 v11, v16

    .line 15
    invoke-direct/range {v1 .. v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/m;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v15, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/m;

    .line 16
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    sget-object v2, Lcom/moloco/sdk/service_locator/b$a;->a:Lcom/moloco/sdk/service_locator/b$a;

    invoke-virtual {v2}, Lcom/moloco/sdk/service_locator/b$a;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/l0;

    move-result-object v2

    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t$a;

    invoke-direct {v3, v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t$a;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-direct {v1, v14, v4, v2, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;-><init>(Lgt/g0;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/l0;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/s;Lgt/g0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    .line 1
    new-instance p5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/s;

    invoke-direct {p5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/s;-><init>()V

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/s;Lgt/g0;)V

    return-void
.end method

.method public static final l(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/d;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->getAdShowListener()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/e;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/d;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/d;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final synthetic o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final q(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->getAdShowListener()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/m;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->destroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getAdLoader()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    return-object v0
.end method

.method public bridge synthetic getAdLoader()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->getAdLoader()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    move-result-object v0

    return-object v0
.end method

.method public getCreativeType()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/s;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->g:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/m;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/m;->c()Landroid/webkit/WebView;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/s;->a(Landroid/content/Context;Landroid/webkit/WebView;)Landroid/widget/FrameLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;->a(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->setAdView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final r()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->setAdView(Landroid/view/View;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
