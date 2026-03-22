.class public final Lcg/a;
.super Ljava/lang/Object;
.source "ActResourceLocalDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lcom/startshorts/androidplayer/bean/act/ActResourceList;
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
    sget-object v0, Lud/b;->a:Lud/b;

    .line 5
    .line 6
    invoke-virtual {v0}, Lud/b;->g()Lcom/startshorts/androidplayer/bean/act/ActResourceList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcg/a;->a:Lcom/startshorts/androidplayer/bean/act/ActResourceList;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lcom/startshorts/androidplayer/bean/act/ActResourceList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcg/a;->a:Lcom/startshorts/androidplayer/bean/act/ActResourceList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Lcom/startshorts/androidplayer/bean/act/ActResourceList;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResourceList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcg/a;->a:Lcom/startshorts/androidplayer/bean/act/ActResourceList;

    .line 2
    .line 3
    sget-object v0, Lud/b;->a:Lud/b;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lud/b;->p2(Lcom/startshorts/androidplayer/bean/act/ActResourceList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
