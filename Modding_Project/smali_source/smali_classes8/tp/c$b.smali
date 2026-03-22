.class Ltp/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltp/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ltp/c;


# direct methods
.method private constructor <init>(Ltp/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp/c$b;->a:Ltp/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltp/c;Ltp/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ltp/c$b;-><init>(Ltp/c;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Ltp/r;->b(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltp/c$b;->a:Ltp/c;

    .line 5
    .line 6
    invoke-static {p1}, Ltp/c;->e(Ltp/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltp/c$b;->a:Ltp/c;

    .line 2
    .line 3
    invoke-static {v0}, Ltp/c;->d(Ltp/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ltp/c$b;->a:Ltp/c;

    .line 10
    .line 11
    invoke-static {v0}, Ltp/c;->e(Ltp/c;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
