.class public final Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;
.super Ljava/lang/Object;
.source "DecryptResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final RESULT_EAGAIN:I = -0x1
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final RESULT_EOF:I = -0x2
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final c:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->c:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->a:I

    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteBuffer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/internal/DefaultConstructorMarker;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;-><init>(ILjava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    const-class v2, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.manager.player.feature.decryptor.DecryptResult"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 29
    .line 30
    iget v1, p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->a:I

    .line 31
    .line 32
    iget v3, p1, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->a:I

    .line 33
    .line 34
    if-eq v1, v3, :cond_3

    .line 35
    .line 36
    return v2

    .line 37
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->b:Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->b:Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_4

    .line 46
    .line 47
    return v2

    .line 48
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->b:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DecryptResult(result="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", data="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->b:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
