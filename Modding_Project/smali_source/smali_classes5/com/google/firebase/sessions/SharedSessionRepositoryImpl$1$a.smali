.class final Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$1$a;
.super Ljava/lang/Object;
.source "SharedSessionRepository.kt"

# interfaces
.implements Lkt/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkt/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$1$a;->a:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/sessions/i;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/i;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$1$a;->a:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->r(Lcom/google/firebase/sessions/i;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/sessions/i;->f()Lcom/google/firebase/sessions/j;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/sessions/j;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$1$a;->a:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 15
    .line 16
    sget-object v1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;->GENERAL:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    .line 17
    .line 18
    invoke-static {v0, p1, v1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->l(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Ljava/lang/String;Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;Lrs/c;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-ne p1, p2, :cond_0

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/firebase/sessions/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$1$a;->a(Lcom/google/firebase/sessions/i;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
