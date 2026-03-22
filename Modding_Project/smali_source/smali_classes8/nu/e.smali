.class public final Lnu/e;
.super Ljava/lang/Object;
.source "SingleToObservable.java"

# interfaces
.implements Lku/c$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lku/c$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lku/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lku/g$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lku/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/g$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnu/e;->a:Lku/g$a;

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
    invoke-virtual {p0, p1}, Lnu/e;->b(Lku/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lku/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/i<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lnu/d;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lnu/d;-><init>(Lku/i;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lku/i;->c(Lku/j;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnu/e;->a:Lku/g$a;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lmu/b;->a(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
