.class final Lcom/applovin/shadow/okio/internal/ResourceFileSystem$Companion;
.super Ljava/lang/Object;
.source "ResourceFileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/shadow/okio/internal/ResourceFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/shadow/okio/internal/ResourceFileSystem$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$keepPath(Lcom/applovin/shadow/okio/internal/ResourceFileSystem$Companion;Lcom/applovin/shadow/okio/Path;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/shadow/okio/internal/ResourceFileSystem$Companion;->keepPath(Lcom/applovin/shadow/okio/Path;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final keepPath(Lcom/applovin/shadow/okio/Path;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/Path;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, ".class"

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    xor-int/2addr p1, v1

    .line 13
    return p1
.end method


# virtual methods
.method public final getROOT()Lcom/applovin/shadow/okio/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/applovin/shadow/okio/internal/ResourceFileSystem;->access$getROOT$cp()Lcom/applovin/shadow/okio/Path;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final removeBase(Lcom/applovin/shadow/okio/Path;Lcom/applovin/shadow/okio/Path;)Lcom/applovin/shadow/okio/Path;
    .locals 7
    .param p1    # Lcom/applovin/shadow/okio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "base"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/applovin/shadow/okio/Path;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/internal/ResourceFileSystem$Companion;->getROOT()Lcom/applovin/shadow/okio/Path;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/Path;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->O0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v5, 0x4

    .line 28
    const/4 v6, 0x0

    .line 29
    const/16 v2, 0x5c

    .line 30
    .line 31
    const/16 v3, 0x2f

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/applovin/shadow/okio/Path;->resolve(Ljava/lang/String;)Lcom/applovin/shadow/okio/Path;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method
