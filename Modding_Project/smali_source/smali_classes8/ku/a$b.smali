.class final Lku/a$b;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lku/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lku/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lku/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lku/a$b;->b(Lku/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lku/b;)V
    .locals 1

    .line 1
    invoke-static {}, Lru/b;->a()Lku/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Lku/b;->b(Lku/j;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lku/b;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
