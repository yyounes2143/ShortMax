.class public final Lkh/a;
.super Ljava/lang/Object;
.source "UnlockLocalDS.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkh/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUnlockLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockLocalDS.kt\ncom/startshorts/androidplayer/repo/unlock/UnlockLocalDS\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lkh/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkh/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkh/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkh/a;->a:Lkh/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lrs/c;)Ljava/lang/Object;
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
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/unlock/QuerySubsFirstDiscountResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object p1, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lud/b;->o1()Lcom/startshorts/androidplayer/bean/unlock/QuerySubsFirstDiscountResult;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 15
    .line 16
    sget-object p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->Companion:Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;->getUNKNOWN_EXCEPTION()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    return-object p1
.end method

.method public final b(Lrs/c;)Ljava/lang/Object;
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
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object p1, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lud/b;->q1()Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 15
    .line 16
    sget-object p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->Companion:Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;->getUNKNOWN_EXCEPTION()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    return-object p1
.end method

.method public final c(Lrs/c;)Ljava/lang/Object;
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
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object p1, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lud/b;->r1()Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 15
    .line 16
    sget-object p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->Companion:Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;->getUNKNOWN_EXCEPTION()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    return-object p1
.end method

.method public final d(Lcom/startshorts/androidplayer/bean/unlock/QuerySubsFirstDiscountResult;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/unlock/QuerySubsFirstDiscountResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lud/b;->C4(Lcom/startshorts/androidplayer/bean/unlock/QuerySubsFirstDiscountResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lud/b;->E4(Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lud/b;->F4(Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
