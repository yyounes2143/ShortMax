.class Lku/a$a$a;
.super Lku/i;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lku/a$a;->b(Lku/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lku/i<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lku/b;

.field final synthetic f:Lku/a$a;


# direct methods
.method constructor <init>(Lku/a$a;Lku/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lku/a$a$a;->f:Lku/a$a;

    .line 2
    .line 3
    iput-object p2, p0, Lku/a$a$a;->e:Lku/b;

    .line 4
    .line 5
    invoke-direct {p0}, Lku/i;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lku/a$a$a;->e:Lku/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lku/b;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lku/a$a$a;->e:Lku/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lku/b;->onError(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
