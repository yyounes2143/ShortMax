.class Lnu/b$a$a;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lku/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnu/b$a;->i(Lku/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lku/e;

.field final synthetic b:Lnu/b$a;


# direct methods
.method constructor <init>(Lnu/b$a;Lku/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnu/b$a$a;->b:Lnu/b$a;

    .line 2
    .line 3
    iput-object p2, p0, Lnu/b$a$a;->a:Lku/e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnu/b$a$a;->b:Lnu/b$a;

    .line 2
    .line 3
    iget-object v0, v0, Lnu/b$a;->i:Ljava/lang/Thread;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lnu/b$a$a;->b:Lnu/b$a;

    .line 12
    .line 13
    iget-boolean v1, v0, Lnu/b$a;->f:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, v0, Lnu/b$a;->g:Lku/f$a;

    .line 19
    .line 20
    new-instance v1, Lnu/b$a$a$a;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1, p2}, Lnu/b$a$a$a;-><init>(Lnu/b$a$a;J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lku/f$a;->a(Lmu/a;)Lku/j;

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lnu/b$a$a;->a:Lku/e;

    .line 30
    .line 31
    invoke-interface {v0, p1, p2}, Lku/e;->request(J)V

    .line 32
    .line 33
    .line 34
    :goto_1
    return-void
.end method
