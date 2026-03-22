.class final Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Codecs.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/CodecsKt;->q(Ljava/lang/String;ZZLjava/nio/charset/Charset;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Byte;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic e:Ljava/lang/StringBuilder;

.field final synthetic f:Z


# direct methods
.method constructor <init>(ZLjava/lang/StringBuilder;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;->d:Z

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;->e:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    iput-boolean p3, p0, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;->f:Z

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
.method public final b(B)V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;->d:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;->e:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const/16 v0, 0x2b

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object p1, p0, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;->e:Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "%20"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {}, Lio/ktor/http/CodecsKt;->b()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    iget-boolean v0, p0, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;->f:Z

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lio/ktor/http/CodecsKt;->c()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;->e:Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-static {p1}, Lio/ktor/http/CodecsKt;->d(B)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;->e:Ljava/lang/StringBuilder;

    .line 69
    .line 70
    int-to-char p1, p1

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;->b(B)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p1
.end method
