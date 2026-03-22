.class public final Lcom/shorttv/aar/billing/util/CoroutineUtil$b;
.super Lkotlin/coroutines/a;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lgt/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shorttv/aar/billing/util/CoroutineUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 CoroutineUtil.kt\ncom/shorttv/aar/billing/util/CoroutineUtil\n*L\n1#1,49:1\n14#2,2:50\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lgt/d0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/CoroutineContext$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object p1, Lbd/b;->a:Lbd/b;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "globalIOScope \u672a\u6355\u83b7\u5f02\u5e38 -> "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "CoroutineUtil"

    .line 25
    .line 26
    invoke-virtual {p1, v0, p2}, Lbd/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
