.class public final Laq/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq/a$a;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laq/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llq/a$a<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Laq/k;


# direct methods
.method public constructor <init>(Laq/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Laq/k$b;->a:Laq/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Laq/k;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Laq/k$b;->d(Laq/k;Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Laq/k;Landroid/net/Uri;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$uri"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p0}, Laq/k;->Z(Laq/k;)Lbq/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lbq/b;->a(Landroid/net/Uri;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lbq/b;->prepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    invoke-static {p1}, Ltp/s;->h(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lrq/t;->b:Lrq/t$a;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lrq/t$a;->a(Ljava/lang/Throwable;)Lrq/t;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Laq/k;->X(Laq/k;Lrq/t;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lrq/t;)V
    .locals 1
    .param p1    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laq/k$b;->a:Laq/k;

    .line 7
    .line 8
    invoke-static {v0, p1}, Laq/k;->X(Laq/k;Lrq/t;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laq/k$b;->a:Laq/k;

    .line 7
    .line 8
    new-instance v1, Laq/l;

    .line 9
    .line 10
    invoke-direct {v1, v0, p1}, Laq/l;-><init>(Laq/k;Landroid/net/Uri;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Laq/k$b;->c(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
