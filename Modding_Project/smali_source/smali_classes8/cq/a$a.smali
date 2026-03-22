.class public Lcq/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzm/w$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcq/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcq/a;


# direct methods
.method protected constructor <init>(Lcq/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcq/a$a;->a:Lcq/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcq/a$a;->a:Lcq/a;

    .line 5
    .line 6
    invoke-static {p1}, Lcq/a;->n0(Lcq/a;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x4

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcq/a$a;->a:Lcq/a;

    .line 14
    .line 15
    invoke-static {p1}, Lcq/a;->r0(Lcq/a;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public G(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcq/a$a;->a:Lcq/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcq/a;->o0(Lcq/a;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public P(Lzm/w$e;Lzm/w$e;I)V
    .locals 0
    .param p1    # Lzm/w$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lzm/w$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcq/a$a;->a:Lcq/a;

    .line 2
    .line 3
    iget-wide p2, p2, Lzm/w$e;->g:J

    .line 4
    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p1, p2}, Lcq/a;->p0(Lcq/a;Ljava/lang/Long;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public U(Lio/bidmachine/media3/common/PlaybackException;)V
    .locals 1
    .param p1    # Lio/bidmachine/media3/common/PlaybackException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcq/a$a;->a:Lcq/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcq/a;->q0(Lcq/a;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public y(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcq/a$a;->a:Lcq/a;

    .line 4
    .line 5
    invoke-static {p1}, Lcq/a;->s0(Lcq/a;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcq/a$a;->a:Lcq/a;

    .line 10
    .line 11
    invoke-static {p1}, Lcq/a;->t0(Lcq/a;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
