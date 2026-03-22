.class public final Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$b;
.super Ljava/lang/Object;
.source "AJConversionDataPullUp.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$b;->a:Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$b;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$b;->a:Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$b;->b:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$b;->c:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, p1, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp;->d(Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
