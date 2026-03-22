.class final Landroidx/room/coroutines/Pool$acquire$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ConnectionPoolImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/coroutines/Pool;->acquire(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.room.coroutines.Pool"
    f = "ConnectionPoolImpl.kt"
    l = {
        0xec
    }
    m = "acquire"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/room/coroutines/Pool;


# direct methods
.method constructor <init>(Landroidx/room/coroutines/Pool;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/coroutines/Pool;",
            "Lrs/c<",
            "-",
            "Landroidx/room/coroutines/Pool$acquire$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/coroutines/Pool$acquire$1;->this$0:Landroidx/room/coroutines/Pool;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/coroutines/Pool$acquire$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/room/coroutines/Pool$acquire$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/room/coroutines/Pool$acquire$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/room/coroutines/Pool$acquire$1;->this$0:Landroidx/room/coroutines/Pool;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroidx/room/coroutines/Pool;->acquire(Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
