.class public final Lcom/facebook/fresco/vito/options/ImageOptions$Companion;
.super Ljava/lang/Object;
.source "ImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/ImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->defaults()Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final defaults()Lcom/facebook/fresco/vito/options/ImageOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/fresco/vito/options/ImageOptions;->access$getDefaultImageOptions$cp()Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1
    .param p1    # Lcom/facebook/fresco/vito/options/ImageOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "imageOptions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;-><init>(Lcom/facebook/fresco/vito/options/ImageOptions;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final setDefaults(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/vito/options/ImageOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "imageOptions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->access$setDefaultImageOptions$cp(Lcom/facebook/fresco/vito/options/ImageOptions;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
