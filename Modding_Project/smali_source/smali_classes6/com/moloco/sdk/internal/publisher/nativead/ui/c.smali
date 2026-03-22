.class public final Lcom/moloco/sdk/internal/publisher/nativead/ui/c;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/nativead/ui/c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/publisher/nativead/ui/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/ui/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/publisher/nativead/ui/c;->a:Lcom/moloco/sdk/internal/publisher/nativead/ui/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "watermark"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalLinkHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 8
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 9
    invoke-direct {p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance p2, Lcom/moloco/sdk/internal/publisher/nativead/ui/f;

    invoke-direct {p2, p4}, Lcom/moloco/sdk/internal/publisher/nativead/ui/f;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p5

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p4, -0x2

    .line 13
    invoke-direct {p1, p4, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p4, 0xc

    .line 14
    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p4, 0x14

    .line 15
    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p4, 0x10

    const/4 p5, 0x0

    .line 16
    invoke-virtual {p2, p4, p5, p5, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    new-instance p4, Lcom/moloco/sdk/internal/publisher/nativead/ui/g;

    invoke-direct {p4, p6}, Lcom/moloco/sdk/internal/publisher/nativead/ui/g;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;)V

    invoke-virtual {p2, p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->setOnButtonRenderedListener(Lkotlin/jvm/functions/Function1;)V

    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-interface {p3, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;->a(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    .line 1
    sget-object p5, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 2
    invoke-virtual {p5}, Lcom/moloco/sdk/service_locator/b$h;->f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    move-result-object p5

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    .line 3
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/w;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;

    move-result-object p6

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/internal/publisher/nativead/ui/c;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;)V

    return-void
.end method

.method public static final a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "button"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/q;->h(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method
