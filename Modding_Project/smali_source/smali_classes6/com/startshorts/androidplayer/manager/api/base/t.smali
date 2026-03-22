.class public final Lcom/startshorts/androidplayer/manager/api/base/t;
.super Lfu/h$a;
.source "ResponseConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/api/base/t$a;,
        Lcom/startshorts/androidplayer/manager/api/base/t$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/api/base/t$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/t$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/api/base/t$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/t;->a:Lcom/startshorts/androidplayer/manager/api/base/t$a;

    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/s;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/s;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/t;->b:Lms/i;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfu/h$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/api/base/t;->h()Lcom/google/gson/Gson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic g()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/t;->b:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final h()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lfu/d0;)Lfu/h;
    .locals 1
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/annotation/Annotation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lfu/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lfu/d0;",
            ")",
            "Lfu/h<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "type"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "annotations"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p2, "retrofit"

    .line 13
    .line 14
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p2, Lcom/startshorts/androidplayer/manager/api/base/t;->a:Lcom/startshorts/androidplayer/manager/api/base/t$a;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/startshorts/androidplayer/manager/api/base/t$a;->a(Lcom/startshorts/androidplayer/manager/api/base/t$a;)Lcom/google/gson/Gson;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Lcom/startshorts/androidplayer/manager/api/base/t$b;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, p1}, Lcom/startshorts/androidplayer/manager/api/base/t$b;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 37
    .line 38
    .line 39
    return-object p2
.end method
