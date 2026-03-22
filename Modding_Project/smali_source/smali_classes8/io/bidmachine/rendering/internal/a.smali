.class public Lio/bidmachine/rendering/internal/a;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/rendering/internal/a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/internal/a;->c(Lio/bidmachine/rendering/internal/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lio/bidmachine/rendering/internal/a;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/a;->b()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 0

    .line 1
    return-void
.end method

.method protected d()V
    .locals 1

    .line 1
    const/high16 v0, -0x1000000

    .line 2
    .line 3
    invoke-static {p0, v0}, Lyq/p;->g(Landroid/app/Activity;I)Lkotlin/Unit;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lyq/p;->h(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onBackPressed()V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/a;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/a;->d()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v0, 0x21

    .line 10
    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/appcompat/app/i;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ltp/d;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ltp/d;-><init>(Lio/bidmachine/rendering/internal/a;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {p1, v1, v0}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
