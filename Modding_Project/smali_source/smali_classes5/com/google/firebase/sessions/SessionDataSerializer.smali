.class public final Lcom/google/firebase/sessions/SessionDataSerializer;
.super Ljava/lang/Object;
.source "SessionData.kt"

# interfaces
.implements Landroidx/datastore/core/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/Serializer<",
        "Lcom/google/firebase/sessions/i;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSessionData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionData.kt\ncom/google/firebase/sessions/SessionDataSerializer\n+ 2 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,59:1\n147#2:60\n*S KotlinDebug\n*F\n+ 1 SessionData.kt\ncom/google/firebase/sessions/SessionDataSerializer\n*L\n49#1:60\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Lj9/f0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj9/f0;)V
    .locals 1
    .param p1    # Lj9/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sessionGenerator"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionDataSerializer;->a:Lj9/f0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/sessions/i;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lcom/google/firebase/sessions/i;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionDataSerializer;->a:Lj9/f0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lj9/f0;->a(Lcom/google/firebase/sessions/j;)Lcom/google/firebase/sessions/j;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v4, 0x6

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    move-object v0, v6

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/sessions/i;-><init>(Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    return-object v6
.end method

.method public b(Lcom/google/firebase/sessions/i;Ljava/io/OutputStream;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/google/firebase/sessions/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/i;",
            "Ljava/io/OutputStream;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object p3, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    .line 2
    .line 3
    sget-object v0, Lcom/google/firebase/sessions/i;->Companion:Lcom/google/firebase/sessions/i$$b;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/sessions/i$$b;->serializer()Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lst/l;

    .line 10
    .line 11
    invoke-virtual {p3, v0, p1}, Lkotlinx/serialization/json/a;->a(Lst/l;Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/text/StringsKt;->D(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionDataSerializer;->a()Lcom/google/firebase/sessions/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lrs/c<",
            "-",
            "Lcom/google/firebase/sessions/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    sget-object p2, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    .line 2
    .line 3
    invoke-static {p1}, Lws/a;->c(Ljava/io/InputStream;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lkotlin/text/StringsKt;->C([B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2}, Lkotlinx/serialization/json/a;->getSerializersModule()Lxt/a;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/google/firebase/sessions/i;->Companion:Lcom/google/firebase/sessions/i$$b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/firebase/sessions/i$$b;->serializer()Lkotlinx/serialization/KSerializer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lst/c;

    .line 21
    .line 22
    invoke-virtual {p2, v0, p1}, Lkotlinx/serialization/json/a;->b(Lst/c;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/firebase/sessions/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    return-object p1

    .line 29
    :catch_0
    move-exception p1

    .line 30
    new-instance p2, Landroidx/datastore/core/CorruptionException;

    .line 31
    .line 32
    const-string v0, "Cannot parse session data"

    .line 33
    .line 34
    invoke-direct {p2, v0, p1}, Landroidx/datastore/core/CorruptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p2
.end method

.method public bridge synthetic writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/firebase/sessions/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/sessions/SessionDataSerializer;->b(Lcom/google/firebase/sessions/i;Ljava/io/OutputStream;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
