.class final Lio/ktor/client/engine/android/AndroidEngineConfig$sslManager$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidEngineConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/android/AndroidEngineConfig;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljavax/net/ssl/HttpsURLConnection;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lio/ktor/client/engine/android/AndroidEngineConfig$sslManager$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/client/engine/android/AndroidEngineConfig$sslManager$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/ktor/client/engine/android/AndroidEngineConfig$sslManager$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/client/engine/android/AndroidEngineConfig$sslManager$1;->d:Lio/ktor/client/engine/android/AndroidEngineConfig$sslManager$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final b(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1
    .param p1    # Ljavax/net/ssl/HttpsURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/engine/android/AndroidEngineConfig$sslManager$1;->b(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
