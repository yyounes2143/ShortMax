.class final Lcom/google/firebase/sessions/a$b;
.super Ljava/lang/Object;
.source "DaggerFirebaseSessionsComponent.java"

# interfaces
.implements Lcom/google/firebase/sessions/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lkotlin/coroutines/CoroutineContext;

.field private c:Lkotlin/coroutines/CoroutineContext;

.field private d:Lcom/google/firebase/f;

.field private e:Lx8/e;

.field private f:Lw8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/b<",
            "La5/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/sessions/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/sessions/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lx8/e;)Lcom/google/firebase/sessions/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/a$b;->k(Lx8/e;)Lcom/google/firebase/sessions/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Lcom/google/firebase/f;)Lcom/google/firebase/sessions/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/a$b;->j(Lcom/google/firebase/f;)Lcom/google/firebase/sessions/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public build()Lcom/google/firebase/sessions/b;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/a$b;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ll9/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/sessions/a$b;->b:Lkotlin/coroutines/CoroutineContext;

    .line 9
    .line 10
    const-class v1, Lkotlin/coroutines/CoroutineContext;

    .line 11
    .line 12
    invoke-static {v0, v1}, Ll9/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/firebase/sessions/a$b;->c:Lkotlin/coroutines/CoroutineContext;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ll9/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/firebase/sessions/a$b;->d:Lcom/google/firebase/f;

    .line 21
    .line 22
    const-class v1, Lcom/google/firebase/f;

    .line 23
    .line 24
    invoke-static {v0, v1}, Ll9/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/firebase/sessions/a$b;->e:Lx8/e;

    .line 28
    .line 29
    const-class v1, Lx8/e;

    .line 30
    .line 31
    invoke-static {v0, v1}, Ll9/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/firebase/sessions/a$b;->f:Lw8/b;

    .line 35
    .line 36
    const-class v1, Lw8/b;

    .line 37
    .line 38
    invoke-static {v0, v1}, Ll9/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/google/firebase/sessions/a$c;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/google/firebase/sessions/a$b;->a:Landroid/content/Context;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/firebase/sessions/a$b;->b:Lkotlin/coroutines/CoroutineContext;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/google/firebase/sessions/a$b;->c:Lkotlin/coroutines/CoroutineContext;

    .line 48
    .line 49
    iget-object v6, p0, Lcom/google/firebase/sessions/a$b;->d:Lcom/google/firebase/f;

    .line 50
    .line 51
    iget-object v7, p0, Lcom/google/firebase/sessions/a$b;->e:Lx8/e;

    .line 52
    .line 53
    iget-object v8, p0, Lcom/google/firebase/sessions/a$b;->f:Lw8/b;

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    move-object v2, v0

    .line 57
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/sessions/a$c;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/f;Lx8/e;Lw8/b;Lcom/google/firebase/sessions/a$a;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method public bridge synthetic c(Landroid/content/Context;)Lcom/google/firebase/sessions/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/a$b;->g(Landroid/content/Context;)Lcom/google/firebase/sessions/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/a$b;->h(Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic e(Lw8/b;)Lcom/google/firebase/sessions/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/a$b;->l(Lw8/b;)Lcom/google/firebase/sessions/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic f(Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/a$b;->i(Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g(Landroid/content/Context;)Lcom/google/firebase/sessions/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/Context;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/sessions/a$b;->a:Landroid/content/Context;

    .line 8
    .line 9
    return-object p0
.end method

.method public h(Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/sessions/a$b;->b:Lkotlin/coroutines/CoroutineContext;

    .line 8
    .line 9
    return-object p0
.end method

.method public i(Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/sessions/a$b;->c:Lkotlin/coroutines/CoroutineContext;

    .line 8
    .line 9
    return-object p0
.end method

.method public j(Lcom/google/firebase/f;)Lcom/google/firebase/sessions/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/firebase/f;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/sessions/a$b;->d:Lcom/google/firebase/f;

    .line 8
    .line 9
    return-object p0
.end method

.method public k(Lx8/e;)Lcom/google/firebase/sessions/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lx8/e;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/sessions/a$b;->e:Lx8/e;

    .line 8
    .line 9
    return-object p0
.end method

.method public l(Lw8/b;)Lcom/google/firebase/sessions/a$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/b<",
            "La5/i;",
            ">;)",
            "Lcom/google/firebase/sessions/a$b;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ll9/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lw8/b;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/sessions/a$b;->f:Lw8/b;

    .line 8
    .line 9
    return-object p0
.end method
