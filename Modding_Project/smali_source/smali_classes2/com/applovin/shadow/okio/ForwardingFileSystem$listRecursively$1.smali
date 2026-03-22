.class final Lcom/applovin/shadow/okio/ForwardingFileSystem$listRecursively$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ForwardingFileSystem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okio/ForwardingFileSystem;->listRecursively(Lcom/applovin/shadow/okio/Path;Z)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/applovin/shadow/okio/Path;",
        "Lcom/applovin/shadow/okio/Path;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/shadow/okio/ForwardingFileSystem;


# direct methods
.method constructor <init>(Lcom/applovin/shadow/okio/ForwardingFileSystem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okio/ForwardingFileSystem$listRecursively$1;->this$0:Lcom/applovin/shadow/okio/ForwardingFileSystem;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Lcom/applovin/shadow/okio/Path;)Lcom/applovin/shadow/okio/Path;
    .locals 2
    .param p1    # Lcom/applovin/shadow/okio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okio/ForwardingFileSystem$listRecursively$1;->this$0:Lcom/applovin/shadow/okio/ForwardingFileSystem;

    const-string v1, "listRecursively"

    invoke-virtual {v0, p1, v1}, Lcom/applovin/shadow/okio/ForwardingFileSystem;->onPathResult(Lcom/applovin/shadow/okio/Path;Ljava/lang/String;)Lcom/applovin/shadow/okio/Path;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/applovin/shadow/okio/Path;

    invoke-virtual {p0, p1}, Lcom/applovin/shadow/okio/ForwardingFileSystem$listRecursively$1;->invoke(Lcom/applovin/shadow/okio/Path;)Lcom/applovin/shadow/okio/Path;

    move-result-object p1

    return-object p1
.end method
