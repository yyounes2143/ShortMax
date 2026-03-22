.class public final Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;
.super Ljava/lang/Object;
.source "SessionConfigs.kt"

# interfaces
.implements Landroidx/datastore/core/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/Serializer<",
        "Lcom/google/firebase/sessions/settings/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSessionConfigs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionConfigs.kt\ncom/google/firebase/sessions/settings/SessionConfigsSerializer\n+ 2 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,59:1\n147#2:60\n*S KotlinDebug\n*F\n+ 1 SessionConfigs.kt\ncom/google/firebase/sessions/settings/SessionConfigsSerializer\n*L\n49#1:60\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lcom/google/firebase/sessions/settings/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->a:Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;

    .line 7
    .line 8
    new-instance v0, Lcom/google/firebase/sessions/settings/a;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v1, v0

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/sessions/settings/a;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->b:Lcom/google/firebase/sessions/settings/a;

    .line 20
    .line 21
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
.method public a()Lcom/google/firebase/sessions/settings/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->b:Lcom/google/firebase/sessions/settings/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Lcom/google/firebase/sessions/settings/a;Ljava/io/OutputStream;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/google/firebase/sessions/settings/a;
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
            "Lcom/google/firebase/sessions/settings/a;",
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
    sget-object v0, Lcom/google/firebase/sessions/settings/a;->Companion:Lcom/google/firebase/sessions/settings/a$$b;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/a$$b;->serializer()Lkotlinx/serialization/KSerializer;

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
    invoke-virtual {p0}, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->a()Lcom/google/firebase/sessions/settings/a;

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
            "Lcom/google/firebase/sessions/settings/a;",
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
    sget-object v0, Lcom/google/firebase/sessions/settings/a;->Companion:Lcom/google/firebase/sessions/settings/a$$b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/a$$b;->serializer()Lkotlinx/serialization/KSerializer;

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
    check-cast p1, Lcom/google/firebase/sessions/settings/a;
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
    const-string v0, "Cannot parse session configs"

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
    check-cast p1, Lcom/google/firebase/sessions/settings/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->b(Lcom/google/firebase/sessions/settings/a;Ljava/io/OutputStream;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
