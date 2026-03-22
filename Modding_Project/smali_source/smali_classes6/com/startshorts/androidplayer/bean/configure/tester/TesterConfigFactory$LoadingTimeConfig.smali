.class public final Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;
.super Ljava/lang/Object;
.source "TesterConfigFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadingTimeConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final cacheKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cacheKey"

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;->cacheKey:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final delayForTest(Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p1
.end method

.method public final getLoadingTime()I
    .locals 3

    .line 1
    sget-object v0, Ldd/k;->a:Ldd/k;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;->cacheKey:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/k;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final setLoadingTime(I)V
    .locals 2

    .line 1
    sget-object v0, Ldd/k;->a:Ldd/k;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;->cacheKey:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/k;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
