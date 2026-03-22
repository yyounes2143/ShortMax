.class public Ltp/t;
.super Ltp/b0;
.source "SourceFile"


# instance fields
.field private final c:Lrq/d0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrq/d0;Ljq/b;)V
    .locals 0
    .param p1    # Lrq/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljq/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Ltp/b0;-><init>(Ljq/b;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltp/t;->c:Lrq/d0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public s()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ltp/t;->c:Lrq/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrq/d0;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public t()Lrq/d0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ltp/t;->c:Lrq/d0;

    .line 2
    .line 3
    return-object v0
.end method
