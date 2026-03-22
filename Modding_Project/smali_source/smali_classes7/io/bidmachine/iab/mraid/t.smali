.class public Lio/bidmachine/iab/mraid/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/t$a;
    }
.end annotation


# instance fields
.field private a:Lio/bidmachine/iab/mraid/t$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/t;->a:Lio/bidmachine/iab/mraid/t$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/t$a;->a()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/iab/mraid/t;->a:Lio/bidmachine/iab/mraid/t$a;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public varargs b([Landroid/view/View;)Lio/bidmachine/iab/mraid/t$a;
    .locals 1
    .param p1    # [Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/t;->a()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/iab/mraid/t$a;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/t$a;-><init>([Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/iab/mraid/t;->a:Lio/bidmachine/iab/mraid/t$a;

    .line 10
    .line 11
    return-object v0
.end method
