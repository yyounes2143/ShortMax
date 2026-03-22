.class public final Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkt/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ZipKt;->c(Lkt/b;Lkt/b;Lat/n;)Lkt/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkt/b<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,108:1\n29#2,2:109\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lkt/b;

.field final synthetic b:Lkt/b;

.field final synthetic c:Lat/n;


# direct methods
.method public constructor <init>(Lkt/b;Lkt/b;Lat/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;->a:Lkt/b;

    .line 2
    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;->b:Lkt/b;

    .line 4
    .line 5
    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;->c:Lat/n;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public collect(Lkt/c;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkt/c<",
            "-TR;>;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;->a:Lkt/b;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;->b:Lkt/b;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Lkt/b;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-object v1, v2, v0

    .line 13
    .line 14
    invoke-static {}, Lkotlinx/coroutines/flow/FlowKt__ZipKt;->a()Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    .line 19
    .line 20
    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;->c:Lat/n;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {v1, v3, v4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;-><init>(Lat/n;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v2, v0, v1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt;->a(Lkt/c;[Lkt/b;Lkotlin/jvm/functions/Function0;Lat/n;Lrs/c;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-ne p1, p2, :cond_0

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p1
.end method
