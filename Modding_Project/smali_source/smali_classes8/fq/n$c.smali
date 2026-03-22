.class Lfq/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfq/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Lfq/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final synthetic b:Lfq/n;


# direct methods
.method public constructor <init>(Lfq/n;Lfq/o;)V
    .locals 0
    .param p1    # Lfq/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lfq/n$c;->b:Lfq/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lfq/n$c;->a:Lfq/o;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfq/n$c;->a:Lfq/o;

    invoke-interface {v0}, Lfq/o;->a()V

    return-void
.end method

.method public a(Lrq/n;)V
    .locals 1
    .param p1    # Lrq/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lfq/n$c;->b:Lfq/n;

    invoke-virtual {v0, p1}, Lfq/n;->m(Lrq/n;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfq/n$c;->b:Lfq/n;

    invoke-static {v0}, Lfq/n;->u(Lfq/n;)V

    return-void
.end method

.method public b(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/model/PrivacySheetParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lfq/n$c;->a:Lfq/o;

    invoke-interface {v0, p1}, Lfq/o;->b(Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfq/n$c;->a:Lfq/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lfq/o;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfq/n$c;->a:Lfq/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lfq/o;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfq/n$c;->b:Lfq/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfq/n;->G()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lfq/n$c;->b:Lfq/n;

    .line 10
    .line 11
    invoke-virtual {v0}, Lfq/n;->R()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lfq/n$c;->b:Lfq/n;

    .line 15
    .line 16
    invoke-static {v0}, Lfq/n;->s(Lfq/n;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lfq/n$c;->b()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
