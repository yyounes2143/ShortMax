.class final Lkotlinx/coroutines/channels/g;
.super Ljava/lang/Object;
.source "BufferedChannel.kt"

# interfaces
.implements Lgt/y1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgt/y1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/e<",
            "Lkotlinx/coroutines/channels/a<",
            "+TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/e;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/e<",
            "-",
            "Lkotlinx/coroutines/channels/a<",
            "+TE;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/channels/g;->a:Lkotlinx/coroutines/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public g(Lmt/x;I)V
    .locals 1
    .param p1    # Lmt/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmt/x<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/g;->a:Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/e;->g(Lmt/x;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
