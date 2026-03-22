.class public final Lfq/p;
.super Ltq/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final b:Ltp/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltp/f;)V
    .locals 1
    .param p1    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adElement"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ltq/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lfq/p;->b:Ltp/f;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lfq/p;->b:Ltp/f;

    .line 2
    .line 3
    invoke-interface {v0}, Ltp/f;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Ltp/s;->h(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method
