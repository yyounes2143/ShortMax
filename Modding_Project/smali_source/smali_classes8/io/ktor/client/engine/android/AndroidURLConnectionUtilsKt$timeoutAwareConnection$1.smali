.class final Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AndroidURLConnectionUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt;->e(Ljava/net/HttpURLConnection;Lsr/c;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.client.engine.android.AndroidURLConnectionUtilsKt"
    f = "AndroidURLConnectionUtils.kt"
    l = {
        0x3c
    }
    m = "timeoutAwareConnection"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field synthetic j:Ljava/lang/Object;

.field k:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 2
    .line 3
    .line 4
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
    iput-object p1, p0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;->k:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;->k:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1, p1, p1, p0}, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt;->e(Ljava/net/HttpURLConnection;Lsr/c;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
