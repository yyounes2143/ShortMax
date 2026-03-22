.class public interface abstract Lyb/b;
.super Ljava/lang/Object;
.source "CdnApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyb/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lyb/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lyb/b$a;->a:Lyb/b$a;

    .line 2
    .line 3
    sput-object v0, Lyb/b;->a:Lyb/b$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/jiuzhou/cdn/model/request/LogEventCdnReq;JLjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .param p1    # Lcom/jiuzhou/cdn/model/request/LogEventCdnReq;
        .annotation runtime Lju/a;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lju/i;
            value = "localTime"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lju/i;
            value = "deviceId"
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lju/i;
            value = "checksum"
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiuzhou/cdn/model/request/LogEventCdnReq;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lju/o;
        value = "api/event/send"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract b(Lrs/c;)Ljava/lang/Object;
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lac/a<",
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lju/f;
        value = "api/config/cdn"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
