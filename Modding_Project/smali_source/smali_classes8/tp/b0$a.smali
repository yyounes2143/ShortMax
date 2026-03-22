.class Ltp/b0$a;
.super Ltp/b0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltp/b0;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ltp/b0;


# direct methods
.method constructor <init>(Ltp/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp/b0$a;->c:Ltp/b0;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Ltp/b0$b;-><init>(Ltp/b0$a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltp/b0$a;->c:Ltp/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ltp/b0;->r()Ljq/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljq/b;->h()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ltp/b0$a;->c:Ltp/b0;

    .line 11
    .line 12
    invoke-static {v0}, Ltp/b0;->f(Ltp/b0;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
