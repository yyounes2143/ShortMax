.class final Lio/ktor/client/HttpClient$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/HttpClient;-><init>(Lio/ktor/client/engine/HttpClientEngine;Lio/ktor/client/HttpClientConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/client/HttpClient;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lio/ktor/client/HttpClient$3$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/client/HttpClient$3$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/ktor/client/HttpClient$3$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/client/HttpClient$3$1;->d:Lio/ktor/client/HttpClient$3$1;

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
.method public final b(Lio/ktor/client/HttpClient;)V
    .locals 1
    .param p1    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$install"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lio/ktor/client/plugins/DefaultTransformKt;->b(Lio/ktor/client/HttpClient;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/client/HttpClient;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/HttpClient$3$1;->b(Lio/ktor/client/HttpClient;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
