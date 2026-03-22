.class public final Lcom/startshorts/androidplayer/manager/player/feature/d$c;
.super Lcom/ss/ttm/player/BufferProcessCallback;
.source "DecryptFeature.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/player/feature/d;->a(Lcom/ss/ttvideoengine/TTVideoEngine;Llf/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/manager/player/feature/d;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/player/feature/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/ss/ttm/player/BufferProcessCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public closed(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "closed -> url("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ") ret("

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 p2, 0x29

    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {v0, p2}, Lcom/startshorts/androidplayer/manager/player/feature/d;->e(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 37
    .line 38
    invoke-static {p2, p1}, Lcom/startshorts/androidplayer/manager/player/feature/d;->f(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/player/feature/d$b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->a()Lof/c;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1}, Lof/c;->h()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public isChunk(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public opened(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/player/feature/d;->c(Lcom/startshorts/androidplayer/manager/player/feature/d;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "opened -> url("

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ") ret("

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p2, 0x29

    .line 34
    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {v0, p2}, Lcom/startshorts/androidplayer/manager/player/feature/d;->e(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 46
    .line 47
    invoke-static {p2, p1}, Lcom/startshorts/androidplayer/manager/player/feature/d;->d(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/player/feature/d$b;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-nez p2, :cond_2

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v1, "create session -> "

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {p2, v0}, Lcom/startshorts/androidplayer/manager/player/feature/d;->e(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Lof/c;

    .line 85
    .line 86
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 87
    .line 88
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string/jumbo v1, "shortmax00000000"

    .line 93
    .line 94
    .line 95
    invoke-direct {p2, v0, v1}, Lof/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 99
    .line 100
    new-instance v1, Lcom/startshorts/androidplayer/manager/player/feature/d$c$a;

    .line 101
    .line 102
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/manager/player/feature/d$c$a;-><init>(Lcom/startshorts/androidplayer/manager/player/feature/d;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v1}, Lof/c;->i(Lof/a;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/d$b;

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    const/4 v2, 0x2

    .line 112
    const/4 v3, 0x0

    .line 113
    invoke-direct {v0, p2, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/player/feature/d$b;-><init>(Lof/c;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 117
    .line 118
    invoke-static {p2, p1, v0}, Lcom/startshorts/androidplayer/manager/player/feature/d;->g(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/player/feature/d$b;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    :goto_0
    return-void
.end method

.method public processBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/player/feature/d;->d(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/player/feature/d$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;-><init>()V

    .line 12
    .line 13
    .line 14
    const p2, -0x18834

    .line 15
    .line 16
    .line 17
    iput p2, p1, Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;->ret:I

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->a()Lof/c;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p2}, Lof/c;->g(Ljava/nio/ByteBuffer;)Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance p2, Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;

    .line 29
    .line 30
    invoke-direct {p2}, Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->b()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, -0x2

    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->b()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p2, Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;->ret:I

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;->a()Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p2, Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;->buffer:Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/16 p1, -0xb

    .line 57
    .line 58
    iput p1, p2, Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;->ret:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    iput p1, p2, Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;->ret:I

    .line 63
    .line 64
    :goto_0
    return-object p2
.end method

.method public readed(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/player/feature/d;->d(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/player/feature/d$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const v1, -0x98967f

    .line 15
    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->a()Lof/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->START:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lof/c;->j(Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    if-nez p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->a()Lof/c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->END:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lof/c;->j(Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->c(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public seeked(Ljava/lang/String;JI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d$c;->a:Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "seeked -> url("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ") ret("

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, ") where("

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 p1, 0x29

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/player/feature/d;->e(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
