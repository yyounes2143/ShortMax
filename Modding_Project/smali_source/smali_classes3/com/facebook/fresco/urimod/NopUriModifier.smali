.class public final Lcom/facebook/fresco/urimod/NopUriModifier;
.super Ljava/lang/Object;
.source "NopUriModifier.kt"

# interfaces
.implements Lcom/facebook/fresco/urimod/UriModifierInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/fresco/urimod/NopUriModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/urimod/NopUriModifier;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/fresco/urimod/NopUriModifier;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/fresco/urimod/NopUriModifier;->INSTANCE:Lcom/facebook/fresco/urimod/NopUriModifier;

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
.method public modifyPrefetchUri(Landroid/net/Uri;Ljava/lang/Object;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "uri"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public modifyUri(Lcom/facebook/fresco/vito/source/UriImageSource;Lcom/facebook/fresco/urimod/Dimensions;Lc3/q;Ljava/lang/Object;Lcom/facebook/common/callercontext/ContextChain;Z)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
    .locals 0
    .param p1    # Lcom/facebook/fresco/vito/source/UriImageSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/urimod/Dimensions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/common/callercontext/ContextChain;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "imageSource"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Disabled;

    .line 7
    .line 8
    const-string p2, "NopUriModifier"

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Disabled;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method

.method public unregisterReverseFallbackUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
