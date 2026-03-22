.class final Lgq/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgq/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyq/d<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lyq/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyq/d<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lyq/d;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyq/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lyq/d<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "baseUri"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lgq/a$c;->a:Landroid/net/Uri;

    .line 15
    .line 16
    iput-object p3, p0, Lgq/a$c;->b:Lyq/d;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "context.applicationContext"

    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lgq/a$c;->c:Landroid/content/Context;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lgq/a$c;->a:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v0, "primaryTrackingUrl"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lsq/k;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    iget-object v0, p0, Lgq/a$c;->b:Lyq/d;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lsq/j;->m(Ljava/lang/Object;Lyq/d;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p1, p0, Lgq/a$c;->a:Landroid/net/Uri;

    .line 23
    .line 24
    const-string v0, "fallbackUrl"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p1}, Lyq/r;->j(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    iget-object v0, p0, Lgq/a$c;->b:Lyq/d;

    .line 48
    .line 49
    invoke-static {p1, v0}, Lsq/j;->m(Ljava/lang/Object;Lyq/d;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object v0, p0, Lgq/a$c;->c:Landroid/content/Context;

    .line 54
    .line 55
    new-instance v1, Lgq/a$b;

    .line 56
    .line 57
    iget-object v2, p0, Lgq/a$c;->a:Landroid/net/Uri;

    .line 58
    .line 59
    iget-object v3, p0, Lgq/a$c;->b:Lyq/d;

    .line 60
    .line 61
    invoke-direct {v1, v2, v3}, Lgq/a$b;-><init>(Landroid/net/Uri;Lyq/d;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p1, v1}, Lsq/k;->a(Landroid/content/Context;Landroid/net/Uri;Lyq/d;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 69
    .line 70
    iget-object v0, p0, Lgq/a$c;->b:Lyq/d;

    .line 71
    .line 72
    invoke-static {p1, v0}, Lsq/j;->m(Ljava/lang/Object;Lyq/d;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lgq/a$c;->c(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
