.class public final Lcom/startshorts/androidplayer/manager/api/base/t$a;
.super Ljava/lang/Object;
.source "ResponseConverter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/api/base/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/api/base/t$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/startshorts/androidplayer/manager/api/base/t$a;)Lcom/google/gson/Gson;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/api/base/t$a;->b()Lcom/google/gson/Gson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/api/base/t;->g()Lms/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/gson/Gson;

    .line 10
    .line 11
    return-object v0
.end method
