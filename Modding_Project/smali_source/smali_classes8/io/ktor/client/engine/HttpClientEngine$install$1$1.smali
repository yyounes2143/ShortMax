.class final Lio/ktor/client/engine/HttpClientEngine$install$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpClientEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/HttpClientEngine$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lio/ktor/client/HttpClient;

.field final synthetic e:Ltr/c;


# direct methods
.method constructor <init>(Lio/ktor/client/HttpClient;Ltr/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngine$install$1$1;->d:Lio/ktor/client/HttpClient;

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/client/engine/HttpClientEngine$install$1$1;->e:Ltr/c;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/HttpClientEngine$install$1$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/ktor/client/engine/HttpClientEngine$install$1$1;->d:Lio/ktor/client/HttpClient;

    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->l()Lvr/b;

    move-result-object p1

    invoke-static {}, Lur/a;->c()Lvr/a;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/client/engine/HttpClientEngine$install$1$1;->e:Ltr/c;

    invoke-virtual {p1, v0, v1}, Lvr/b;->a(Lvr/a;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
