.class public final Lcom/facebook/appevents/g0;
.super Ljava/lang/Object;
.source "FlushStatistics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/facebook/appevents/FlushResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    sget-object v0, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/facebook/appevents/g0;->b:Lcom/facebook/appevents/FlushResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/appevents/g0;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()Lcom/facebook/appevents/FlushResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/g0;->b:Lcom/facebook/appevents/FlushResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/appevents/g0;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final d(Lcom/facebook/appevents/FlushResult;)V
    .locals 1
    .param p1    # Lcom/facebook/appevents/FlushResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/facebook/appevents/g0;->b:Lcom/facebook/appevents/FlushResult;

    .line 7
    .line 8
    return-void
.end method
