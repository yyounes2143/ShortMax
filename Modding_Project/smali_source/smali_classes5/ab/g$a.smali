.class Lab/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lab/g;->a(Lcb/c;Ljava/lang/String;Lya/c;I)Lab/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lab/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcb/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lya/c;

.field final synthetic d:Lab/g;


# direct methods
.method constructor <init>(Lab/g;Lcb/c;Ljava/lang/String;Lya/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lab/g$a;->d:Lab/g;

    .line 2
    .line 3
    iput-object p2, p0, Lab/g$a;->a:Lcb/c;

    .line 4
    .line 5
    iput-object p3, p0, Lab/g$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lab/g$a;->c:Lya/c;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Lab/d;
    .locals 4

    .line 1
    new-instance v0, Lab/c;

    .line 2
    .line 3
    iget-object v1, p0, Lab/g$a;->a:Lcb/c;

    .line 4
    .line 5
    iget-object v2, p0, Lab/g$a;->d:Lab/g;

    .line 6
    .line 7
    invoke-static {v2}, Lab/g;->c(Lab/g;)Lya/a;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lab/c;-><init>(Lcb/c;Lya/a;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lab/g;->b()Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lab/g$a;->b:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p0, Lab/g$a;->c:Lya/c;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lab/c;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lya/c;)Lab/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lab/g$a;->a()Lab/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
