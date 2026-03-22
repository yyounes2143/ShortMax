.class public abstract Lku/h;
.super Ljava/lang/Object;
.source "SingleSubscriber.java"

# interfaces
.implements Lku/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lku/j;"
    }
.end annotation


# instance fields
.field private final a:Lpu/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lpu/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lpu/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lku/h;->a:Lpu/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lku/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lku/h;->a:Lpu/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lpu/b;->a(Lku/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract b(Ljava/lang/Throwable;)V
.end method

.method public abstract c(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lku/h;->a:Lpu/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpu/b;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lku/h;->a:Lpu/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpu/b;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
