.class public abstract Lkotlinx/serialization/json/a;
.super Ljava/lang/Object;
.source "Json.kt"

# interfaces
.implements Lst/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lkotlinx/serialization/json/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lkotlinx/serialization/json/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lxt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lwt/y;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/json/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/serialization/json/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lkotlinx/serialization/json/e;Lxt/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lkotlinx/serialization/json/a;->a:Lkotlinx/serialization/json/e;

    .line 4
    iput-object p2, p0, Lkotlinx/serialization/json/a;->b:Lxt/a;

    .line 5
    new-instance p1, Lwt/y;

    invoke-direct {p1}, Lwt/y;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/a;->c:Lwt/y;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/e;Lxt/a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/a;-><init>(Lkotlinx/serialization/json/e;Lxt/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lst/l;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Lst/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lst/l<",
            "-TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "serializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lwt/i0;

    .line 7
    .line 8
    invoke-direct {v0}, Lwt/i0;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lwt/h0;->a(Lkotlinx/serialization/json/a;Lwt/z;Lst/l;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lwt/i0;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v0}, Lwt/i0;->g()V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v0}, Lwt/i0;->g()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final b(Lst/c;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lst/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lst/c<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "deserializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "string"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p2}, Lwt/v0;->a(Lkotlinx/serialization/json/a;Ljava/lang/String;)Lwt/u0;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance v0, Lwt/r0;

    .line 16
    .line 17
    sget-object v3, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    .line 18
    .line 19
    invoke-interface {p1}, Lst/c;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v1, v0

    .line 25
    move-object v2, p0

    .line 26
    move-object v4, p2

    .line 27
    invoke-direct/range {v1 .. v6}, Lwt/r0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;Lwt/a;Lkotlinx/serialization/descriptors/SerialDescriptor;Lwt/r0$a;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lwt/r0;->decodeSerializableValue(Lst/c;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2}, Lwt/a;->v()V

    .line 35
    .line 36
    .line 37
    return-object p1
.end method

.method public final c(Lst/c;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lst/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lst/c<",
            "+TT;>;",
            "Lkotlinx/serialization/json/JsonElement;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "deserializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "element"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p2, p1}, Lwt/y0;->a(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonElement;Lst/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final d()Lkotlinx/serialization/json/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/a;->a:Lkotlinx/serialization/json/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lwt/y;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/a;->c:Lwt/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializersModule()Lxt/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/a;->b:Lxt/a;

    .line 2
    .line 3
    return-object v0
.end method
