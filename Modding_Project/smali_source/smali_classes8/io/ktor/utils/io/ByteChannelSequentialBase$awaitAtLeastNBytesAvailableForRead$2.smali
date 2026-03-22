.class final Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ByteChannelSequential.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteChannelSequentialBase;->s(ILrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lio/ktor/utils/io/ByteChannelSequentialBase;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteChannelSequentialBase;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2;->d:Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 2
    .line 3
    iput p2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2;->e:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2;->d:Lio/ktor/utils/io/ByteChannelSequentialBase;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->c()I

    move-result v0

    iget v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2;->e:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2;->d:Lio/ktor/utils/io/ByteChannelSequentialBase;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
