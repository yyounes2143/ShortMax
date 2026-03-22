.class public Lor/d;
.super Ljava/lang/Object;
.source "HttpClientEngineConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/net/Proxy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lor/d;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()Ljava/net/Proxy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lor/d;->b:Ljava/net/Proxy;

    .line 2
    .line 3
    return-object v0
.end method
