.class public final Ljs/a$a;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "ByteArrayPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljs/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/DefaultPool<",
        "[B>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic l()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljs/a$a;->r()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected r()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    return-object v0
.end method
