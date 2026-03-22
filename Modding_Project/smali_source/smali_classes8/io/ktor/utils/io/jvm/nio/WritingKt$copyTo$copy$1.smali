.class final Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Writing.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/nio/WritingKt;->a(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/WritableByteChannel;JLrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/nio/ByteBuffer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic e:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic f:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(JLkotlin/jvm/internal/Ref$LongRef;Ljava/nio/channels/WritableByteChannel;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;->d:J

    .line 2
    .line 3
    iput-object p3, p0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;->e:Lkotlin/jvm/internal/Ref$LongRef;

    .line 4
    .line 5
    iput-object p4, p0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;->f:Ljava/nio/channels/WritableByteChannel;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bb"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;->d:J

    .line 7
    .line 8
    iget-object v2, p0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;->e:Lkotlin/jvm/internal/Ref$LongRef;

    .line 9
    .line 10
    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-long v2, v2

    .line 18
    cmp-long v2, v0, v2

    .line 19
    .line 20
    if-gez v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    long-to-int v4, v0

    .line 31
    add-int/2addr v3, v4

    .line 32
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    iget-object v3, p0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;->f:Ljava/nio/channels/WritableByteChannel;

    .line 42
    .line 43
    invoke-interface {v3, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;->e:Lkotlin/jvm/internal/Ref$LongRef;

    .line 51
    .line 52
    iget-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 53
    .line 54
    add-long/2addr v2, v0

    .line 55
    iput-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    const-wide/16 v0, 0x0

    .line 59
    .line 60
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;->f:Ljava/nio/channels/WritableByteChannel;

    .line 67
    .line 68
    invoke-interface {v2, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    int-to-long v2, v2

    .line 73
    add-long/2addr v0, v2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget-object p1, p0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;->e:Lkotlin/jvm/internal/Ref$LongRef;

    .line 76
    .line 77
    iget-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 78
    .line 79
    add-long/2addr v2, v0

    .line 80
    iput-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 81
    .line 82
    :goto_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;->b(Ljava/nio/ByteBuffer;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
