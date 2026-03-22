.class Lfu/i$a;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lfu/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfu/i;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lfu/d0;)Lfu/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfu/e<",
        "Ljava/lang/Object;",
        "Lfu/d<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lfu/i;


# direct methods
.method constructor <init>(Lfu/i;Ljava/lang/reflect/Type;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfu/i$a;->c:Lfu/i;

    .line 2
    .line 3
    iput-object p2, p0, Lfu/i$a;->a:Ljava/lang/reflect/Type;

    .line 4
    .line 5
    iput-object p3, p0, Lfu/i$a;->b:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lfu/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfu/i$a;->c(Lfu/d;)Lfu/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lfu/i$a;->a:Ljava/lang/reflect/Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lfu/d;)Lfu/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Lfu/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfu/i$a;->b:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lfu/i$b;

    .line 7
    .line 8
    invoke-direct {v1, v0, p1}, Lfu/i$b;-><init>(Ljava/util/concurrent/Executor;Lfu/d;)V

    .line 9
    .line 10
    .line 11
    move-object p1, v1

    .line 12
    :goto_0
    return-object p1
.end method
