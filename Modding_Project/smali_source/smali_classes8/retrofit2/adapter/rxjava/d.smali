.class final Lretrofit2/adapter/rxjava/d;
.super Ljava/lang/Object;
.source "ResultOnSubscribe.java"

# interfaces
.implements Lku/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lku/c$a<",
        "Lgu/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lku/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lku/c$a<",
            "Lfu/c0<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lku/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/c$a<",
            "Lfu/c0<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/adapter/rxjava/d;->a:Lku/c$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lku/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/d;->b(Lku/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lku/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/i<",
            "-",
            "Lgu/a<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lretrofit2/adapter/rxjava/d;->a:Lku/c$a;

    .line 2
    .line 3
    new-instance v1, Lretrofit2/adapter/rxjava/d$a;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava/d$a;-><init>(Lku/i;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lmu/b;->a(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
