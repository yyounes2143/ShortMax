.class final Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AndroidClientEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/android/AndroidClientEngine;->r0(Lsr/c;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.client.engine.android.AndroidClientEngine"
    f = "AndroidClientEngine.kt"
    l = {
        0x23,
        0x4f,
        0x52
    }
    m = "execute"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field synthetic l:Ljava/lang/Object;

.field final synthetic m:Lio/ktor/client/engine/android/AndroidClientEngine;

.field n:I


# direct methods
.method constructor <init>(Lio/ktor/client/engine/android/AndroidClientEngine;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/android/AndroidClientEngine;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->m:Lio/ktor/client/engine/android/AndroidClientEngine;

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
    iput-object p1, p0, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->l:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->n:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->n:I

    .line 9
    .line 10
    iget-object p1, p0, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->m:Lio/ktor/client/engine/android/AndroidClientEngine;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lio/ktor/client/engine/android/AndroidClientEngine;->r0(Lsr/c;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
