.class public final Lio/ktor/client/engine/android/AndroidEngineConfig;
.super Lor/d;
.source "AndroidEngineConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private c:I

.field private d:I

.field private e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljavax/net/ssl/HttpsURLConnection;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/HttpURLConnection;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lor/d;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x186a0

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lio/ktor/client/engine/android/AndroidEngineConfig;->c:I

    .line 8
    .line 9
    iput v0, p0, Lio/ktor/client/engine/android/AndroidEngineConfig;->d:I

    .line 10
    .line 11
    sget-object v0, Lio/ktor/client/engine/android/AndroidEngineConfig$sslManager$1;->d:Lio/ktor/client/engine/android/AndroidEngineConfig$sslManager$1;

    .line 12
    .line 13
    iput-object v0, p0, Lio/ktor/client/engine/android/AndroidEngineConfig;->e:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    sget-object v0, Lio/ktor/client/engine/android/AndroidEngineConfig$requestConfig$1;->d:Lio/ktor/client/engine/android/AndroidEngineConfig$requestConfig$1;

    .line 16
    .line 17
    iput-object v0, p0, Lio/ktor/client/engine/android/AndroidEngineConfig;->f:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/client/engine/android/AndroidEngineConfig;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/net/HttpURLConnection;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/engine/android/AndroidEngineConfig;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/client/engine/android/AndroidEngineConfig;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljavax/net/ssl/HttpsURLConnection;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/engine/android/AndroidEngineConfig;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method
