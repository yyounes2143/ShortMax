.class public Lio/bidmachine/iab/mraid/u;
.super Landroid/view/GestureDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/u$a;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/iab/mraid/u$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/u$a;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/u$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/bidmachine/iab/mraid/u;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/u$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/u$a;)V
    .locals 0
    .param p2    # Lio/bidmachine/iab/mraid/u$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/mraid/u;->a:Lio/bidmachine/iab/mraid/u$a;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/u;->a:Lio/bidmachine/iab/mraid/u$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/u$a;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/u;->a:Lio/bidmachine/iab/mraid/u$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/u$a;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
