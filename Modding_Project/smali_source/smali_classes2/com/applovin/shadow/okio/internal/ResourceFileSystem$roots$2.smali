.class final Lcom/applovin/shadow/okio/internal/ResourceFileSystem$roots$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ResourceFileSystem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okio/internal/ResourceFileSystem;-><init>(Ljava/lang/ClassLoader;ZLcom/applovin/shadow/okio/FileSystem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lkotlin/Pair<",
        "+",
        "Lcom/applovin/shadow/okio/FileSystem;",
        "+",
        "Lcom/applovin/shadow/okio/Path;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/shadow/okio/internal/ResourceFileSystem;


# direct methods
.method constructor <init>(Lcom/applovin/shadow/okio/internal/ResourceFileSystem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okio/internal/ResourceFileSystem$roots$2;->this$0:Lcom/applovin/shadow/okio/internal/ResourceFileSystem;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/internal/ResourceFileSystem$roots$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/applovin/shadow/okio/FileSystem;",
            "Lcom/applovin/shadow/okio/Path;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/applovin/shadow/okio/internal/ResourceFileSystem$roots$2;->this$0:Lcom/applovin/shadow/okio/internal/ResourceFileSystem;

    invoke-static {v0}, Lcom/applovin/shadow/okio/internal/ResourceFileSystem;->access$getClassLoader$p(Lcom/applovin/shadow/okio/internal/ResourceFileSystem;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/shadow/okio/internal/ResourceFileSystem;->access$toClasspathRoots(Lcom/applovin/shadow/okio/internal/ResourceFileSystem;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
