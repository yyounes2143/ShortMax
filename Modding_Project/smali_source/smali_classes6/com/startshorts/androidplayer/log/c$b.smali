.class public final Lcom/startshorts/androidplayer/log/c$b;
.super Ljava/lang/Object;
.source "LoggerUploadAppLog.kt"

# interfaces
.implements Lna/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/log/c;->b(Ljava/io/File;Ljava/lang/String;Lcom/startshorts/androidplayer/log/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/log/c$b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/log/c$a;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/log/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/log/c$b;->a:Lcom/startshorts/androidplayer/log/c$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/hades/aar/storage/base/UploadStatus;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "state"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "msg"

    .line 13
    .line 14
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/startshorts/androidplayer/log/c$b$a;->$EnumSwitchMapping$0:[I

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    aget p1, p1, p2

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    if-eq p1, p2, :cond_1

    .line 27
    .line 28
    const/4 p2, 0x2

    .line 29
    if-eq p1, p2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/log/c$b;->a:Lcom/startshorts/androidplayer/log/c$a;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-interface {p1, p3}, Lcom/startshorts/androidplayer/log/c$a;->onError(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/log/c$b;->a:Lcom/startshorts/androidplayer/log/c$a;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/startshorts/androidplayer/log/c$a;->a()V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method
