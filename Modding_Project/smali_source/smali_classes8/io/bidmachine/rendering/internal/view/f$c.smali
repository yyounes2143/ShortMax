.class final Lio/bidmachine/rendering/internal/view/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/rendering/internal/view/f;


# direct methods
.method private constructor <init>(Lio/bidmachine/rendering/internal/view/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/f$c;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/internal/view/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/view/f$c;-><init>(Lio/bidmachine/rendering/internal/view/f;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$c;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/f;->h(Lio/bidmachine/rendering/internal/view/f;)Lio/bidmachine/rendering/internal/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/d;->j()V

    return-void
.end method

.method public a(Lrq/n;)V
    .locals 1
    .param p1    # Lrq/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$c;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/view/f;->f(Lio/bidmachine/rendering/internal/view/f;Lrq/n;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$c;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/f;->e()V

    return-void
.end method

.method public b(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 0
    .param p1    # Lio/bidmachine/rendering/model/PrivacySheetParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$c;->a:Lio/bidmachine/rendering/internal/view/f;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/f;->h(Lio/bidmachine/rendering/internal/view/f;)Lio/bidmachine/rendering/internal/view/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/d;->d()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$c;->a:Lio/bidmachine/rendering/internal/view/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/f;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
