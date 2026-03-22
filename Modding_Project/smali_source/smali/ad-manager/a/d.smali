.class public final Lad-manager/a/d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic d:Lcom/hades/aar/admanager/activity/FullScreenAdActivity;


# direct methods
.method public constructor <init>(Lcom/hades/aar/admanager/activity/FullScreenAdActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/a/d;->d:Lcom/hades/aar/admanager/activity/FullScreenAdActivity;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lad-manager/a/d;->d:Lcom/hades/aar/admanager/activity/FullScreenAdActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object v0
.end method
