.class public final Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$a;
.super Lkotlin/coroutines/a;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lgt/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 HomeRetainDiscountSubsPresent.kt\ncom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent\n*L\n1#1,49:1\n36#2,9:50\n*E\n"
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
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/Exception;

    .line 2
    .line 3
    const-string v0, "autoCatchMainScope:\u81ea\u52a8catch\u5f02\u5e38\u7684\u534f\u7a0bscope\u6355\u83b7\u5230\u5f02\u5e38"

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
