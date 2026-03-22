.class public final Lpr/a;
.super Ljava/lang/Object;
.source "Android.kt"

# interfaces
.implements Lor/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lor/e<",
        "Lio/ktor/client/engine/android/AndroidEngineConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lpr/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lpr/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lpr/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lpr/a;->a:Lpr/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/engine/HttpClientEngine;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/engine/android/AndroidEngineConfig;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/client/engine/HttpClientEngine;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/ktor/client/engine/android/AndroidClientEngine;

    .line 7
    .line 8
    new-instance v1, Lio/ktor/client/engine/android/AndroidEngineConfig;

    .line 9
    .line 10
    invoke-direct {v1}, Lio/ktor/client/engine/android/AndroidEngineConfig;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lio/ktor/client/engine/android/AndroidClientEngine;-><init>(Lio/ktor/client/engine/android/AndroidEngineConfig;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
