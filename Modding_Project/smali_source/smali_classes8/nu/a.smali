.class public Lnu/a;
.super Ljava/lang/Object;
.source "OnSubscribeSingle.java"

# interfaces
.implements Lku/g$a;


# annotations
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
.field private final a:Lku/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lku/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lku/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnu/a;->a:Lku/c;

    .line 5
    .line 6
    return-void
.end method

.method public static c(Lku/c;)Lnu/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lku/c<",
            "TT;>;)",
            "Lnu/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnu/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnu/a;-><init>(Lku/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lku/h;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lnu/a;->b(Lku/h;)V

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
    new-instance v0, Lnu/a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lnu/a$a;-><init>(Lnu/a;Lku/h;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lku/h;->a(Lku/j;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnu/a;->a:Lku/c;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lku/c;->g(Lku/i;)Lku/j;

    .line 12
    .line 13
    .line 14
    return-void
.end method
