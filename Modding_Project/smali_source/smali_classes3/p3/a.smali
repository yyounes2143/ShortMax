.class public final Lp3/a;
.super Ljava/lang/Object;
.source "OkHttpImagePipelineConfigFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lp3/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lp3/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lp3/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp3/a;->a:Lp3/a;

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

.method public static final a(Landroid/content/Context;Lokhttp3/OkHttpClient;)Lt3/s$a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "okHttpClient"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lt3/s;->M:Lt3/s$b;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lt3/s$b;->i(Landroid/content/Context;)Lt3/s$a;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Lcom/facebook/imagepipeline/backends/okhttp3/a;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/backends/okhttp3/a;-><init>(Lokhttp3/OkHttpClient;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lt3/s$a;->X(Lcom/facebook/imagepipeline/producers/v0;)Lt3/s$a;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
