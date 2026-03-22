.class public final Lcom/startshorts/androidplayer/utils/ext/LifeCycleExtKt$toLifecycleOwner$1;
.super Ljava/lang/Object;
.source "LifeCycleExt.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/utils/ext/LifeCycleExtKt;->a(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/Lifecycle;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/utils/ext/LifeCycleExtKt$toLifecycleOwner$1;->a:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/utils/ext/LifeCycleExtKt$toLifecycleOwner$1;->a:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    return-object v0
.end method
