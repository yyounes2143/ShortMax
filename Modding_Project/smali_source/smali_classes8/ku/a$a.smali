.class final Lku/a$a;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lku/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lku/a;->b(Lku/c;)Lku/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lku/c;


# direct methods
.method constructor <init>(Lku/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lku/a$a;->a:Lku/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lku/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lku/a$a;->b(Lku/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lku/b;)V
    .locals 1

    .line 1
    new-instance v0, Lku/a$a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lku/a$a$a;-><init>(Lku/a$a;Lku/b;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lku/b;->b(Lku/j;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lku/a$a;->a:Lku/c;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lku/c;->g(Lku/i;)Lku/j;

    .line 12
    .line 13
    .line 14
    return-void
.end method
