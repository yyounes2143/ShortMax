.class public final Landroidx/navigation/NavDeepLinkDslBuilder;
.super Ljava/lang/Object;
.source "NavDeepLinkDslBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDeepLinkDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private action:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final builder:Landroidx/navigation/NavDeepLink$Builder;

.field private mimeType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private uriPattern:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/navigation/NavDeepLink$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/navigation/NavDeepLink$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->builder:Landroidx/navigation/NavDeepLink$Builder;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final build$navigation_common_ktx_release()Landroidx/navigation/NavDeepLink;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->builder:Landroidx/navigation/NavDeepLink$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->uriPattern:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->action:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->mimeType:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 19
    :goto_1
    if-eqz v2, :cond_5

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/navigation/NavDeepLink$Builder;->setUriPattern(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v1, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->action:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/navigation/NavDeepLink$Builder;->setAction(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    .line 31
    .line 32
    .line 33
    :cond_3
    iget-object v1, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->mimeType:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/navigation/NavDeepLink$Builder;->setMimeType(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    .line 38
    .line 39
    .line 40
    :cond_4
    invoke-virtual {v0}, Landroidx/navigation/NavDeepLink$Builder;->build()Landroidx/navigation/NavDeepLink;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "builder.apply {\n        \u2026eType(it) }\n    }.build()"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v1, "The NavDeepLink must have an uri, action, and/or mimeType."

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUriPattern()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->uriPattern:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAction(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "The NavDeepLink cannot have an empty action."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->action:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public final setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUriPattern(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/navigation/NavDeepLinkDslBuilder;->uriPattern:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
