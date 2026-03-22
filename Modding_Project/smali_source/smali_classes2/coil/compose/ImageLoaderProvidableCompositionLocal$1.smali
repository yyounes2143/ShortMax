.class final Lcoil/compose/ImageLoaderProvidableCompositionLocal$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LocalImageLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/ImageLoaderProvidableCompositionLocal;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/compose/runtime/ProvidableCompositionLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcoil/ImageLoader;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lcoil/compose/ImageLoaderProvidableCompositionLocal$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcoil/compose/ImageLoaderProvidableCompositionLocal$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcoil/compose/ImageLoaderProvidableCompositionLocal$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcoil/compose/ImageLoaderProvidableCompositionLocal$1;->d:Lcoil/compose/ImageLoaderProvidableCompositionLocal$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final b()Lcoil/ImageLoader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcoil/compose/ImageLoaderProvidableCompositionLocal$1;->b()Lcoil/ImageLoader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
