.class final Landroidx/datastore/core/DataStoreImpl$writeActor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DataStoreImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/DataStoreImpl;-><init>(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lgt/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/datastore/core/Message$Update<",
        "TT;>;",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/datastore/core/DataStoreImpl$writeActor$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$writeActor$2;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/datastore/core/DataStoreImpl$writeActor$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/core/DataStoreImpl$writeActor$2;->INSTANCE:Landroidx/datastore/core/DataStoreImpl$writeActor$2;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/datastore/core/Message$Update;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$writeActor$2;->invoke(Landroidx/datastore/core/Message$Update;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/datastore/core/Message$Update;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Landroidx/datastore/core/Message$Update;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/Message$Update<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/datastore/core/Message$Update;->getAck()Lgt/p;

    move-result-object p1

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Ljava/util/concurrent/CancellationException;

    .line 4
    const-string v0, "DataStore scope was cancelled before updateData could complete"

    .line 5
    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-interface {p1, p2}, Lgt/p;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
