.class public final synthetic Lcom/startshorts/androidplayer/manager/api/base/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/api/base/d;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/manager/api/base/d;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/api/base/d;->c:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/d;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/manager/api/base/d;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/api/base/d;->c:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->a(Landroid/content/Context;ZLcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)Lhi/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
