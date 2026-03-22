.class Lio/bidmachine/e4$c;
.super Ljava/lang/Object;
.source "InitialRequestLoader.java"

# interfaces
.implements Lio/bidmachine/c4$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/e4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final synthetic b:Lio/bidmachine/e4;


# direct methods
.method public constructor <init>(Lio/bidmachine/e4;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lio/bidmachine/e4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/e4$c;->b:Lio/bidmachine/e4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/e4$c;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lfr/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/e4$c;->b(Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lfr/a;)V
    .locals 2
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/e4$c;->b:Lio/bidmachine/e4;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/e4;->b(Lio/bidmachine/e4;)Lio/bidmachine/e4$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lio/bidmachine/f4;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lio/bidmachine/f4;-><init>(Lio/bidmachine/e4$d;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lio/bidmachine/e4;->g(Lio/bidmachine/Executable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public c(Lio/bidmachine/protobuf/InitResponse;)V
    .locals 3
    .param p1    # Lio/bidmachine/protobuf/InitResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/e4$c;->b:Lio/bidmachine/e4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/e4;->d()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lio/bidmachine/e4$c;->b:Lio/bidmachine/e4;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/e4;->a(Lio/bidmachine/e4;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lio/bidmachine/e4$c;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Lio/bidmachine/m2;->y(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/e4$c;->b:Lio/bidmachine/e4;

    .line 21
    .line 22
    invoke-static {v0}, Lio/bidmachine/e4;->b(Lio/bidmachine/e4;)Lio/bidmachine/e4$d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lio/bidmachine/e4$b;

    .line 27
    .line 28
    iget-object v2, p0, Lio/bidmachine/e4$c;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v1, p1, v2}, Lio/bidmachine/e4$b;-><init>(Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Lio/bidmachine/e4$d;->a(Lio/bidmachine/e4$b;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/protobuf/InitResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/e4$c;->c(Lio/bidmachine/protobuf/InitResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
