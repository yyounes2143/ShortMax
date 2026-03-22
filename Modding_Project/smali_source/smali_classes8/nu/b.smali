.class public final Lnu/b;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lku/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/b$a;
    }
.end annotation

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
.field final a:Lku/f;

.field final b:Lku/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lku/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lku/c;Lku/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/c<",
            "TT;>;",
            "Lku/f;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lnu/b;->a:Lku/f;

    .line 5
    .line 6
    iput-object p1, p0, Lnu/b;->b:Lku/c;

    .line 7
    .line 8
    iput-boolean p3, p0, Lnu/b;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lku/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lnu/b;->b(Lku/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lku/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/i<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnu/b;->a:Lku/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lku/f;->a()Lku/f$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lnu/b$a;

    .line 8
    .line 9
    iget-boolean v2, p0, Lnu/b;->c:Z

    .line 10
    .line 11
    iget-object v3, p0, Lnu/b;->b:Lku/c;

    .line 12
    .line 13
    invoke-direct {v1, p1, v2, v0, v3}, Lnu/b$a;-><init>(Lku/i;ZLku/f$a;Lku/c;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lku/i;->c(Lku/j;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lku/i;->c(Lku/j;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lku/f$a;->a(Lmu/a;)Lku/j;

    .line 23
    .line 24
    .line 25
    return-void
.end method
