.class final Lio/bidmachine/rendering/internal/controller/h$g;
.super Ltp/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/controller/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic c:Lio/bidmachine/rendering/internal/controller/h;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/controller/h;Ljq/b;)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/internal/controller/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq/b;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "eventCallback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$g;->c:Lio/bidmachine/rendering/internal/controller/h;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Ltp/b0;-><init>(Ljq/b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Ltp/b0;->r()Ljq/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljq/b;->a(Ljava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$g;->c:Lio/bidmachine/rendering/internal/controller/h;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/controller/h;->X()Lfq/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lfq/s;->b()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Ltp/b0;->r()Ljq/b;

    move-result-object v0

    invoke-interface {v0, p1}, Ljq/b;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$g;->c:Lio/bidmachine/rendering/internal/controller/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/controller/h;->X()Lfq/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lfq/s;->e()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ltp/b0;->r()Ljq/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljq/b;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
