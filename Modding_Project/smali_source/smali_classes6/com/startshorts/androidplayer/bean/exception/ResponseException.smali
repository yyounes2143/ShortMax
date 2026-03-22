.class public final Lcom/startshorts/androidplayer/bean/exception/ResponseException;
.super Ljava/lang/Exception;
.source "ResponseException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UNKNOWN_EXCEPTION:Lcom/startshorts/androidplayer/bean/exception/ResponseException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private code:I

.field private errorExtra:Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isToast:Z

.field private message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->Companion:Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 10
    .line 11
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 12
    .line 13
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x15f90

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v2, v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->UNKNOWN_EXCEPTION:Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput p1, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->code:I

    .line 3
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->setMessage(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isToast:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 6
    iput p1, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->code:I

    .line 7
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->setMessage(Ljava/lang/String;)V

    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->errorExtra:Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 9
    iput-boolean p4, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isToast:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 11
    iput p1, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->code:I

    .line 12
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->setMessage(Ljava/lang/String;)V

    .line 13
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isToast:Z

    return-void
.end method

.method public static final synthetic access$getUNKNOWN_EXCEPTION$cp()Lcom/startshorts/androidplayer/bean/exception/ResponseException;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->UNKNOWN_EXCEPTION:Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public final getErrorExtra()Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->errorExtra:Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isNetworkError()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->code:I

    .line 2
    .line 3
    const v1, 0x15f91

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final isShortsOrEpisodeNotFind()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->code:I

    .line 2
    .line 3
    const/16 v1, 0x4e2c

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x4e2d

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x4e65

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public final isToast()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isToast:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->code:I

    .line 2
    .line 3
    return-void
.end method

.method public final setErrorExtra(Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->errorExtra:Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setToast(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isToast:Z

    .line 2
    .line 3
    return-void
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
    const-string v1, "ResponseException(code="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->code:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", message=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "\', isToast="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isToast:Z

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", errorExtra="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->errorExtra:Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v1, 0x29

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
