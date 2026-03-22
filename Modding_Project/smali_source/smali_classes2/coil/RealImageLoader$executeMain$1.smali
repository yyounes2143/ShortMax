.class final Lcoil/RealImageLoader$executeMain$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RealImageLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/RealImageLoader;->g(Lm0/f;ILrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "coil.RealImageLoader"
    f = "RealImageLoader.kt"
    l = {
        0xa9,
        0xb4,
        0xb8
    }
    m = "executeMain"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field synthetic m:Ljava/lang/Object;

.field final synthetic n:Lcoil/RealImageLoader;

.field o:I


# direct methods
.method constructor <init>(Lcoil/RealImageLoader;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/RealImageLoader;",
            "Lrs/c<",
            "-",
            "Lcoil/RealImageLoader$executeMain$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/RealImageLoader$executeMain$1;->n:Lcoil/RealImageLoader;

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
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/RealImageLoader$executeMain$1;->m:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcoil/RealImageLoader$executeMain$1;->o:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcoil/RealImageLoader$executeMain$1;->o:I

    .line 9
    .line 10
    iget-object p1, p0, Lcoil/RealImageLoader$executeMain$1;->n:Lcoil/RealImageLoader;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p1, v0, v1, p0}, Lcoil/RealImageLoader;->e(Lcoil/RealImageLoader;Lm0/f;ILrs/c;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
