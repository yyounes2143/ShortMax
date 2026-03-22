.class public final Lnu/c;
.super Ljava/lang/Object;
.source "SingleFromObservable.java"

# interfaces
.implements Lku/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lku/g$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lku/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lku/c$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lku/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/c$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnu/c;->a:Lku/c$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lku/h;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lnu/c;->b(Lku/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lku/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/h<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lnu/c$a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lnu/c$a;-><init>(Lku/h;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lku/h;->a(Lku/j;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnu/c;->a:Lku/c$a;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lmu/b;->a(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
